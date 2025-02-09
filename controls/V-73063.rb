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
PG_OWNER = input(
  'pg_owner',
  description: 'The system user of the postgres process'
)

PG_GROUP = input(
  'pg_group',
  description: 'The system group of the postgres process'
)

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

PG_PORT = input(
  'pg_port',
  description: 'The port used to connect to the database'
)

PG_DATA_DIR = input(
  'pg_data_dir',
  description: 'The postgres data directory'
)

PG_CONF_FILE = input(
  'pg_conf_file',
  description: 'The postgres configuration file'
)

PG_USER_DEFINED_CONF = input(
  'pg_user_defined_conf',
  description: 'An additional postgres configuration file used to override default values'
)

PG_SUPERUSERS = input(
  'pg_superusers',
  description: 'Authorized superuser accounts'
)

PG_VERSION = input(
  'pg_version',
  description: 'The version of postgres'
)

PG_SHARED_DIRS = input(
  'pg_shared_dirs',
  description: 'defines the locations of the postgresql shared library directories'
)

control 'V-73063' do
  title "PostgreSQL must use NIST FIPS 140-2 validated cryptographic modules for
        cryptographic operations."
  desc  "Use of weak or not validated cryptographic algorithms undermines the
        purposes of utilizing encryption and digital signatures to protect data.
        Weak algorithms can be easily broken and not validated cryptographic
        modules may not implement algorithms correctly. Unapproved cryptographic
        modules or algorithms should not be relied on for authentication,
        confidentiality or integrity. Weak cryptography could allow an attacker
        to gain access to and modify data stored in the database as well as the
        administration settings of the DBMS.

        Applications, including DBMSs, utilizing cryptography are required to use
        approved NIST FIPS 140-2 validated cryptographic modules that meet the
        requirements of applicable federal laws, Executive Orders, directives,
        policies, regulations, standards, and guidance.

        The security functions validated as part of FIPS 140-2 for cryptographic
        modules are described in FIPS 140-2 Annex A.

        NSA Type-X (where X=1, 2, 3, 4) products are NSA-certified, hardware-based
        encryption modules."
  impact 0.7
  tag "severity": 'high'

  tag "gtitle": 'SRG-APP-000179-DB-000114'
  tag "gid": 'V-73063'
  tag "rid": 'SV-87715r1_rule'
  tag "stig_id": 'PGS9-00-012300'
  tag "cci": ['CCI-000803']
  tag "nist": %w(IA-7 Rev_4)

  tag "check": "As the system administrator, run the following:

      $ openssl version
      If \"fips\" is not included in the openssl version, this is a finding."

  tag "fix": "Configure OpenSSL to meet FIPS Compliance using the following
      documentation in section 9.1:

      http://csrc.nist.gov/groups/STM/cmvp/documents/140-1/140sp/140sp1758.pdf

      For more information on configuring PostgreSQL to use SSL, see supplementary
      content APPENDIX-G."

  only_if do
    command('openssl').exist?
  end

  describe command('openssl version') do
    its('stdout') { should include 'fips' }
  end
end
