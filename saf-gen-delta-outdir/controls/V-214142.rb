control 'V-214142' do
  title 'PostgreSQL must produce audit records containing time stamps to establish
when the events occurred.'
  desc 'Information system auditing capability is critical for accurate forensic
analysis. Without establishing when events occurred, it is impossible to establish,
correlate, and investigate the events relating to an incident.

In order to compile an accurate risk assessment and provide forensic analysis, it is
essential for security personnel to know the date and time when events occurred.

Associating the date and time with detected events in the application and audit logs
provides a means of investigating an attack; recognizing resource utilization or
capacity thresholds; or identifying an improperly configured application.

Database software is capable of a range of actions on data stored within the
database. It is important, for accurate forensic analysis, to know exactly when
specific actions were performed. This requires the date and time an audit record is
referring to. If date and time information is not recorded and stored with the audit
record, the record itself is of very limited use.'
  desc 'check', 'As the database administrator (usually postgres), run the following SQL: 

$ sudo su - postgres 
$ psql -c "SHOW log_line_prefix" 

If the query result does not contain "%m", this is a finding.'
  desc 'fix', %q(Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Logging must be enabled in order to capture timestamps. To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

If logging is enabled the following configurations must be made to log events with timestamps: 

First, as the database administrator (shown here as "postgres"), edit postgresql.conf: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add %m to log_line_prefix to enable timestamps with milliseconds: 

log_line_prefix = '< %m >' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload)
  impact 0.5
  ref 'DPMS Target PostgreSQL 9.x'
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000096-DB-000040'
  tag gid: 'V-214142'
  tag rid: 'SV-214142r508027_rule'
  tag stig_id: 'PGS9-00-011100'
  tag cci: ['CCI-000131']
  tag nist: ['AU-3', 'Rev_4', 'AU-3 b']
  tag 'check'
  tag 'fix'

  sql = postgres_session(PG_DBA, PG_DBA_PASSWORD, PG_HOST)

  log_line_prefix_escapes = ['%m']

  log_line_prefix_escapes.each do |escape|
    describe sql.query('SHOW log_line_prefix;', [PG_DB]) do
      its('output') { should include escape }
    end
  end
end
