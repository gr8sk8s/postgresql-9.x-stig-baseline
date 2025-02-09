control 'V-214069' do
  title 'PostgreSQL must record time stamps, in audit records and application
  data, that can be mapped to Coordinated Universal Time (UTC, formerly GMT).'
  desc 'If time stamps are not consistently applied and there is no common time
  reference, it is difficult to perform forensic analysis.
  Time stamps generated by PostgreSQL must include date and time. Time is
  commonly expressed in Coordinated Universal Time (UTC), a modern continuation
  of Greenwich Mean Time (GMT), or local time with an offset from UTC.'
  desc 'check', 'Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  When a PostgreSQL cluster is initialized using initdb, the PostgreSQL cluster
  will be configured to use the same time zone as the target server.
  As the database administrator (shown here as "postgres"), check the current
  log_timezone setting by running the following SQL:
  $ sudo su - postgres
  $ psql -c "SHOW log_timezone"
  log_timezone
  --------------
  UTC
  (1 row)
  If log_timezone is not set to the desired time zone, this is a finding.'
  desc 'fix', %q(Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To change log_timezone in postgresql.conf to use a different time zone for logs, as the database administrator (shown here as "postgres"), run the following: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 
log_timezone='UTC' 

Next, restart the database: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload)
  impact 0.5
  ref 'DPMS Target PostgreSQL 9.x'
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000374-DB-000322'
  tag gid: 'V-214069'
  tag rid: 'SV-214069r508027_rule'
  tag stig_id: 'PGS9-00-002400'
  tag cci: ['CCI-001890']
  tag nist: ['AU-8 b', 'Rev_4']
  tag 'check'
  tag 'fix'

  sql = postgres_session(PG_DBA, PG_DBA_PASSWORD, PG_HOST)

  describe sql.query('SHOW log_timezone;', [PG_DB]) do
    its('output') { should eq PG_TIMEZONE }
  end
end
