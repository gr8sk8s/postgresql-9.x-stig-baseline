#
# -----------------
# Benchmark: PostgreSQL 9.x Security Technical Implementation Guide
# Status: Accepted
#
# This Security Technical Implementation Guide is published as a tool to improve
# the security of Department of Defense (DoD) information systems. The
# requirements are derived from the National Institute of Standards and
# Technology (NIST) 800-53 and related documents. Comments or proposed revisions
# to this document should be sent via email to the following address:
# disa.stig_spt@mail.mil.
#
# Release Date: 2017-01-20
# Version: 1
# Publisher: DISA
# Source: STIG.DOD.MIL
# uri: http://iase.disa.mil
# -----------------
PG_DBA = input(
  'pg_dba',
  description: 'The postgres DBA user to access the test database'
)

PG_DBA_PASSWORD = input(
  'pg_dba_password',
  description: 'The password for the postgres DBA user'
)

PG_DB = input(
  'pg_db',
  description: 'The database used for tests'
)

PG_HOST = input(
  'pg_host',
  description: 'The hostname or IP address used to connect to the database'
)

control 'V-73015' do
  title "If passwords are used for authentication, PostgreSQL must store only
hashed, salted representations of passwords."
  desc  "The DoD standard for authentication is DoD-approved PKI certificates.

Authentication based on User ID and Password may be used only when it is not
possible to employ a PKI certificate, and requires AO approval.

In such cases, database passwords stored in clear text, using reversible encryption,
or using unsalted hashes would be vulnerable to unauthorized disclosure. Database
passwords must always be in the form of one-way, salted hashes when stored
internally or externally to PostgreSQL."
  impact 0.5
  tag "severity": 'medium'
  tag "gtitle": 'SRG-APP-000171-DB-000074'
  tag "gid": 'V-73015'
  tag "rid": 'SV-87667r1_rule'
  tag "stig_id": 'PGS9-00-009500'
  tag "cci": ['CCI-000196']
  tag "nist": ['IA-5 (1) (c)', 'Rev_4']
  tag "check": "To check if password encryption is enabled, as the database
administrator (shown here as \"postgres\"), run the following SQL:

$ sudo su - postgres
$ psql -c \"SHOW password_encryption\"

If password_encryption is not on, this is a finding.

Next, to identify if any passwords have been stored without being hashed and salted,
as the database administrator (shown here as \"postgres\"), run the following SQL:

$ sudo su - postgres
$ psql -x -c \"SELECT * FROM pg_shadow\"

If any password is in plaintext, this is a finding."
  tag "fix": "Note: The following instructions use the PGDATA environment variable.
See supplementary content APPENDIX-F for instructions on configuring PGDATA.

To enable password_encryption, as the database administrator, edit postgresql.conf:

$ sudo su - postgres
$ vi ${PGDATA?}/postgresql.conf
password_encryption = on

Institute a policy of not using the \"WITH UNENCRYPTED PASSWORD\" option with the
CREATE ROLE/USER and ALTER ROLE/USER commands. (This option overrides the setting of
the password_encryption configuration parameter.)

As the system administrator, restart the server with the new configuration:

# SYSTEMD SERVER ONLY
$ sudo systemctl restart postgresql-9.5

# INITD SERVER ONLY
$ sudo service postgresql-9.5 restart"

  sql = postgres_session(PG_DBA, PG_DBA_PASSWORD, PG_HOST)

  describe sql.query('SHOW password_encryption;', [PG_DB]) do
    its('output') { should match /on|true/i }
  end

  passwords_sql = 'SELECT usename FROM pg_shadow '\
    "WHERE passwd !~ '^md5[0-9a-f]+$';"

  describe sql.query(passwords_sql, [PG_DB]) do
    its('output') { should eq '' }
  end
end
