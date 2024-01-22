control 'V-214068' do
  title 'The audit information produced by PostgreSQL must be protected from unauthorized deletion.'
  desc 'If audit data were to become compromised, then competent forensic analysis and discovery of the true source of potentially malicious system activity is impossible to achieve.

To ensure the veracity of audit data, the information system and/or the application must protect audit information from unauthorized deletion. This requirement can be achieved through multiple methods which will depend upon system architecture and design.

Some commonly employed methods include: ensuring log files enjoy the proper file system permissions utilizing file system protections; restricting access; and backing up log data to ensure log data is retained.

Applications providing a user interface to audit data will leverage user permissions and roles identifying the user accessing the data and the corresponding rights the user enjoys in order make access decisions regarding the deletion of audit data.

Audit information includes all information (e.g., audit records, audit settings, and audit reports) needed to successfully audit information system activity.

Deletion of database audit data could mask the theft of, or the unauthorized modification of, sensitive data stored in the database.'
  desc 'check', 'Note: The following instructions use the PGDATA environment variable. See supplementary content APPENDIX-F for instructions on configuring PGDATA. 

Review locations of audit logs, both internal to the database and database audit logs located at the operating system level. 

Verify there are appropriate controls and permissions to protect the audit information from unauthorized modification. 

#### stderr Logging 

If the PostgreSQL server is configured to use stderr for logging, the logs will be owned by the database administrator (shown here as "postgres") with a default permissions level of 0600. The permissions can be configured in postgresql.conf. 

To check the permissions for log files in postgresql.conf, as the database administrator (shown here as "postgres"), run the following command: 

$ sudo su - postgres 

$ grep "log_file_mode" ${PGDATA?}/postgresql.conf 

If the permissions are not 0600, this is a finding. 

Next, navigate to where the logs are stored. This can be found by running the following command against postgresql.conf as the database administrator (shown here as "postgres"): 

$ sudo su - postgres 

$ grep "log_directory" ${PGDATA?}/postgresql.conf 

With the log directory identified, as the database administrator (shown here as "postgres"), list the permissions of the logs: 

$ sudo su - postgres 

$ ls -la ${PGDATA?}/pg_log 

If logs are not owned by the database administrator (shown here as "postgres") and are not the same permissions as configured in postgresql.conf, this is a finding. 

#### syslog Logging 

If the PostgreSQL server is configured to use syslog for logging, consult organization syslog setting for permissions and ownership of logs'
  desc 'fix', 'To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging.

Note: The following instructions use the PGDATA environment variable. See supplementary content APPENDIX-F for instructions on configuring PGDATA.

#### stderr Logging

With stderr logging enabled, as the database owner (shown here as "postgres"), set the following parameter in postgresql.conf:

$ vi ${PGDATA?}/postgresql.conf
log_file_mode = 0600

To change the owner and permissions of the log files, run the following:

$ chown postgres:postgres ${PGDATA?}/<log directory name>
$ chmod 0700 ${PGDATA?}/<log directory name>
$ chmod 600 ${PGDATA?}/<log directory name>/*.log

#### syslog Logging

If PostgreSQL is configured to use syslog for logging, the log files must be configured to be owned by root with 0600 permissions.

$ chown root:root <log directory name>/<log_filename>
$ chmod 0700 <log directory name>
$ chmod 0600 <log directory name>/*.log'
  impact 0.5
  ref 'DPMS Target PostgreSQL 9.x'
  tag check_id: 'C-15284r360835_chk'
  tag severity: 'medium'
  tag gid: 'V-214068'
  tag rid: 'SV-214068r508027_rule'
  tag stig_id: 'PGS9-00-002300'
  tag gtitle: 'SRG-APP-000120-DB-000061'
  tag fix_id: 'F-15282r360836_fix'
  tag 'documentable'
  tag legacy: ['SV-87537', 'V-72885']
  tag cci: ['CCI-000164']
  tag nist: ['AU-9 a']
end
