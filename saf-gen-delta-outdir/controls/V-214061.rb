control 'V-214061' do
  title 'PostgreSQL must uniquely identify and authenticate non-organizational
  users (or processes acting on behalf of non-organizational users).'
  desc 'Non-organizational users include all information system users other
  than organizational users, which includes organizational employees or
  individuals the organization deems to have equivalent status of employees
  (e.g., contractors, guest researchers, individuals from allied nations).
  Non-organizational users must be uniquely identified and authenticated for all
  accesses other than those accesses explicitly identified and documented by the
  organization when related to the use of anonymous access, such as accessing a
  web server.
  Accordingly, a risk assessment is used in determining the authentication needs
  of the organization.
  Scalability, practicality, and security are simultaneously considered in
  balancing the need to ensure ease of use for access to federal information and
  information systems with the need to protect and adequately mitigate risk to
  organizational operations, organizational assets, individuals, other
  organizations, and the Nation.'
  desc 'check', 'PostgreSQL uniquely identifies and authenticates PostgreSQL
  users through the use of DBMS roles.
  To list all roles in the database, as the database administrator (shown here
  as "postgres"), run the following SQL:
  $ sudo su - postgres
  $ psql -c "\\du"
  If users are not uniquely identified as per organizational documentation, this
  is a finding.'
  desc 'fix', 'To drop a role, as the database administrator (shown here as
  "postgres"), run the following SQL:
  $ sudo su - postgres
  $ psql -c "DROP ROLE <role_to_drop>"
  To create a role, as the database administrator, run the following SQL:
  $ sudo su - postgres
  $ psql -c "CREATE ROLE <role name> LOGIN"
  For the complete list of permissions allowed by roles, see the official
  documentation: https://www.postgresql.org/docs/current/static/sql-createrole.html'
  impact 0.5
  ref 'DPMS Target PostgreSQL 9.x'
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000180-DB-000115'
  tag gid: 'V-214061'
  tag rid: 'SV-214061r508027_rule'
  tag stig_id: 'PGS9-00-001400'
  tag cci: ['CCI-000804']
  tag nist: ['IA-8', 'Rev_4']
  tag 'check'
  tag 'fix'

  sql = postgres_session(PG_DBA, PG_DBA_PASSWORD, PG_HOST)

  authorized_roles = PG_SUPERUSERS

  roles_sql = 'SELECT r.rolname FROM pg_catalog.pg_roles r where r.rolsuper;'
  describe sql.query(roles_sql, [PG_DB]) do
    its('lines.sort') { should cmp authorized_roles.sort }
  end
end
