control 'V-214131' do
  title 'PostgreSQL must enforce access restrictions associated with changes to the
configuration of PostgreSQL or database(s).'
  desc 'Failure to provide logical access restrictions associated with changes to
configuration may have significant effects on the overall security of the system.

When dealing with access restrictions pertaining to change control, it should be
noted that any changes to the hardware, software, and/or firmware components of the
information system can potentially have significant effects on the overall security
of the system.

Accordingly, only qualified and authorized individuals should be allowed to obtain
access to system components for the purposes of initiating changes, including
upgrades and modifications.'
  desc 'check', 'To list all the permissions of individual roles, as the database
administrator (shown here as "postgres"), run the following SQL:

$ sudo su - postgres
$ psql -c "\\du

If any role has SUPERUSER that should not, this is a finding.

Next, list all the permissions of databases and schemas by running the following SQL:

$ sudo su - postgres
$ psql -c "\\l"
$ psql -c "\\dn+"

If any database or schema has update ("W") or create ("C") privileges and should
not, this is a finding.'
  desc 'fix', 'Configure PostgreSQL to enforce access restrictions associated with changes to the configuration of PostgreSQL or database(s). 

Use ALTER ROLE to remove accesses from roles: 

$ psql -c "ALTER ROLE <role_name> NOSUPERUSER" 

Use REVOKE to remove privileges from databases and schemas: 

$ psql -c "REVOKE ALL PRIVILEGES ON <table> FROM <role_name>"'
  impact 0.5
  ref 'DPMS Target PostgreSQL 9.x'
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000380-DB-000360'
  tag gid: 'V-214131'
  tag rid: 'SV-214131r508027_rule'
  tag stig_id: 'PGS9-00-009600'
  tag cci: ['CCI-001813']
  tag nist: ['CM-5 (1)', 'Rev_4', 'CM-5 (1) (a)']
  tag 'check'
  tag 'fix'

  sql = postgres_session(PG_DBA, PG_DBA_PASSWORD, PG_HOST)

  roles_sql = 'SELECT r.rolname FROM pg_catalog.pg_roles r;'
  roles_query = sql.query(roles_sql, [PG_DB])
  roles = roles_query.lines

  roles.each do |role|
    next if PG_SUPERUSERS.include?(role)
    superuser_sql = 'SELECT r.rolsuper FROM pg_catalog.pg_roles r '\
      "WHERE r.rolname = '#{role}';"

    describe sql.query(superuser_sql, [PG_DB]) do
      its('output') { should_not eq 't' }
    end
  end

  authorized_owners = PG_SUPERUSERS
  owners = authorized_owners.join('|')

  database_granted_privileges = 'CTc'
  database_public_privileges = 'c'
  database_acl = "^((((#{owners})=[#{database_granted_privileges}]+|"\
    "=[#{database_public_privileges}]+)\/\\w+,?)+|)\\|"
  database_acl_regex = Regexp.new(database_acl)

  schema_granted_privileges = 'UC'
  schema_public_privileges = 'U'
  schema_acl = "^((((#{owners})=[#{schema_granted_privileges}]+|"\
    "=[#{schema_public_privileges}]+)\/\\w+,?)+|)\\|"
  schema_acl_regex = Regexp.new(schema_acl)

  databases_sql = 'SELECT datname FROM pg_catalog.pg_database where not datistemplate;'
  databases_query = sql.query(databases_sql, [PG_DB])
  databases = databases_query.lines

  databases.each do |database|
    datacl_sql = "SELECT pg_catalog.array_to_string(datacl, E','), datname "\
      "FROM pg_catalog.pg_database WHERE datname = '#{database}';"

    describe sql.query(datacl_sql, [PG_DB]) do
      its('output') { should match database_acl_regex }
    end

    schemas_sql = 'SELECT n.nspname, FROM pg_catalog.pg_namespace n '\
      "WHERE n.nspname !~ '^pg_' AND n.nspname <> 'information_schema';"
    schemas_query = sql.query(schemas_sql, [database])
    # Handle connection disabled on database
    next unless schemas_query.methods.include?(:output)
    schemas = schemas_query.lines

    schemas.each do |schema|
      nspacl_sql = "SELECT pg_catalog.array_to_string(n.nspacl, E','), "\
        'n.nspname FROM pg_catalog.pg_namespace n '\
        "WHERE n.nspname = '#{schema}';"

      describe sql.query(nspacl_sql) do
        its('output') { should match schema_acl_regex }
      end
    end
  end
end
