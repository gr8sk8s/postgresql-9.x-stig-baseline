## Automatic Update:  -> 

### New Controls:
+   V-214049 - PostgreSQL must produce audit records containing sufficient information to establish the outcome (success or failure) of the events.
+   V-214051 - The audit information produced by PostgreSQL must be protected from unauthorized modification.
+   V-214054 - Privileges to change PostgreSQL software modules must be limited.
+   V-214055 - PostgreSQL must limit privileges to change functions and triggers, and links to software external to PostgreSQL.
+   V-214068 - The audit information produced by PostgreSQL must be protected from unauthorized deletion.
+   V-214070 - PostgreSQL must reveal detailed error messages only to the ISSO, ISSM, SA and DBA.
+   V-214079 - When invalid inputs are received, PostgreSQL must behave in a predictable and documented manner that reflects organizational and system objectives.
+   V-214082 - PostgreSQL must produce audit records of its enforcement of access restrictions associated with changes to the configuration of PostgreSQL or database(s).
+   V-214083 - The audit information produced by PostgreSQL must be protected from unauthorized read access.
+   V-214086 - PostgreSQL must generate audit records when unsuccessful attempts to access security objects occur.
+   V-214087 - PostgreSQL must generate audit records when unsuccessful logons or connection attempts occur.
+   V-214088 - PostgreSQL must generate audit records showing starting and ending time for user access to the database(s).
+   V-214089 - PostgreSQL must generate audit records when unsuccessful attempts to modify security objects occur.
+   V-214090 - PostgreSQL must generate audit records when privileges&#x2F;permissions are added.
+   V-214092 - PostgreSQL must generate audit records when successful logons or connections occur.
+   V-214093 - PostgreSQL must generate audit records when security objects are deleted.
+   V-214094 - PostgreSQL must generate audit records when unsuccessful attempts to retrieve privileges&#x2F;permissions occur.
+   V-214095 - PostgreSQL must generate audit records when unsuccessful attempts to delete privileges&#x2F;permissions occur.
+   V-214096 - PostgreSQL must be able to generate audit records when privileges&#x2F;permissions are retrieved.
+   V-214098 - PostgreSQL must generate audit records when unsuccessful accesses to objects occur.
+   V-214106 - PostgreSQL must generate audit records when unsuccessful attempts to execute privileged activities or other system-level access occur.
+   V-214109 - PostgreSQL must generate audit records when unsuccessful attempts to modify privileges&#x2F;permissions occur.
+   V-214110 - PostgreSQL must generate audit records when unsuccessful attempts to add privileges&#x2F;permissions occur.
+   V-214115 - PostgreSQL must generate time stamps, for audit records and application data, with a minimum granularity of one second.
+   V-214121 - PostgreSQL must prohibit user installation of logic modules (functions, trigger procedures, views, etc.) without explicit privileged status.
+   V-214126 - Unused database components, PostgreSQL software, and database objects must be removed.
+   V-214127 - Access to external executables must be disabled or restricted.
+   V-214141 - PostgreSQL must protect its audit features from unauthorized access.
+   V-214143 - PostgreSQL must protect its audit features from unauthorized removal.
+   V-214148 - PostgreSQL must prevent non-privileged users from executing privileged functions, to include disabling, circumventing, or altering implemented security safeguards&#x2F;countermeasures.
+   V-214151 - Access to database files must be limited to relevant processes and to authorized, administrative users.

### Updated Control IDs:
<details>
  <summary>Click to expand.</summary>
  
 -  V-72841 -> V-214048
 -  V-72845 -> V-214050
 -  V-72849 -> V-214052
 -  V-72851 -> V-214053
 -  V-72857 -> V-214056
 -  V-72859 -> V-214057
 -  V-72861 -> V-214058
 -  V-72863 -> V-214059
 -  V-72865 -> V-214060
 -  V-72867 -> V-214061
 -  V-72869 -> V-214062
 -  V-72871 -> V-214063
 -  V-72873 -> V-214064
 -  V-72875 -> V-214065
 -  V-72877 -> V-214066
 -  V-72883 -> V-214067
 -  V-72887 -> V-214069
 -  V-72891 -> V-214071
 -  V-72893 -> V-214072
 -  V-72895 -> V-214073
 -  V-72897 -> V-214074
 -  V-72899 -> V-214075
 -  V-72901 -> V-214076
 -  V-72903 -> V-214077
 -  V-72905 -> V-214078
 -  V-72909 -> V-214080
 -  V-72911 -> V-214081
 -  V-72917 -> V-214084
 -  V-72919 -> V-214085
 -  V-72931 -> V-214091
 -  V-72949 -> V-214097
 -  V-72953 -> V-214099
 -  V-72955 -> V-214100
 -  V-72957 -> V-214101
 -  V-72959 -> V-214102
 -  V-72961 -> V-214103
 -  V-72963 -> V-214104
 -  V-72965 -> V-214105
 -  V-72971 -> V-214107
 -  V-72973 -> V-214108
 -  V-72979 -> V-214111
 -  V-72981 -> V-214113
 -  V-72983 -> V-214114
 -  V-72987 -> V-214116
 -  V-72989 -> V-214117
 -  V-72991 -> V-220321
 -  V-72993 -> V-214119
 -  V-72995 -> V-214120
 -  V-72999 -> V-214122
 -  V-73001 -> V-214123
 -  V-73003 -> V-214124
 -  V-73005 -> V-214125
 -  V-73011 -> V-214128
 -  V-73013 -> V-214129
 -  V-73015 -> V-214130
 -  V-73017 -> V-214131
 -  V-73019 -> V-214132
 -  V-73023 -> V-214133
 -  V-73027 -> V-214135
 -  V-73029 -> V-214136
 -  V-73031 -> V-214137
 -  V-73033 -> V-214138
 -  V-73035 -> V-214139
 -  V-73037 -> V-214140
 -  V-73041 -> V-214142
 -  V-73045 -> V-214144
 -  V-73047 -> V-214145
 -  V-73049 -> V-214146
 -  V-73051 -> V-214147
 -  V-73055 -> V-214149
 -  V-73057 -> V-214150
 -  V-73061 -> V-214152
 -  V-73063 -> V-214153
 -  V-73065 -> V-214154
 -  V-73067 -> V-214155
 -  V-73069 -> V-214156
 -  V-73071 -> V-214157
 -  V-73123 -> V-214112
</details>

### Updated Check/Fixes:
#### Checks:
<details open>
  <summary>Click to expand.</summary>
V-214059:
Old: 
```
To check the total amount of connections allowed by the database,
                as the database administrator, run the following SQL:
                $ sudo su - postgres
                $ psql -c "SHOW max_connections"
                If the total amount of connections is greater than documented by
                an organization, this is a finding.
                To check the amount of connections allowed for each role, as the
                database administrator, run the following SQL:
                $ sudo su - postgres
                $ psql -c "SELECT rolname, rolconnlimit from pg_authid"
                If any roles have more connections configured than documented,
                this is a finding. A value of -1 indicates Unlimited, this is a
                finding.

```

Updated:
```
To check the total amount of connections allowed by the database, as the database administrator, run the following SQL:

$ sudo su - postgres
$ psql -c "SHOW max_connections"

If the total amount of connections is greater than documented by an organization, this is a finding.

To check the amount of connections allowed for each role, as the database administrator, run the following SQL:

$ sudo su - postgres
$ psql -c "SELECT rolname, rolconnlimit from pg_authid"

If any roles have more connections configured than documented, this is a finding. A value of -1 indicates Unlimited, and is a finding.

```
---
V-214072:
Old: 
```
Review the system documentation to determine which audit failure
  events require real-time alerts.
  Review the system settings and code. If the real-time alerting that is
  specified in the documentation is not enabled, this is a finding.

```

Updated:
```
Review DBMS, OS, or third-party logging software settings to determine whether a real-time alert will be sent to the appropriate personnel when auditing fails for any reason.

If real-time alerts are not sent upon auditing failure, this is a finding

```
---
V-214073:
Old: 
```
If the data owner does not have a strict requirement for
  ensuring data integrity and confidentiality is maintained at every step of the
  data transfer and handling process, this is not a finding.

  As the database administrator (shown here as "postgres"), verify SSL is
  enabled in postgresql.conf by:

  First, open the postgresql.conf file and ensure the ssl paramater is set to on:

  $ vi <pg_conf_dir>/postgresql.conf
  $ ssl = 'on'

  is set and not commented out with a '#'.

  Second, run the following SQL:

  $ sudo su - postgres
  $ psql -c "SHOW ssl"

  If SSL is off, this is a finding.

  If PostgreSQL, associated applications, and infrastructure do not employ
  protective measures against unauthorized disclosure and modification during
  reception, this is a finding.

```

Updated:
```
If the data owner does not have a strict requirement for ensuring data integrity and confidentiality is maintained at every step of the data transfer and handling process, this is not a finding.
First, check if ssl is enabled for the database instance. As the database administrator (shown here as "postgres"), verify SSL is enabled by running the following from a command prompt:

$ sudo su - postgres
$ psql -c "SHOW ssl"

If SSL is not enabled, this is a finding.
Next, open the pg_hba.conf file in a viewer or editor and review the authentication settings that are configured in that file. 

Next, verify hostssl entries in pg_hba.conf: 

$ sudo su - postgres 
$ grep hostssl ${PGDATA?}/pg_hba.conf 

If hostssl entries do not contain clientcert=1, this is a finding. 
If any uncommented lines are not of TYPE "hostssl" and do not include the "clientcert=1" authentication option and are not documented in the system security plan or equivalent document as being approved, this is a finding.
If PostgreSQL, associated applications, and infrastructure do not employ protective measures against unauthorized disclosure and modification during reception, this is a finding.

```
---
V-214076:
Old: 
```
Review the PostgreSQL software library directory and any
  subdirectories.
  If any non-PostgreSQL software directories exist on the disk directory,
  examine or investigate their use. If any of the directories are used by other
  applications, including third-party applications that use the PostgreSQL, this
  is a finding.
  Only applications that are required for the functioning and administration,
  not use, of the PostgreSQL should be located in the same disk directory as
  the PostgreSQL software libraries.
  If other applications are located in the same directory as PostgreSQL, this
  is a finding.

```

Updated:
```
Review the PostgreSQL software library directory and any subdirectories. 

If any non-PostgreSQL software directories exist on the disk directory, examine or investigate their use. If any of the directories are used by other applications, including third-party applications that use the PostgreSQL, this is a finding. 

Only applications that are required for the functioning and administration, not use, of the PostgreSQL software library should be located in the same disk directory as the PostgreSQL software libraries. 

If other applications are located in the same directory as PostgreSQL, this is a finding.

```
---
V-214104:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  First, as the database administrator, verify pgaudit is enabled by running the
  following SQL:
  $ sudo su - postgres
  $ psql -c "SHOW shared_preload_libraries"
  If the output does not contain pgaudit, this is a finding.
  Next, verify that role, read, write, and ddl auditing are enabled:
  $ psql -c "SHOW pgaudit.log"
  If the output does not contain role, read, write, and ddl, this is a finding.

```

Updated:
```
First, as the database administrator, verify pgaudit is enabled by running the following SQL: 

$ sudo su - postgres 
$ psql -c "SHOW shared_preload_libraries" 

If the output does not contain pgaudit, this is a finding. 

Next, verify that role, read, write, and ddl auditing are enabled: 

$ psql -c "SHOW pgaudit.log" 

If the output does not contain role, read, write, and ddl, this is a finding.

```
---
V-214111:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  To verify that a CRL file exists, as the database administrator (shown here as
  "postgres"), run the following:
  $ sudo su - postgres
  $ psql -c "SHOW ssl_crl_file" If this is not set to a CRL file, this is a finding.
  Next verify the existence of the CRL file by checking the directory set in
  postgresql.conf in the ssl_crl_file parameter from above:
  Note: If no directory is specified, then the CRL file should be located in the
  same directory as postgresql.conf (PGDATA).
  If the CRL file does not exist, this is a finding.
  Next, verify that hostssl entries in pg_hba.conf have "cert" and
  "clientcert=1" enabled:
  $ sudo su - postgres
  $ grep hostssl ${PGDATA?}/postgresql.conf
  If hostssl entries does not contain cert or clientcert=1, this is a finding.
  If certificates are not being validated by performing RFC 5280-compliant
  certification path validation, this is a finding.

```

Updated:
```
Note: The following instructions use the PGDATA environment variable. See supplementary content APPENDIX-F for instructions on configuring PGDATA. 

To verify that a CRL file exists, as the database administrator (shown here as "postgres"), run the following: 

$ sudo su - postgres 
$ psql -c "SHOW ssl_crl_file" 

If this is not set to a CRL file, this is a finding. 

Next verify the existence of the CRL file by checking the directory set in postgresql.conf in the ssl_crl_file parameter from above: 

Note: If no directory is specified, then the CRL file should be located in the same directory as postgresql.conf (PGDATA). 

If the CRL file does not exist, this is a finding. 

Next, verify that hostssl entries in pg_hba.conf have "cert" and "clientcert=1" enabled: 

$ sudo su - postgres 
$ grep hostssl ${PGDATA?}/pg_hba.conf 

If hostssl entries do not contain cert or clientcert=1, this is a finding. 

If certificates are not being validated by performing RFC 5280-compliant certification path validation, this is a finding.

```
---
V-214113:
Old: 
```
If the data owner does not have a strict requirement for ensuring
  data integrity and confidentiality is maintained at every step of the data
  transfer and handling process, this is not a finding.
  As the database administrator (shown here as "postgres"), verify SSL is
  enabled by running the following SQL:
  $ sudo su - postgres
  $ psql -c "SHOW ssl"
  If SSL is not enabled, this is a finding.
  If PostgreSQL does not employ protective measures against unauthorized
  disclosure and modification during preparation for transmission, this is a
  finding.

```

Updated:
```
: If the data owner does not have a strict requirement for ensuring data integrity and confidentiality is maintained at every step of the data transfer and handling process, this is not a finding.
First, check if ssl is enabled for the database instance. As the database administrator (shown here as "postgres"), verify SSL is enabled by running the following from a command prompt:

$ sudo su - postgres
$ psql -c "SHOW ssl"

If SSL is not enabled, this is a finding.
Next, open the pg_hba.conf file in a viewer or editor and review the authentication settings that are configured in that file. 

Next, verify hostssl entries in pg_hba.conf: 

$ sudo su - postgres 
$ grep hostssl ${PGDATA?}/pg_hba.conf 

If hostssl entries do not contain clientcert=1, this is a finding. 
If any uncommented lines are not of TYPE "hostssl" and do not include the "clientcert=1" authentication option and are not documented in the system security plan or equivalent document as being approved, this is a finding.
If PostgreSQL does not employ protective measures against unauthorized disclosure and modification during preparation for transmission, this is a finding.

```
---
V-214120:
Old: 
```
One possible way to encrypt data within PostgreSQL is to use the
pgcrypto extension.

To check if pgcrypto is installed on PostgreSQL, as a database administrator (shown
here as "postgres"), run the following command:

$ sudo su - postgres
$ psql -c "SELECT * FROM pg_available_extensions where name='pgcrypto'"

If data in the database requires encryption and pgcrypto is not available, this is a
finding.

If disk or filesystem requires encryption, ask the system owner, DBA, and SA to
demonstrate the use of disk-level encryption. If this is required and is not found,
this is a finding.

If controls do not exist or are not enabled, this is a finding.

```

Updated:
```
If the application owner and Authorizing Official have determined that encryption of data at rest is NOT required, this is not a finding.

One possible way to encrypt data within PostgreSQL is to use the pgcrypto extension.

To check if pgcrypto is installed on PostgreSQL, as a database administrator (shown here as "postgres"), run the following command:

$ sudo su - postgres
$ psql -c "SELECT * FROM pg_available_extensions where name='pgcrypto'"

If data in the database requires encryption and pgcrypto is not available, this is a finding.

If disk or filesystem requires encryption, ask the system owner, DBA, and SA to demonstrate the use of disk-level encryption. If this is required and is not found, this is a finding.

If controls do not exist or are not enabled, this is a finding.

```
---
V-214123:
Old: 
```
As the database administrator (shown here as "postgres"), check
the current settings by running the following SQL:

$ sudo su - postgres
$ psql -c "SHOW shared_preload_libraries"

If pgaudit is not in the current setting, this is a finding.

As the database administrator (shown here as "postgres"), check the current
settings by running the following SQL:

$ psql -c "SHOW logging_destination"

If stderr or syslog are not in the current setting, this is a finding.

```

Updated:
```
As the database administrator (shown here as "postgres"), check the current settings by running the following SQL: 

$ sudo su - postgres 
$ psql -c "SHOW shared_preload_libraries" 

If pgaudit is not in the current setting, this is a finding. 

As the database administrator (shown here as "postgres"), check the current settings by running the following SQL: 

$ psql -c "SHOW log_destination" 

If stderr or syslog are not in the current setting, this is a finding.

```
---
V-214132:
Old: 
```
First, as the database administrator, review the current
log_line_prefix settings by running the following SQL:

$ sudo su - postgres
$ psql -c "SHOW log_line_prefix"

If log_line_prefix does not contain at least '< %m %a %u %d %r %p %m >', this is a
finding.

Next, review the current shared_preload_libraries' settings by running the following
SQL:

$ psql -c "SHOW shared_preload_libraries"

If shared_preload_libraries does not contain "pgaudit", this is a finding.

```

Updated:
```
First, as the database administrator, review the current log_line_prefix settings by running the following SQL: 

$ sudo su - postgres 
$ psql -c "SHOW log_line_prefix" 

If log_line_prefix does not contain at least '< %m %a %u %d %r %p >', this is a finding. 

Next, review the current shared_preload_libraries settings by running the following SQL: 

$ psql -c "SHOW shared_preload_libraries" 

If shared_preload_libraries does not contain "pgaudit", this is a finding.

```
---
V-214136:
Old: 
```
First, as the database administrator (shown here as "postgres"),
verify the following settings:

Note: If no specific directory given before the name, the files are stored in
PGDATA.

$ sudo su - postgres
$ psql -c "SHOW ssl_ca_file"
$ psql -c "SHOW ssl_cert_file"
$ psql -c "SHOW ssl_crl_file"
$ psql -c "SHOW ssl_key_file"

If the directory these files are stored in is not protected, this is a finding.

```

Updated:
```
First, as the database administrator (shown here as "postgres"), verify the following settings:

Note: If no specific directory given before the filename, the files are stored in PGDATA.

$ sudo su - postgres
$ psql -c "SHOW ssl_ca_file"
$ psql -c "SHOW ssl_cert_file"
$ psql -c "SHOW ssl_crl_file"
$ psql -c "SHOW ssl_key_file"

If the directory these files are stored in is not protected, this is a finding.

```
---
V-214146:
Old: 
```
Review PostgreSQL settings to determine whether organizational users
are uniquely identified and authenticated when logging on/connecting to the system.

To list all roles in the database, as the database administrator (shown here as
"postgres"), run the following SQL:

$ sudo su - postgres
$ psql -c "\du"

If organizational users are not uniquely identified and authenticated, this is a
finding.

Next, as the database administrator (shown here as "postgres"), verify the current
pg_hba.conf authentication settings:

$ sudo su - postgres
$ cat ${PGDATA?}/pg_hba.conf

If every role does not have unique authentication rcmpuirements, this is a finding.

If accounts are determined to be shared, determine if individuals are first
individually authenticated. If individuals are not individually authenticated before
using the shared account, this is a finding.

```

Updated:
```
Review PostgreSQL settings to determine whether organizational users are uniquely identified and authenticated when logging on/connecting to the system.

To list all roles in the database, as the database administrator (shown here as "postgres"), run the following SQL:

$ sudo su - postgres
$ psql -c "\du"

If organizational users are not uniquely identified and authenticated, this is a finding.

Next, as the database administrator (shown here as "postgres"), verify the current pg_hba.conf authentication settings:

$ sudo su - postgres
$ cat ${PGDATA?}/pg_hba.conf

If every role does not have unique authentication requirements, this is a finding.

If accounts are determined to be shared, determine if individuals are first individually authenticated. If individuals are not individually authenticated before using the shared account, this is a finding.

```
---
V-214155:
Old: 
```
As the database administrator, verify pgaudit is enabled by
      running the following SQL:

      $ sudo su - postgres
      $ psql -c "SHOW shared_preload_libraries"

      If the output does not contain "pgaudit", this is a finding.

      Verify that role, read, write, and ddl auditing are enabled:

      $ psql -c "SHOW pgaudit.log"

      If the output does not contain read and write, this is a finding.

```

Updated:
```
As the database administrator, verify pgaudit is enabled by running the following SQL: 

$ sudo su - postgres 
$ psql -c "SHOW shared_preload_libraries" 

If the output does not contain "pgaudit", this is a finding. 

Verify that role, read, write, and ddl auditing are enabled: 

$ psql -c "SHOW pgaudit.log" 

If the output does not contain role, read, write, and ddl, this is a finding.

```
---
V-214156:
Old: 
```
As the database administrator, verify pgaudit is enabled by running
      the following SQL:

      $ sudo su - postgres
      $ psql -c "SHOW shared_preload_libraries"

      If the output does not contain "pgaudit", this is a finding.

      Verify that connections and disconnections are being logged by
      running the following SQL:

      $ sudo su - postgres
      $ psql -c "SHOW log_connections"
      $ psql -c "SHOW log_disconnections"

      If the output does not contain "on",

      pgaudit.log='ddl, role, read, write'
      log_connections='on'
      log_disconnections='on'

      this is a finding.

```

Updated:
```
As the database administrator, verify pgaudit is enabled by running the following SQL:

$ sudo su - postgres
$ psql -c "SHOW shared_preload_libraries"

If the output does not contain "pgaudit", this is a finding.

Verify that connections and disconnections are being logged by running the following SQL:

$ sudo su - postgres
$ psql -c "SHOW log_connections"
$ psql -c "SHOW log_disconnections"

If the output does not contain "on", this is a finding.

```
---
V-214157:
Old: 
```
If the deployment incorporates a custom build of the operating
      system and Postgres guaranteeing the use of FIPS 140-2 compliant OpenSSL,
      this is not a finding.

      If PostgreSQL is not installed on Red Hat Enterprise Linux (RHEL),
      this is a finding.

      If FIPS encryption is not enabled, this is a finding.

```

Updated:
```
If the deployment incorporates a custom build of the operating system and PostgreSQL guaranteeing the use of FIPS 140-2 or 140-3 compliant OpenSSL, this is not a finding. 

If PostgreSQL is not installed on an OS found in the CMVP (https://csrc.nist.gov/projects/cryptographic-module-validation-program/validated-modules), this is a finding. 

If FIPS encryption is not enabled, this is a finding.

```
---
</details>

#### Fixes:
<details open>
  <summary>Click to expand.</summary>
V-214048:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.

  To change the listening port of the database, as the database administrator,
  change the following setting in postgresql.conf:

  $ sudo su - postgres
  $ vi $PGDATA/postgresql.conf

  Change the port parameter to the desired port.

  Next, restart the database:

  $ sudo su - postgres
  # SYSTEMD SERVER ONLY
  $ systemctl restart postgresql-9.5
  # INITD SERVER ONLY
  $ service postgresql-9.5 restart

  Note: psql uses the default port 5432 by default. This can be changed by
  specifying the port with psql or by setting the PGPORT environment variable:

  $ psql -p 5432 -c "SHOW port"
  $ export PGPORT=5432

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To change the listening port of the database, as the database administrator, change the following setting in postgresql.conf: 

$ sudo su - postgres 
$ vi $PGDATA/postgresql.conf 

Change the port parameter to the desired port. 

Next, restart the database: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl restart postgresql-${PGVER?} 

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} restart 

Note: psql uses the default port 5432 by default. This can be changed by specifying the port with psql or by setting the PGPORT environment variable: 

$ psql -p 5432 -c "SHOW port" 
$ export PGPORT=5432

```
---
V-214053:
Old: 
```
As the database administrator, edit postgresql.conf:

  $ sudo su - postgres
  $ vi $PGDATA/postgresql.conf
  Change the client_min_messages parameter to be error:
  client_min_messages = 'error'

  Now reload the server with the new configuration (this just reloads settings
  currently in memory, will not cause an interruption):

  $ sudo su - postgres
  # SYSTEMD SERVER ONLY
  $ systemctl reload postgresql-9.5

  # INITD SERVER ONLY
  $ service postgresql-9.5 reload 

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

As the database administrator, edit "postgresql.conf": 

$ sudo su - postgres 
$ vi $PGDATA/postgresql.conf 

Change the client_min_messages parameter to be "error": 

client_min_messages = error 

Reload the server with the new configuration (this just reloads settings currently in memory; it will not cause an interruption): 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214057:
Old: 
```
Create and/or maintain documentation of each group role's
  appropriate permissions on database objects.

  Implement these permissions in the database, and remove any permissions that
  exceed those documented.

  The following are examples of how to use role privileges in PostgreSQL to
  enforce access controls. For a complete list of privileges, see the official
  documentation: https://www.postgresql.org/docs/current/static/sql-createrole.html

  #### Roles Example 1
  The following example demonstrates how to create an admin role with CREATEDB
  and CREATEROLE privileges.

  As the database administrator (shown here as "postgres"), run the following
  SQL:

  $ sudo su - postgres
  $ psql -c "CREATE ROLE admin WITH CREATEDB CREATEROLE"

  #### Roles Example 2
  The following example demonstrates how to create a role with a password that
  expires and makes the role a member of the "admin" group.

  As the database administrator (shown here as "postgres"), run the following SQL:

  $ sudo su - postgres
  $ psql -c "CREATE ROLE joe LOGIN ENCRYPTED PASSWORD 'stig2016!' VALID UNTIL
'2016-09-20' IN ROLE admin"

  #### Roles Example 3
  The following demonstrates how to revoke privileges from a role using REVOKE.

  As the database administrator (shown here as "postgres"), run the following SQL:

  $ sudo su - postgres
$ psql -c "REVOKE admin FROM joe"

  #### Roles Example 4
  The following demonstrates how to alter privileges in a role using ALTER.

  As the database administrator (shown here as "postgres"), run the following SQL:

  $ sudo su - postgres
$ psql -c "ALTER ROLE joe NOLOGIN"

  The following are examples of how to use grant privileges in PostgreSQL to
  enforce access controls on objects. For a complete list of privileges, see the
  official documentation:
https://www.postgresql.org/docs/current/static/sql-grant.html

  #### Grant Example 1
  The following example demonstrates how to grant INSERT on a table to a role.

  As the database administrator (shown here as "postgres"), run the following SQL:

  $ sudo su - postgres
  $ psql -c "GRANT SELECT ON stig_test TO joe"

  #### Grant Example 2
  The following example demonstrates how to grant ALL PRIVILEGES on a table to a
  role.

  As the database administrator (shown here as "postgres"), run the following SQL:

  $ sudo su - postgres
  $ psql -c "GRANT ALL PRIVILEGES ON stig_test TO joe"

  #### Grant Example 3
  The following example demonstrates how to grant a role to a role.

  As the database administrator (shown here as "postgres"), run the following SQL:

  $ sudo su - postgres
  $ psql -c "GRANT admin TO joe"

  #### Revoke Example 1
  The following example demonstrates how to revoke access from a role.

  As the database administrator (shown here as "postgres"), run the following SQL:

  $ sudo su - postgres
  $ psql -c "REVOKE admin FROM joe"

  To change authentication requirements for the database, as the database
  administrator (shown here as "postgres"), edit pg_hba.conf:

  $ sudo su - postgres
  $ vi ${PGDATA?}/pg_hba.conf

  Edit authentication requirements to the organizational requirements. See the
  official documentation for the complete list of options for authentication:
  http://www.postgresql.org/docs/current/static/auth-pg-hba-conf.html

  After changes to pg_hba.conf, reload the server:

  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5

  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Create and/or maintain documentation of each group role's appropriate permissions on database objects. 

Implement these permissions in the database, and remove any permissions that exceed those documented. 

- - - - - 

The following are examples of how to use role privileges in PostgreSQL to enforce access controls. For a complete list of privileges, see the official documentation: https://www.postgresql.org/docs/current/static/sql-createrole.html 

#### Roles Example 1 

The following example demonstrates how to create an admin role with CREATEDB and CREATEROLE privileges. 

As the database administrator (shown here as "postgres"), run the following SQL: 

$ sudo su - postgres 

$ psql -c "CREATE ROLE admin WITH CREATEDB CREATEROLE" 

#### Roles Example 2 

The following example demonstrates how to create a role with a password that expires and makes the role a member of the "admin" group. 

As the database administrator (shown here as "postgres"), run the following SQL: 

$ sudo su - postgres 

$ psql -c "CREATE ROLE joe LOGIN ENCRYPTED PASSWORD 'stig2016!' VALID UNTIL '2016-09-20' IN ROLE admin" 

#### Roles Example 3 

The following demonstrates how to revoke privileges from a role using REVOKE. 

As the database administrator (shown here as "postgres"), run the following SQL: 

$ sudo su - postgres 

$ psql -c "REVOKE admin FROM joe" 

#### Roles Example 4 

The following demonstrates how to alter privileges in a role using ALTER. 

As the database administrator (shown here as "postgres"), run the following SQL: 

$ sudo su - postgres 

$ psql -c "ALTER ROLE joe NOLOGIN" 

The following are examples of how to use grant privileges in PostgreSQL to enforce access controls on objects. For a complete list of privileges, see the official documentation: https://www.postgresql.org/docs/current/static/sql-grant.html 

#### Grant Example 1 

The following example demonstrates how to grant INSERT on a table to a role. 

As the database administrator (shown here as "postgres"), run the following SQL: 

$ sudo su - postgres 

$ psql -c "GRANT SELECT ON stig_test TO joe" 

#### Grant Example 2 

The following example demonstrates how to grant ALL PRIVILEGES on a table to a role. 

As the database administrator (shown here as "postgres"), run the following SQL: 

$ sudo su - postgres 

$ psql -c "GRANT ALL PRIVILEGES ON stig_test TO joe" 

#### Grant Example 3 

The following example demonstrates how to grant a role to a role. 

As the database administrator (shown here as "postgres"), run the following SQL: 

$ sudo su - postgres 

$ psql -c "GRANT admin TO joe" 

#### Revoke Example 1 

The following example demonstrates how to revoke access from a role. 

As the database administrator (shown here as "postgres"), run the following SQL: 

$ sudo su - postgres 

$ psql -c "REVOKE admin FROM joe" 

To change authentication requirements for the database, as the database administrator (shown here as "postgres"), edit pg_hba.conf: 

$ sudo su - postgres 

$ vi ${PGDATA?}/pg_hba.conf 

Edit authentication requirements to the organizational requirements. See the official documentation for the complete list of options for authentication: http://www.postgresql.org/docs/current/static/auth-pg-hba-conf.html 

After changes to pg_hba.conf, reload the server: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?} 

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214059:
Old: 
```
Note: The following instructions use the PGDATA environment variable.
      See supplementary content APPENDIX-F for instructions on
      configuring PGDATA.

      To configure the maximum amount of connections allowed to the
      database, as the database administrator (shown here as "postgres")
      change the following in postgresql.conf

      (the value 10 is an example; set the value to suit local conditions):

      $ sudo su - postgres
      $ vi ${PGDATA?}/postgresql.conf
      max_connections = 10

      Next, restart the database:

      # SYSTEMD SERVER ONLY
      $ sudo systemctl restart postgresql-9.5

      # INITD SERVER ONLY
      $ sudo service postgresql-9.5 restart

      To limit the amount of connections allowed by a specific role,
      as the database administrator, run the following SQL:

      $ psql -c "ALTER ROLE <rolname> CONNECTION LIMIT 1";

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To configure the maximum amount of connections allowed to the database, as the database administrator (shown here as "postgres") change the following in postgresql.conf (the value 10 is an example; set the value to suit local conditions): 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 
max_connections = 10 

Next, restart the database: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl restart postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} restart 

To limit the amount of connections allowed by a specific role, as the database administrator, run the following SQL: 

$ psql -c "ALTER ROLE <rolname> CONNECTION LIMIT 1";

```
---
V-214069:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  To change log_timezone in postgresql.conf to use a different time zone for
  logs, as the database administrator (shown here as "postgres"), run the
  following:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  log_timezone='UTC'
  Next, restart the database:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl restart postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 restart

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To change log_timezone in postgresql.conf to use a different time zone for logs, as the database administrator (shown here as "postgres"), run the following: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 
log_timezone='UTC' 

Next, restart the database: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214072:
Old: 
```
Configure the system to provide an immediate real-time alert to
  appropriate support staff when a specified audit failure occurs.
  It is possible to create scripts or implement third-party tools to enable
  real-time alerting for audit failures in PostgreSQL.

```
New:
```
Configure the system to provide an immediate real-time alert to appropriate support staff when an audit log failure occurs.

It is possible to create scripts or implement third-party tools to enable real-time alerting for audit failures in PostgreSQL.

```
---
V-214080:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  To ensure that logging is enabled, review supplementary content APPENDIX-C for
  instructions on enabling logging.
  With logging enabled, as the database owner (shown here as "postgres"),
  configure the follow parameters in postgresql.conf:
  Note: Consult the organization on how syslog facilities are defined in the
  syslog daemon configuration.
  $ sudo su - postgres
  $ vi 'log_destination' ${PGDATA?}/postgresql.conf
  log_destination = 'syslog'
  syslog_facility = 'LOCAL0'
  syslog_ident = 'postgres'
  Now, as the system administrator, reload the server with the new
  configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER. 

To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

With logging enabled, as the database owner (shown here as "postgres"), configure the follow parameters in postgresql.conf: 

Note: Consult the organization on how syslog facilities are defined in the syslog daemon configuration. 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 
log_destination = 'syslog' 
syslog_facility = 'LOCAL0' 
syslog_ident = 'postgres' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214085:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  Using `pgaudit` the DBMS (PostgreSQL) can be configured to audit these
  requests. See supplementary content `APPENDIX-B` for documentation on
  installing `pgaudit`.
  With `pgaudit` installed the following configurations can be made:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameters (or edit existing parameters):
  pgaudit.log = 'ddl, write, role'
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER. 

Using pgaudit the DBMS (PostgreSQL) can be configured to audit these requests. See supplementary content APPENDIX-B for documentation on installing pgaudit.  

With pgaudit installed the following configurations can be made:  

$ sudo su - postgres  

$ vi ${PGDATA?}/postgresql.conf  

Add the following parameters (or edit existing parameters):  

pgaudit.log = 'ddl, write, role'  

Now, as the system administrator, reload the server with the new configuration:  

# SYSTEMD SERVER ONLY  
$ sudo systemctl reload postgresql- ${PGVER?} 

# INITD SERVER ONLY  
$ sudo service postgresql- ${PGVER?} reload

```
---
V-214091:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  All errors and denials are logged if logging is enabled. To ensure that
  logging is enabled, review supplementary content APPENDIX-C for instructions
  on enabling logging.
  Using pgaudit PostgreSQL can be configured to audit these requests. See
  supplementary content APPENDIX-B for documentation on installing pgaudit.
  With pgaudit installed the following configurations can be made:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameters (or edit existing parameters):
  pgaudit.log='ddl, role, read, write'
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

All errors and denials are logged if logging is enabled. To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

Using pgaudit PostgreSQL can be configured to audit these requests. See supplementary content APPENDIX-B for documentation on installing pgaudit. 

With pgaudit installed the following configurations can be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 

pgaudit.log='ddl, role, read, write' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214097:
Old: 
```
Configure PostgreSQL to produce audit records when unsuccessful
  attempts to modify categories of information.
  To ensure that logging is enabled, review supplementary content APPENDIX-C for
  instructions on enabling logging. All denials are logged when logging is enabled.
  With pgaudit installed the following configurations can be made:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameters (or edit existing parameters):
  pgaudit.log='ddl, role, read, write'
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Configure PostgreSQL to produce audit records when unsuccessful attempts to modify categories of information. 

To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. All denials are logged when logging is enabled. 

With pgaudit installed the following configurations can be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 

pgaudit.log='ddl, role, read, write' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214099:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  Using pgaudit PostgreSQL can be configured to audit these requests. See
  supplementary content APPENDIX-B for documentation on installing pgaudit.
  With pgaudit installed the following configurations can be made:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameters (or edit existing parameters):
  shared_preload_libraries = ‘pgaudit’
  pgaudit.log='ddl, role, read, write'
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Using pgaudit PostgreSQL can be configured to audit these requests. See supplementary content APPENDIX-B for documentation on installing pgaudit. 

With pgaudit installed the following configurations can be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 
shared_preload_libraries = ‘pgaudit’ 
pgaudit.log='ddl, role, read, write' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214100:
Old: 
```
Configure PostgreSQL to produce audit records when unsuccessful
  attempts to access categories of information.
  All denials are logged if logging is enabled. To ensure that logging is
  enabled, review supplementary content APPENDIX-C for instructions on enabling
  logging.
  With `pgaudit` installed the following configurations can be made:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameters (or edit existing parameters):
  pgaudit.log = 'ddl, write, role'
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-$9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Configure PostgreSQL to produce audit records when unsuccessful attempts to access categories of information. 

All denials are logged if logging is enabled. To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

With pgaudit installed the following configurations can be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 

pgaudit.log = 'ddl, write, role' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214101:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  Using pgaudit PostgreSQL can be configured to audit these requests. See
  supplementary content APPENDIX-B for documentation on installing pgaudit.
  With pgaudit installed the following configurations can be made:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameters (or edit existing parameters):
  pgaudit.log='ddl, role, read, write'
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for  PGVER.

Using pgaudit PostgreSQL can be configured to audit these requests. See supplementary content APPENDIX-B for documentation on installing pgaudit. 

With pgaudit installed the following configurations can be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 

pgaudit.log='ddl, role, read, write' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214102:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  Using pgaudit PostgreSQL can be configured to audit these requests. See
  supplementary content APPENDIX-B for documentation on installing pgaudit.
  With pgaudit installed the following configurations can be made:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameters (or edit existing parameters):
  pgaudit.log = 'role'
  Now, as the system administrator, reload the server with the new
  configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Using pgaudit PostgreSQL can be configured to audit these requests. See supplementary content APPENDIX-B for documentation on installing pgaudit. 

With pgaudit installed the following configurations can be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 

pgaudit.log = 'role' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214103:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  To ensure that logging is enabled, review supplementary content APPENDIX-C for
  instructions on enabling logging.
  First, as the database administrator (shown here as "postgres"), edit
  postgresql.conf:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Edit the following parameters as such:
  log_connections = on
  log_disconnections = on
  log_line_prefix = '< %m %u %d %c: >'
  Where:
  * %m is the time and date
  * %u is the username
  * %d is the database
  * %c is the session ID for the connection
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

First, as the database administrator (shown here as "postgres"), edit postgresql.conf: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Edit the following parameters as such: 

log_connections = on 
log_disconnections = on 
log_line_prefix = '< %m %u %d %c: >' 

Where: 
* %m is the time and date 
* %u is the username 
* %d is the database 
* %c is the session ID for the connection 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214104:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  Configure PostgreSQL to produce audit records when unsuccessful attempts to
  delete security objects occur.
  All errors and denials are logged if logging is enabled. To ensure that
  logging is enabled, review supplementary content APPENDIX-C for instructions
  on enabling logging.
  With pgaudit installed the following configurations can be made:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameters (or edit existing parameters):
  pgaudit.log='ddl, role, read, write'
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Configure PostgreSQL to produce audit records when unsuccessful attempts to delete security objects occur. 

All errors and denials are logged if logging is enabled. To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

With pgaudit installed the following configurations can be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 

pgaudit.log='ddl, role, read, write' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214105:
Old: 
```
Note: The following instructions use the PGDATA environment v
  ariable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  Using pgaudit PostgreSQL can be configured to audit these requests. See
  supplementary content APPENDIX-B for documentation on installing pgaudit.
  With pgaudit installed the following configurations can be made:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameters (or edit existing parameters):
  pgaudit.log='role'
  Now, as the system administrator, reload the server with the new
  configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Using pgaudit PostgreSQL can be configured to audit these requests. See supplementary content APPENDIX-B for documentation on installing pgaudit. 

With pgaudit installed the following configurations can be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 

pgaudit.log='role' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214107:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  To ensure that logging is enabled, review supplementary content APPENDIX-C for
  instructions on enabling logging.
  Using `pgaudit` the DBMS (PostgreSQL) can be configured to audit these
  requests. See supplementary content `APPENDIX-B` for documentation on
  installing `pgaudit`.With `pgaudit` installed the following configurat
  ions can be made:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameters (or edit existing parameters):
  pgaudit.log_catalog = 'on'
  pgaudit.log='ddl, role, read, write'
  Now, as the system administrator, reload the server with the new
  configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

Using pgaudit the DBMS (PostgreSQL) can be configured to audit these requests. See supplementary content `APPENDIX-B` for documentation on installing `pgaudit`. 

With pgaudit installed the following configurations can be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 

pgaudit.log_catalog = 'on' 
pgaudit.log='ddl, role, read, write' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214108:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring P
  GDATA.
  To ensure that logging is enabled, review supplementary content APPENDIX-C for
  instructions on enabling logging.
  Using pgaudit PostgreSQL can be configured to audit these requests. See
  supplementary content APPENDIX-B for documentation on installing pgaudit.
  With pgaudit installed the following configurations can be made:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameters (or edit existing parameters):
  pgaudit.log='ddl, role, read, write'
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

Using pgaudit PostgreSQL can be configured to audit these requests. See supplementary content APPENDIX-B for documentation on installing pgaudit. 

With pgaudit installed the following configurations can be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 

pgaudit.log='ddl, role, read, write' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214111:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  To configure PostgreSQL to use SSL, see supplementary content APPENDIX-G.
  To generate a Certificate Revocation List, see the official Red Hat
  Documentation:
  https://access.redhat.com/documentation/en-US/Red_Hat_Update_Infrastructure/
  2.1/html/Administration_Guide/chap-Red_Hat_Update_Infrastructure-
  Administration_Guide-Certification_Revocation_List_CRL.html
  As the database administrator (shown here as "postgres"), copy the CRL file
  into the data directory:
  First, as the system administrator, copy the CRL file into the PostgreSQL Data
  Directory:
  $ sudo cp root.crl ${PGDATA?}/root.crl
  As the database administrator (shown here as "postgres"), set the
  ssl_crl_file parameter to the filename of the CRL:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  ssl_crl_file = 'root.crl'
  Next, in pg_hba.conf, require ssl authentication:
  $ sudo su - postgres
  $ vi ${PGDATA?}/pg_hba.conf
  hostssl <database> <user> <address> cert clientcert=1
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To configure PostgreSQL to use SSL, see supplementary content APPENDIX-G. 

To generate a Certificate Revocation List, see the official Red Hat Documentation: https://access.redhat.com/documentation/en-US/Red_Hat_Update_Infrastructure/2.1/html/Administration_Guide/chap-Red_Hat_Update_Infrastructure-Administration_Guide-Certification_Revocation_List_CRL.html 

As the database administrator (shown here as "postgres"), copy the CRL file into the data directory: 

First, as the system administrator, copy the CRL file into the PostgreSQL Data Directory: 

$ sudo cp root.crl ${PGDATA?}/root.crl 

As the database administrator (shown here as "postgres"), set the ssl_crl_file parameter to the filename of the CRL: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 
ssl_crl_file = 'root.crl' 

Next, in pg_hba.conf, require ssl authentication: 

$ sudo su - postgres 
$ vi ${PGDATA?}/pg_hba.conf 
hostssl <database> <user> <address> cert clientcert=1 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214113:
Old: 
```
Note: The following instructions use the PGDATA environment
  variable. See supplementary content APPENDIX-F for instructions on configuring
  PGDATA.
  Implement protective measures against unauthorized disclosure and modification
  during preparation for transmission.
  To configure PostgreSQL to use SSL, as a database administrator (shown here as
  "postgres"), edit postgresql.conf:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  Add the following parameter:
  ssl = on
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload
  For more information on configuring PostgreSQL to use SSL, see supplementary
  content APPENDIX-G.

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Implement protective measures against unauthorized disclosure and modification during preparation for transmission. 

To configure PostgreSQL to use SSL, as a database administrator (shown here as "postgres"), edit postgresql.conf: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameter: 

ssl = on 

To change authentication requirements for the database, as the database administrator (shown here as "postgres"), edit pg_hba.conf: 

$ sudo su - postgres 

$ vi ${PGDATA?}/pg_hba.conf 

Edit authentication requirements to the organizational requirements. See the official documentation for the complete list of options for authentication: http://www.postgresql.org/docs/current/static/auth-pg-hba-conf.html 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload 

For more information on configuring PostgreSQL to use SSL, see supplementary content APPENDIX-G.

```
---
V-214116:
Old: 
```
Logging must be enabled in order to capture the identity of any
  user/subject or process associated with an event. To ensure that logging is
  enabled, review supplementary content APPENDIX-C for instructions on enabling
  logging.
  To enable username, database name, process ID, remote host/port and
  application name in logging, as the database administrator (shown here as
  "postgres"), edit the following in postgresql.conf:
  $ sudo su - postgres
  $ vi ${PGDATA?}/postgresql.conf
  log_line_prefix = '< %m %u %d %p %r %a >'
  Now, as the system administrator, reload the server with the new configuration:
  # SYSTEMD SERVER ONLY
  $ sudo systemctl reload postgresql-9.5
  # INITD SERVER ONLY
  $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Logging must be enabled in order to capture the identity of any user/subject or process associated with an event. To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

To enable username, database name, process ID, remote host/port and application name in logging, as the database administrator (shown here as "postgres"), edit the following in postgresql.conf: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 
log_line_prefix = '< %m %u %d %p %r %a >' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214117:
Old: 
```
Configure OpenSSL to be FIPS compliant.

PostgreSQL uses OpenSSL for cryptographic modules. To configure OpenSSL to be FIPS
140-2 compliant, see the official RHEL Documentation:
https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Securit
y_Guide/sect-Security_Guide-Federal_Standards_And_Regulations-Federal_Information_Pro
cessing_Standard.html

For more information on configuring PostgreSQL to use SSL, see supplementary content
APPENDIX-G.

```
New:
```
If fips_enabled = 0, configure OpenSSL to be FIPS compliant.

Configure per operating system documentation: 
RedHat: https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/security_guide/chap-federal_standards_and_regulations
Ubuntu: https://security-certs.docs.ubuntu.com/en/fips

For information on configuring PostgreSQL to use SSL, see supplementary content APPENDIX-G.

```
---
V-220321:
Old: 
```
Note: The following instructions use the PGDATA environment variable.
See supplementary content APPENDIX-F for instructions on configuring PGDATA.

To configure PostgreSQL to use SSL, as a database administrator (shown here as
"postgres"), edit postgresql.conf:

$ sudo su - postgres
$ vi ${PGDATA?}/postgresql.conf

Add the following parameter:

ssl = on

Now, as the system administrator, reload the server with the new configuration:

# SYSTEMD SERVER ONLY
$ sudo systemctl reload postgresql-9.5

# INITD SERVER ONLY
$ sudo service postgresql-9.5 reload

For more information on configuring PostgreSQL to use SSL, see supplementary content
APPENDIX-G.

Deploy NSA-approved encrypting devices to protect the server on the network.

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To configure PostgreSQL to use SSL, as a database administrator (shown here as "postgres"), edit postgresql.conf: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameter: 

ssl = on 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload 

For more information on configuring PostgreSQL to use SSL, see supplementary content APPENDIX-G. 

Deploy NSA-approved encrypting devices to protect the server on the network.

```
---
V-214119:
Old: 
```
Configure OpenSSL to be FIPS compliant.

PostgreSQL uses OpenSSL for cryptographic modules. To configure OpenSSL to be FIPS
140-2 compliant, see the official RHEL Documentation:
https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Securit
y_Guide/sect-Security_Guide-Federal_Standards_And_Regulations-Federal_Information_Pro
cessing_Standard.html

For more information on configuring PostgreSQL to use SSL, see supplementary content
APPENDIX-G.

```
New:
```
If fips_enabled = 0, configure OpenSSL to be FIPS compliant.

Configure per operating system documentation: 
RedHat: https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/security_guide/chap-federal_standards_and_regulations
Ubuntu: https://security-certs.docs.ubuntu.com/en/fips

For information on configuring PostgreSQL to use SSL, see supplementary content APPENDIX-G.

```
---
V-214125:
Old: 
```
Note: The following instructions use the PGDATA environment variable.
See supplementary content APPENDIX-F for instructions on configuring PGDATA.

To ensure that logging is enabled, review supplementary content APPENDIX-C for
instructions on enabling logging.

If logging is enabled the following configurations can be made to log the source of
an event.

First, as the database administrator, edit postgresql.conf:

$ sudo su - postgres
$ vi ${PGDATA?}/postgresql.conf

###### Log Line Prefix

Extra parameters can be added to the setting log_line_prefix to log source of event:

# %a = application name
# %u = user name
# %d = database name
# %r = remote host and port
# %p = process ID
# %m = timestamp with milliseconds

For example:
log_line_prefix = '< %m %a %u %d %r %p %m >'

###### Log Hostname

By default only IP address is logged. To also log the hostname the following
parameter can also be set in postgresql.conf:

log_hostname = on

Now, as the system administrator, reload the server with the new configuration:

# SYSTEMD SERVER ONLY
$ sudo systemctl reload postgresql-9.5

# INITD SERVER ONLY
$ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

If logging is enabled the following configurations can be made to log the source of an event. 

First, as the database administrator, edit postgresql.conf: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

###### Log Line Prefix 

Extra parameters can be added to the setting log_line_prefix to log source of event: 

# %a = application name 
# %u = user name 
# %d = database name 
# %r = remote host and port 
# %p = process ID 
# %m = timestamp with milliseconds 

For example: 
log_line_prefix = '< %m %a %u %d %r %p >' 

###### Log Hostname 

By default only IP address is logged. To also log the hostname the following parameter can also be set in postgresql.conf: 

log_hostname = on 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214130:
Old: 
```
Note: The following instructions use the PGDATA environment variable.
See supplementary content APPENDIX-F for instructions on configuring PGDATA.

To enable password_encryption, as the database administrator, edit postgresql.conf:

$ sudo su - postgres
$ vi ${PGDATA?}/postgresql.conf
password_encryption = on

Institute a policy of not using the "WITH UNENCRYPTED PASSWORD" option with the
CREATE ROLE/USER and ALTER ROLE/USER commands. (This option overrides the setting of
the password_encryption configuration parameter.)

As the system administrator, restart the server with the new configuration:

# SYSTEMD SERVER ONLY
$ sudo systemctl restart postgresql-9.5

# INITD SERVER ONLY
$ sudo service postgresql-9.5 restart

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To enable password_encryption, as the database administrator, edit postgresql.conf: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 
password_encryption = on 

Institute a policy of not using the "WITH UNENCRYPTED PASSWORD" option with the CREATE ROLE/USER and ALTER ROLE/USER commands. (This option overrides the setting of the password_encryption configuration parameter.) 

As the system administrator, restart the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl restart postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} restart

```
---
V-214132:
Old: 
```
Note: The following instructions use the PGDATA environment variable.
See supplementary content APPENDIX-F for instructions on configuring PGDATA.

Configure the database to supply additional auditing information to protect against
a user falsely repudiating having performed organization-defined actions.

Using pgaudit PostgreSQL can be configured to audit these requests. See
supplementary content APPENDIX-B for documentation on installing pgaudit.

To ensure that logging is enabled, review supplementary content APPENDIX-C for
instructions on enabling logging.

Modify the configuration of audit logs to include details identifying the individual
user:

First, as the database administrator (shown here as "postgres"), edit
postgresql.conf:

$ sudo su - postgres
$ vi ${PGDATA?}/postgresql.conf

Extra parameters can be added to the setting log_line_prefix to identify the user:

log_line_prefix = '< %m %a %u %d %r %p %m >'

Now, as the system administrator, reload the server with the new configuration:

# SYSTEMD SERVER ONLY
$ sudo systemctl reload postgresql-9.5

# INITD SERVER ONLY
$ sudo service postgresql-9.5 reload

Use accounts assigned to individual users. Where the application connects to
PostgreSQL using a standard, shared account, ensure that it also captures the
individual user identification and passes it to PostgreSQL.

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Configure the database to supply additional auditing information to protect against a user falsely repudiating having performed organization-defined actions. 

Using pgaudit PostgreSQL can be configured to audit these requests. See supplementary content APPENDIX-B for documentation on installing pgaudit. 

To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

Modify the configuration of audit logs to include details identifying the individual user: 

First, as the database administrator (shown here as "postgres"), edit postgresql.conf: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Extra parameters can be added to the setting log_line_prefix to identify the user: 

log_line_prefix = '< %m %a %u %d %r %p >' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload 

Use accounts assigned to individual users. Where the application connects to PostgreSQL using a standard, shared account, ensure that it also captures the individual user identification and passes it to PostgreSQL.

```
---
V-214133:
Old: 
```
Configure the system to notify appropriate support staff immediately
upon storage volume utilization reaching 75%.

PostgreSQL does not monitor storage, however, it is possible to monitor storage with
a script.

##### Example Monitoring Script

#!/bin/bash

PGDATA=/var/lib/psql/9.5/data
CURRENT=$(df ${PGDATA?} | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=75

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
mail -s 'Disk Space Alert' mail@support.com << EOF
The data directory volume is almost full. Used: $CURRENT
%EOF
fi

Schedule this script in cron to run around the clock.

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Configure the system to notify appropriate support staff immediately upon storage volume utilization reaching 75%. 

PostgreSQL does not monitor storage, however, it is possible to monitor storage with a script. 

##### Example Monitoring Script 

#!/bin/bash 

PGDATA=/var/lib/psql/${PGVER?}/data 
CURRENT=$(df ${PGDATA?} | grep / | awk '{ print $5}' | sed 's/%//g') 
THRESHOLD=75 

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then 
mail -s 'Disk Space Alert' mail@support.com << EOF 
The data directory volume is almost full. Used: $CURRENT 
%EOF 
fi 

Schedule this script in cron to run around the clock.

```
---
V-214136:
Old: 
```
Store all PostgreSQL PKI private keys in a FIPS 140-2 validated
cryptographic module. Ensure access to PostgreSQL PKI private keys is restricted to
only authenticated and authorized users.

PostgreSQL private key(s) can be stored in $PGDATA directory, which is only
accessible by the database owner (usually postgres, DBA) user. Do not allow access
to this system account to unauthorized users.

To put the keys in a different directory, as the database administrator (shown here
as "postgres"), set the following settings to a protected directory:

$ sudo su - postgres
$ vi ${PGDATA?}/postgresql.conf
ssl_ca_file = "/some/protected/directory/root.crt"
ssl_crl_file = "/some/protected/directory/root.crl"
ssl_cert_file = "/some/protected/directory/server.crt"
ssl_key_file = "/some/protected/directory/server.key"

Now, as the system administrator, restart the server with the new configuration:

# SYSTEMD SERVER ONLY
$ sudo systemctl restartpostgresql-9.5

# INITD SERVER ONLY
$ sudo service postgresql-9.5 restart

For more information on configuring PostgreSQL to use SSL, see supplementary content
APPENDIX-G.

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Store all PostgreSQL PKI private keys in a FIPS 140-2 or 140-3 validated cryptographic module. 

Ensure access to PostgreSQL PKI private keys is restricted to only authenticated and authorized users. 

PostgreSQL private key(s) can be stored in $PGDATA directory, which is only accessible by the database owner (usually postgres, DBA) user. Do not allow access to this system account to unauthorized users. 

To put the keys in a different directory, as the database administrator (shown here as "postgres"), set the following settings to a protected directory: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 
ssl_ca_file = "/some/protected/directory/root.crt" 
ssl_crl_file = "/some/protected/directory/root.crl" 
ssl_cert_file = "/some/protected/directory/server.crt" 
ssl_key_file = "/some/protected/directory/server.key" 

Now, as the system administrator, restart the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl restart postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} restart 

For more information on configuring PostgreSQL to use SSL, see supplementary content APPENDIX-G.

```
---
V-214138:
Old: 
```
Note: The following instructions use the PGDATA environment variable.
See supplementary content APPENDIX-F for instructions on configuring PGDATA.

To ensure that logging is enabled, review supplementary content APPENDIX-C for
instructions on enabling logging.

If logging is enabled the following configurations must be made to log connections,
date/time, username and session identifier.

First, edit the postgresql.conf file as a privileged user:

$ sudo su - postgres
$ vi ${PGDATA?}/postgresql.conf

Edit the following parameters based on the organization's needs (minimum
requirements are as follows):

log_connections = on
log_disconnections = on
log_line_prefix = '< %m %u %d %c: >'

Now, as the system administrator, reload the server with the new configuration:

# SYSTEMD SERVER ONLY
$ sudo systemctl reload postgresql-9.5

# INITD SERVER ONLY
$ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

If logging is enabled the following configurations must be made to log connections, date/time, username and session identifier. 

First, edit the postgresql.conf file as a privileged user: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Edit the following parameters based on the organization's needs (minimum requirements are as follows): 

log_connections = on 
log_disconnections = on 
log_line_prefix = '< %m %u %d %c: >' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214140:
Old: 
```
Note: The following instructions use the PGDATA environment variable.
See supplementary content APPENDIX-F for instructions on configuring PGDATA.

As the database administrator (shown here as "postgres"), edit postgresql.conf:

$ sudo su - postgres
$ vi $PGDATA/postgresql.conf

Set the following parameters to organizational requirements:

statement_timeout = 10000 #milliseconds
tcp_keepalives_idle = 10 # seconds
tcp_keepalives_interval = 10 # seconds
tcp_keepalives_count = 10

Now, as the system administrator, restart the server with the new configuration:

# SYSTEMD SERVER ONLY
$ sudo systemctl restart postgresql-9.5

# INITD SERVER ONLY
$ sudo service postgresql-9.5 restart

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

As the database administrator (shown here as "postgres"), edit postgresql.conf: 

$ sudo su - postgres 
$ vi $PGDATA/postgresql.conf 

Set the following parameters to organizational requirements: 

statement_timeout = 10000 #milliseconds 
tcp_keepalives_idle = 10 # seconds 
tcp_keepalives_interval = 10 # seconds 
tcp_keepalives_count = 10 

Now, as the system administrator, restart the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl restart postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} restart

```
---
V-214142:
Old: 
```
Logging must be enabled in order to capture timestamps. To ensure that
logging is enabled, review supplementary content APPENDIX-C for instructions on
enabling logging.

If logging is enabled the following configurations must be made to log events with
timestamps:

First, as the database administrator (shown here as "postgres"), edit
postgresql.conf:

$ sudo su - postgres
$ vi ${PGDATA?}/postgresql.conf

Add %m to log_line_prefix to enable timestamps with milliseconds:

log_line_prefix = '< %m >'

Now, as the system administrator, reload the server with the new configuration:

# SYSTEMD SERVER ONLY
$ sudo systemctl reload postgresql-9.5

# INITD SERVER ONLY
$ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

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
$ sudo service postgresql-${PGVER?} reload

```
---
V-214144:
Old: 
```
Note: The following instructions use the PGDATA environment variable.
See supplementary content APPENDIX-F for instructions on configuring PGDATA.

Configure PostgreSQL or deploy and configure software tools to transfer audit
records to a centralized log management system, continuously and in near-real time
where a continuous network connection to the log management system exists, or at
least weekly in the absence of such a connection.

To ensure that logging is enabled, review supplementary content APPENDIX-C for
instructions on enabling logging.

With logging enabled, as the database administrator (shown here as "postgres"),
configure the follow parameters in postgresql.conf (the example uses the default
values - tailor for environment):

Note: Consult the organization on how syslog facilities are defined in the syslog
daemon configuration.

$ sudo su - postgres
$ vi ${PGDATA?}/postgresql.conf
log_destination = 'syslog'
syslog_facility = 'LOCAL0'
syslog_ident = 'postgres'

Now, as the system administrator, reload the server with the new configuration:

# SYSTEMD SERVER ONLY
$ sudo systemctl reload postgresql-9.5

# INITD SERVER ONLY
$ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

Configure PostgreSQL or deploy and configure software tools to transfer audit records to a centralized log management system, continuously and in near-real time where a continuous network connection to the log management system exists, or at least weekly in the absence of such a connection. 

To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

With logging enabled, as the database administrator (shown here as "postgres"), configure the follow parameters in postgresql.conf (the example uses the default values - tailor for environment): 

Note: Consult the organization on how syslog facilities are defined in the syslog daemon configuration. 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 
log_destination = 'syslog' 
syslog_facility = 'LOCAL0' 
syslog_ident = 'postgres' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214145:
Old: 
```
To configure PostgreSQL to use SSL, as a database owner (shown here as
"postgres"), edit postgresql.conf:

$ sudo su - postgres
$ vi ${PGDATA?}/postgresql.conf

Add the following parameter:

ssl = on

Now, as the system administrator, reload the server with the new configuration:

# SYSTEMD SERVER ONLY
$ sudo systemctl reload postgresql-9.5

# INITD SERVER ONLY
$ sudo service postgresql-9.5 reload

For more information on configuring PostgreSQL to use SSL, see supplementary content
APPENDIX-G.

For further SSL configurations, see the official documentation:
https://www.postgresql.org/docs/current/static/ssl-tcp.html

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To configure PostgreSQL to use SSL, as a database owner (shown here as "postgres"), edit postgresql.conf: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameter: 

ssl = on 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload 

For more information on configuring PostgreSQL to use SSL, see supplementary content APPENDIX-G. 

For further SSL configurations, see the official documentation: https://www.postgresql.org/docs/current/static/ssl-tcp.html

```
---
V-214147:
Old: 
```
Configure PostgreSQL to automatically terminate a user session after
organization-defined conditions or trigger events requiring session termination.

Examples follow.

### Change a role to nologin and disconnect the user

ALTER ROLE '<username>' NOLOGIN;
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE username='<username>';

### Disconnecting users during a specific time range
See supplementary content APPENDIX-A for a bash script for this example.

The script found in APPENDIX-A using the -l command can disable all users with
rolcanlogin=t from logging in. The script keeps track of who it disables in a
.restore_login file. After the specified time is over, the same script can be run
with the -r command to restore all login connections.

This script would be added to a cron job:

# lock at 5 am every day of the week, month, year at the 0 minute mark.
0 5 * * * postgres /var/lib/pgsql/no_login.sh -d postgres -l
# restore at 5 pm every day of the week, month, year at the 0 minute mark.
0 17 * * * postgres /var/lib/pgsql/no_login.sh -d postgres -r

```
New:
```
Configure PostgreSQL to automatically terminate a user session after organization-defined conditions or trigger events requiring session termination. 

Examples follow. 

### Change a role to nologin and disconnect the user 

ALTER ROLE '<username>' NOLOGIN; 
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE usename='<usename>'; 

### Disconnecting users during a specific time range 
See supplementary content APPENDIX-A for a bash script for this example. 

The script found in APPENDIX-A using the -l command can disable all users with rolcanlogin=t from logging in. The script keeps track of who it disables in a .restore_login file. After the specified time is over, the same script can be run with the -r command to restore all login connections.  

This script would be added to a cron job: 

# lock at 5 am every day of the week, month, year at the 0 minute mark. 
0 5 * * * postgres /var/lib/pgsql/no_login.sh -d postgres -l 
# restore at 5 pm every day of the week, month, year at the 0 minute mark. 
0 17 * * * postgres /var/lib/pgsql/no_login.sh -d postgres -r

```
---
V-214153:
Old: 
```
Configure OpenSSL to meet FIPS Compliance using the following
      documentation in section 9.1:

      http://csrc.nist.gov/groups/STM/cmvp/documents/140-1/140sp/140sp1758.pdf

      For more information on configuring PostgreSQL to use SSL, see supplementary
      content APPENDIX-G.

```
New:
```
Install PostgreSQL with FIPS-compliant cryptography enabled on an OS found in the CMVP (https://csrc.nist.gov/projects/cryptographic-module-validation-program/validated-modules) or by other means, ensure that FIPS 140-2 or 140-3 certified OpenSSL libraries are used by the DBMS.

For more information on configuring PostgreSQL to use SSL, see supplementary content APPENDIX-G.

FIPS documentation can be downloaded from https://csrc.nist.gov/publications/fips

```
---
V-214154:
Old: 
```
Note: The following instructions use the PGDATA environment variable.
      See supplementary content APPENDIX-F for instructions on configuring
      PGDATA.

      To ensure that logging is enabled, review supplementary content APPENDIX-C
      for instructions on enabling logging.

      Using pgaudit PostgreSQL can be configured to audit these requests. See
      supplementary content APPENDIX-B for documentation on installing pgaudit.

      With pgaudit installed the following configurations can be made:

      $ sudo su - postgres
      $ vi ${PGDATA?}/postgresql.conf

      Add the following parameters (or edit existing parameters):

      pgaudit.log='ddl, role, read, write'

      Now, as the system administrator, reload the server with the new
      configuration:

      # SYSTEMD SERVER ONLY
      $ sudo systemctl reload postgresql-9.5

      # INITD SERVER ONLY
      $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

Using pgaudit PostgreSQL can be configured to audit these requests. See supplementary content APPENDIX-B for documentation on installing pgaudit. 

With pgaudit installed the following configurations can be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 

pgaudit.log='ddl, role, read, write' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214155:
Old: 
```
Note: The following instructions use the PGDATA environment variable.
      See supplementary content APPENDIX-F for instructions on configuring PGDATA.

      To ensure that logging is enabled, review supplementary content APPENDIX-C
      for instructions on enabling logging.

      If logging is enabled the following configurations must be made to log
      unsuccessful connections, date/time, username and session identifier.

      As the database administrator (shown here as "postgres"),
      edit postgresql.conf:

      $ sudo su - postgres
      $ vi ${PGDATA?}/postgresql.conf

      Edit the following parameters:

      log_connections = on
      log_line_prefix = '< %m %u %c: >'
      pgaudit.log = 'read, write'

      Where:
      * %m is the time and date
      * %u is the username
      * %c is the session ID for the connection

      Now, as the system administrator, reload the server with the new
      configuration:

      # SYSTEMD SERVER ONLY
      $ sudo systemctl reload postgresql-9.5

      # INITD SERVER ONLY
      $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER. To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

If logging is enabled, the following configurations must be made to log unsuccessful connections, date/time, username, and session identifier. 

As the database administrator (shown here as "postgres"), edit postgresql.conf: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Edit the following parameters: 

log_connections = on 
log_line_prefix = '< %m %u %c: >' 
pgaudit.log = 'read, write' 

Where: 
* %m is the time and date 
* %u is the username 
* %c is the session ID for the connection 

As the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?}

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214156:
Old: 
```
Note: The following instructions use the PGDATA environment
      variable. See supplementary content APPENDIX-F for instructions on
      configuring PGDATA.

      To ensure that logging is enabled, review supplementary content APPENDIX-C
      for instructions on enabling logging.

      Using pgaudit PostgreSQL can be configured to audit these requests. See
      supplementary content APPENDIX-B for documentation on installing pgaudit.

      With pgaudit installed the following configurations should be made:

      $ sudo su - postgres
      $ vi ${PGDATA?}/postgresql.conf

      Add the following parameters (or edit existing parameters):

      pgaudit.log='ddl, role, read, write'
      log_connections='on'
      log_disconnections='on'

      Now, as the system administrator, reload the server with the new configuration:

      # SYSTEMD SERVER ONLY
      $ sudo systemctl reload postgresql-9.5

      # INITD SERVER ONLY
      $ sudo service postgresql-9.5 reload

```
New:
```
Note: The following instructions use the PGDATA and PGVER environment variables. See supplementary content APPENDIX-F for instructions on configuring PGDATA and APPENDIX-H for PGVER.

To ensure that logging is enabled, review supplementary content APPENDIX-C for instructions on enabling logging. 

Using pgaudit PostgreSQL can be configured to audit these requests. See supplementary content APPENDIX-B for documentation on installing pgaudit. 

With pgaudit installed the following configurations should be made: 

$ sudo su - postgres 
$ vi ${PGDATA?}/postgresql.conf 

Add the following parameters (or edit existing parameters): 

pgaudit.log='ddl, role, read, write' 
log_connections='on' 
log_disconnections='on' 

Now, as the system administrator, reload the server with the new configuration: 

# SYSTEMD SERVER ONLY 
$ sudo systemctl reload postgresql-${PGVER?} 

# INITD SERVER ONLY 
$ sudo service postgresql-${PGVER?} reload

```
---
V-214157:
Old: 
```
Install Postgres with FIPS-compliant cryptography enabled on RHEL;
      or by other means ensure that FIPS 140-2 certified OpenSSL libraries are
      used by the DBMS.

```
New:
```
Install PostgreSQL with FIPS-compliant cryptography enabled on an OS found in the CMVP (https://csrc.nist.gov/projects/cryptographic-module-validation-program/validated-modules) or by other means, ensure that FIPS 140-2 or 140-3 certified OpenSSL libraries are used by the DBMS.

```
---
</details>

### Updated Impacts
<details open>
  <summary>Click to expand.</summary>
V-214052:
Old: 0.5
New: 0.7
---
V-214056:
Old: 0.5
New: 0.7
---
V-214057:
Old: 0.5
New: 0.7
---
V-214075:
Old: 0.5
New: 0.7
---
V-214120:
Old: 0.5
New: 0.7
---
V-214130:
Old: 0.5
New: 0.7
---
</details>

### Updated Titles
<details>
  <summary>Click to expand.</summary>
V-214048:
Old: PostgreSQL must be configured to prohibit or restrict the use of
        organization-defined functions, ports, protocols, and&#x2F;or services, as
        defined in the PPSM CAL and vulnerability assessments.
New: PostgreSQL must be configured to prohibit or restrict the use of organization-defined functions, ports, protocols, and&#x2F;or services, as defined in the PPSM CAL and vulnerability assessments.
---
V-214050:
Old: Security-relevant software updates to PostgreSQL must be installed
  within the time period directed by an authoritative source (e.g., IAVM, CTOs,
  DTMs, and STIGs).
New: Security-relevant software updates to PostgreSQL must be installed within the time period directed by an authoritative source (e.g., IAVM, CTOs, DTMs, and STIGs).
---
V-214052:
Old: PostgreSQL must integrate with an organization-level
  authentication&#x2F;access mechanism providing account management and automation
  for all users, groups, roles, and any other principals.
New: PostgreSQL must integrate with an organization-level authentication&#x2F;access mechanism providing account management and automation for all users, groups, roles, and any other principals.
---
V-214053:
Old: PostgreSQL must provide non-privileged users with error messages that
        provide information necessary for corrective actions without revealing
        information that could be exploited by adversaries.
New: PostgreSQL must provide non-privileged users with error messages that provide information necessary for corrective actions without revealing information that could be exploited by adversaries.
---
V-214056:
Old: If passwords are used for authentication, PostgreSQL must transmit only
         encrypted representations of passwords.
New: If passwords are used for authentication, PostgreSQL must transmit only encrypted representations of passwords.
---
V-214057:
Old: PostgreSQL must enforce approved authorizations for logical access to
        information and system resources in accordance with applicable access
        control policies.
New: PostgreSQL must enforce approved authorizations for logical access to information and system resources in accordance with applicable access control policies.
---
V-214058:
Old: PostgreSQL must associate organization-defined types of security labels
  having organization-defined security label values with information in
transmission.
New: PostgreSQL must associate organization-defined types of security labels having organization-defined security label values with information in transmission.
---
V-214059:
Old: PostgreSQL must limit the number of concurrent sessions to an
  organization-defined number per user for all accounts and&#x2F;or account types.
New: PostgreSQL must limit the number of concurrent sessions to an organization-defined number per user for all accounts and&#x2F;or account types.
---
V-214060:
Old: The role(s)&#x2F;group(s) used to modify database structure (including but
          not necessarily limited to tables, indexes, storage, etc.) and logic
          modules (functions, trigger procedures, links to software external to
          PostgreSQL, etc.) must be restricted to authorized users.
New: The role(s)&#x2F;group(s) used to modify database structure (including but not necessarily limited to tables, indexes, storage, etc.) and logic modules (functions, trigger procedures, links to software external to PostgreSQL, etc.) must be restricted to authorized users.
---
V-214061:
Old: PostgreSQL must uniquely identify and authenticate non-organizational
  users (or processes acting on behalf of non-organizational users).
New: PostgreSQL must uniquely identify and authenticate non-organizational users (or processes acting on behalf of non-organizational users).
---
V-214062:
Old: PostgreSQL must associate organization-defined types of security labels
  having organization-defined security label values with information in storage.
New: PostgreSQL must associate organization-defined types of security labels having organization-defined security label values with information in storage.
---
V-214063:
Old: PostgreSQL must check the validity of all data inputs except those
  specifically identified by the organization.
New: PostgreSQL must check the validity of all data inputs except those specifically identified by the organization.
---
V-214064:
Old: PostgreSQL and associated applications must reserve the use of dynamic
  code execution for situations that require it.
New: PostgreSQL and associated applications must reserve the use of dynamic code execution for situations that require it.
---
V-214065:
Old: PostgreSQL and associated applications, when making use of dynamic code
  execution, must scan input data for invalid values that may indicate a code i
  njection attack.
New: PostgreSQL and associated applications, when making use of dynamic code execution, must scan input data for invalid values that may indicate a code injection attack.
---
V-214066:
Old: PostgreSQL must allocate audit record storage capacity in accordance
  with organization-defined audit record storage requirements.
New: PostgreSQL must allocate audit record storage capacity in accordance with organization-defined audit record storage requirements.
---
V-214067:
Old: PostgreSQL must enforce discretionary access control policies, as
  defined by the data owner, over defined subjects and objects.
New: PostgreSQL must enforce discretionary access control policies, as defined by the data owner, over defined subjects and objects.
---
V-214069:
Old: PostgreSQL must record time stamps, in audit records and application
  data, that can be mapped to Coordinated Universal Time (UTC, formerly GMT).
New: PostgreSQL must record time stamps, in audit records and application data, that can be mapped to Coordinated Universal Time (UTC, formerly GMT).
---
V-214071:
Old: PostgreSQL must allow only the ISSM (or individuals or roles appointed
  by the ISSM) to select which auditable events are to be audited.
New: PostgreSQL must allow only the ISSM (or individuals or roles appointed by the ISSM) to select which auditable events are to be audited.
---
V-214072:
Old: PostgreSQL must provide an immediate real-time alert to appropriate
  support staff of all audit failure events requiring real-time alerts.
New: PostgreSQL must provide an immediate real-time alert to appropriate support staff of all audit log failures.
---
V-214073:
Old: PostgreSQL must maintain the confidentiality and integrity of
  information during reception.
New: PostgreSQL must maintain the confidentiality and integrity of information during reception.
---
V-214074:
Old: Database objects (including but not limited to tables, indexes,
  storage, trigger procedures, functions, links to software external to
  PostgreSQL, etc.) must be owned by database&#x2F;DBMS principals authorized for
  ownership.
New: Database objects (including but not limited to tables, indexes, storage, trigger procedures, functions, links to software external to PostgreSQL, etc.) must be owned by database&#x2F;DBMS principals authorized for ownership.
---
V-214075:
Old: The PostgreSQL software installation account must be restricted to
  authorized users.
New: The PostgreSQL software installation account must be restricted to authorized users.
---
V-214076:
Old: Database software, including PostgreSQL configuration files, must be
  stored in dedicated directories separate from the host OS and other
  applications.
New: Database software, including PostgreSQL configuration files, must be stored in dedicated directories separate from the host OS and other applications.
---
V-214077:
Old: PostgreSQL must include additional, more detailed, organization-defined
  information in the audit records for audit events identified by type,
  location, or subject.
New: PostgreSQL must include additional, more detailed, organization-defined information in the audit records for audit events identified by type, location, or subject.
---
V-214078:
Old: Execution of software modules (to include functions and trigger
  procedures) with elevated privileges must be restricted to necessary cases
  only.
New: Execution of software modules (to include functions and trigger procedures) with elevated privileges must be restricted to necessary cases only.
---
V-214080:
Old: PostgreSQL must utilize centralized management of the content captured
  in audit records generated by all components of PostgreSQL.
New: PostgreSQL must utilize centralized management of the content captured in audit records generated by all components of PostgreSQL.
---
V-214084:
Old: When updates are applied to PostgreSQL software, any software
  components that have been replaced or made unnecessary must be removed.
New: When updates are applied to PostgreSQL software, any software components that have been replaced or made unnecessary must be removed.
---
V-214085:
Old: PostgreSQL must generate audit records when categorized information
  (e.g., classification levels&#x2F;security levels) is accessed.
New: PostgreSQL must generate audit records when categorized information (e.g., classification levels&#x2F;security levels) is accessed.
---
V-214091:
Old: PostgreSQL must generate audit records when unsuccessful attempts to
  delete categorized information (e.g., classification levels&#x2F;security levels)
  occur.
New: PostgreSQL must generate audit records when unsuccessful attempts to delete categorized information (e.g., classification levels&#x2F;security levels) occur.
---
V-214097:
Old: PostgreSQL must generate audit records when unsuccessful attempts to
  modify categorized information (e.g., classification levels&#x2F;security levels)
  occur.
New: PostgreSQL must generate audit records when unsuccessful attempts to modify categorized information (e.g., classification levels&#x2F;security levels) occur.
---
V-214099:
Old: PostgreSQL must generate audit records for all privileged activities or
  other system-level access.
New: PostgreSQL must generate audit records for all privileged activities or other system-level access.
---
V-214100:
Old: PostgreSQL must generate audit records when unsuccessful attempts to
  access categorized information (e.g., classification levels&#x2F;security levels)
  occur.
New: PostgreSQL must generate audit records when unsuccessful attempts to access categorized information (e.g., classification levels&#x2F;security levels) occur.
---
V-214101:
Old: PostgreSQL must be able to generate audit records when security objects
  are accessed.
New: PostgreSQL must be able to generate audit records when security objects are accessed.
---
V-214102:
Old: PostgreSQL must generate audit records when privileges&#x2F;permissions are
  deleted.
New: PostgreSQL must generate audit records when privileges&#x2F;permissions are deleted.
---
V-214103:
Old: PostgreSQL must generate audit records when concurrent
  logons&#x2F;connections by the same user from different workstations occur.
New: PostgreSQL must generate audit records when concurrent logons&#x2F;connections by the same user from different workstations occur.
---
V-214104:
Old: PostgreSQL must generate audit records when unsuccessful attempts to
  delete security objects occur.
New: PostgreSQL must generate audit records when unsuccessful attempts to delete security objects occur.
---
V-214105:
Old: PostgreSQL must generate audit records when privileges&#x2F;permissions are
  modified.
New: PostgreSQL must generate audit records when privileges&#x2F;permissions are modified.
---
V-214107:
Old: PostgreSQL must generate audit records when security objects are
  modified.
New: PostgreSQL must generate audit records when security objects are modified.
---
V-214108:
Old: PostgreSQL must generate audit records when categorized information
  (e.g., classification levels&#x2F;security levels) is modified.
New: PostgreSQL must generate audit records when categorized information (e.g., classification levels&#x2F;security levels) is modified.
---
V-214111:
Old: PostgreSQL, when utilizing PKI-based authentication, must validate
  certificates by performing RFC 5280-compliant certification path validation.
New: PostgreSQL, when utilizing PKI-based authentication, must validate certificates by performing RFC 5280-compliant certification path validation.
---
V-214113:
Old: PostgreSQL must maintain the confidentiality and integrity of
  information during preparation for transmission.
New: PostgreSQL must maintain the confidentiality and integrity of information during preparation for transmission.
---
V-214114:
Old: PostgreSQL must provide audit record generation capability for
  DoD-defined auditable events within all DBMS&#x2F;database components.
New: PostgreSQL must provide audit record generation capability for DoD-defined auditable events within all DBMS&#x2F;database components.
---
V-214116:
Old: PostgreSQL must produce audit records containing sufficient information
  to establish the identity of any user&#x2F;subject or process associated with the
  event.
New: PostgreSQL must produce audit records containing sufficient information to establish the identity of any user&#x2F;subject or process associated with the event.
---
V-214117:
Old: PostgreSQL must implement NIST FIPS 140-2 validated cryptographic
  modules to generate and validate cryptographic hashes.
New: PostgreSQL must implement NIST FIPS 140-2 or 140-3 validated cryptographic modules to generate and validate cryptographic hashes.
---
V-220321:
Old: PostgreSQL must use NSA-approved cryptography to protect classified
information in accordance with the data owners requirements.
New: PostgreSQL must use NSA-approved cryptography to protect classified information in accordance with the data owners requirements.
---
V-214119:
Old: PostgreSQL must implement NIST FIPS 140-2 validated cryptographic modules
to protect unclassified information requiring confidentiality and cryptographic
protection, in accordance with the data owners requirements.
New: PostgreSQL must implement NIST FIPS 140-2 or 140-3 validated cryptographic modules to protect unclassified information requiring confidentiality and cryptographic protection, in accordance with the data owners requirements.
---
V-214120:
Old: PostgreSQL must protect the confidentiality and integrity of all
information at rest.
New: PostgreSQL must protect the confidentiality and integrity of all information at rest.
---
V-214122:
Old: PostgreSQL must separate user functionality (including user interface
services) from database management functionality.
New: PostgreSQL must separate user functionality (including user interface services) from database management functionality.
---
V-214124:
Old: PostgreSQL must implement cryptographic mechanisms to prevent unauthorized
modification of organization-defined information at rest (to include, at a minimum,
PII and classified information) on organization-defined information system
components.
New: PostgreSQL must implement cryptographic mechanisms to prevent unauthorized modification of organization-defined information at rest (to include, at a minimum, PII and classified information) on organization-defined information system components.
---
V-214125:
Old: PostgreSQL must produce audit records containing sufficient information to
establish the sources (origins) of the events.
New: PostgreSQL must produce audit records containing sufficient information to establish the sources (origins) of the events.
---
V-214128:
Old: Unused database components which are integrated in PostgreSQL and cannot be
uninstalled must be disabled.
New: Unused database components which are integrated in PostgreSQL and cannot be uninstalled must be disabled.
---
V-214129:
Old: PostgreSQL must associate organization-defined types of security labels
having organization-defined security label values with information in process.
New: PostgreSQL must associate organization-defined types of security labels having organization-defined security label values with information in process.
---
V-214130:
Old: If passwords are used for authentication, PostgreSQL must store only
hashed, salted representations of passwords.
New: If passwords are used for authentication, PostgreSQL must store only hashed, salted representations of passwords.
---
V-214131:
Old: PostgreSQL must enforce access restrictions associated with changes to the
configuration of PostgreSQL or database(s).
New: PostgreSQL must enforce access restrictions associated with changes to the configuration of PostgreSQL or database(s).
---
V-214132:
Old: PostgreSQL must protect against a user falsely repudiating having performed
organization-defined actions.
New: PostgreSQL must protect against a user falsely repudiating having performed organization-defined actions.
---
V-214133:
Old: The system must provide a warning to appropriate support staff when
allocated audit record storage volume reaches 75% of maximum audit record storage
capacity.
New: The system must provide a warning to appropriate support staff when allocated audit record storage volume reaches 75% of maximum audit record storage capacity.
---
V-214135:
Old: PostgreSQL must require users to reauthenticate when organization-defined
circumstances or situations require reauthentication.
New: PostgreSQL must require users to reauthenticate when organization-defined circumstances or situations require reauthentication.
---
V-214136:
Old: PostgreSQL must enforce authorized access to all PKI private keys
stored&#x2F;utilized by PostgreSQL.
New: PostgreSQL must enforce authorized access to all PKI private keys stored&#x2F;utilized by PostgreSQL.
---
V-214137:
Old: PostgreSQL must only accept end entity certificates issued by DoD PKI or
DoD-approved PKI Certification Authorities (CAs) for the establishment of all
encrypted sessions.
New: PostgreSQL must only accept end entity certificates issued by DoD PKI or DoD-approved PKI Certification Authorities (CAs) for the establishment of all encrypted sessions.
---
V-214138:
Old: PostgreSQL must produce audit records containing sufficient information to
establish what type of events occurred.
New: PostgreSQL must produce audit records containing sufficient information to establish what type of events occurred.
---
V-214139:
Old: PostgreSQL must implement cryptographic mechanisms preventing the
unauthorized disclosure of organization-defined information at rest on
organization-defined information system components.
New: PostgreSQL must implement cryptographic mechanisms preventing the unauthorized disclosure of organization-defined information at rest on organization-defined information system components.
---
V-214140:
Old: PostgreSQL must invalidate session identifiers upon user logout or other
session termination.
New: PostgreSQL must invalidate session identifiers upon user logout or other session termination.
---
V-214142:
Old: PostgreSQL must produce audit records containing time stamps to establish
when the events occurred.
New: PostgreSQL must produce audit records containing time stamps to establish when the events occurred.
---
V-214144:
Old: PostgreSQL must off-load audit data to a separate log management facility;
this must be continuous and in near real time for systems with a network connection
to the storage facility and weekly or more often for stand-alone systems.
New: PostgreSQL must off-load audit data to a separate log management facility; this must be continuous and in near real time for systems with a network connection to the storage facility and weekly or more often for stand-alone systems.
---
V-214145:
Old: PostgreSQL must maintain the authenticity of communications sessions by
guarding against man-in-the-middle attacks that guess at Session ID values.
New: PostgreSQL must maintain the authenticity of communications sessions by guarding against man-in-the-middle attacks that guess at Session ID values.
---
V-214146:
Old: PostgreSQL must uniquely identify and authenticate organizational users (or
processes acting on behalf of organizational users).
New: PostgreSQL must uniquely identify and authenticate organizational users (or processes acting on behalf of organizational users).
---
V-214147:
Old: PostgreSQL must automatically terminate a user session after
organization-defined conditions or trigger events requiring session disconnect.
New: PostgreSQL must automatically terminate a user session after organization-defined conditions or trigger events requiring session disconnect.
---
V-214149:
Old: PostgreSQL must map the PKI-authenticated identity to an associated user
account.
New: PostgreSQL must map the PKI-authenticated identity to an associated user account.
---
V-214150:
Old: Database contents must be protected from unauthorized and unintended
information transfer by enforcement of a data-transfer policy.
New: Database contents must be protected from unauthorized and unintended information transfer by enforcement of a data-transfer policy.
---
V-214152:
Old: PostgreSQL must protect its audit configuration from unauthorized
        modification.
New: PostgreSQL must protect its audit configuration from unauthorized modification.
---
V-214153:
Old: PostgreSQL must use NIST FIPS 140-2 validated cryptographic modules for
        cryptographic operations.
New: PostgreSQL must use NIST FIPS 140-2 or 140-3 validated cryptographic modules for cryptographic operations.
---
V-214154:
Old: Audit records must be generated when categorized information (e.g.,
        classification levels&#x2F;security levels) is deleted.
New: Audit records must be generated when categorized information (e.g., classification levels&#x2F;security levels) is deleted.
---
V-214155:
Old: PostgreSQL must generate audit records when successful accesses to
        objects occur.
New: PostgreSQL must generate audit records when successful accesses to objects occur.
---
V-214156:
Old: PostgreSQL must generate audit records for all direct access to the
        database(s).
New: PostgreSQL must generate audit records for all direct access to the database(s).
---
V-214157:
Old: The DBMS must be configured on a platform that has a NIST certified
        FIPS 140-2 installation of OpenSSL.
New: The DBMS must be configured on a platform that has a NIST certified FIPS 140-2 or 140-3 installation of OpenSSL.
---
V-214112:
Old: PostgreSQL must produce audit records containing sufficient information
  to establish where the events occurred.
New: PostgreSQL must produce audit records containing sufficient information to establish where the events occurred.
---
</details>

### Updated Descriptions
<details>
  <summary>Click to expand.</summary>
V-214048:
Old:
```
In order to prevent unauthorized connection of devices, unauthorized
        transfer of information, or unauthorized tunneling (i.e., embedding of
        data types within data types), organizations must disable or restrict
        unused or unnecessary physical and logical ports/protocols/services on
        information systems.

        Applications are capable of providing a wide variety of functions and
        services. Some of the functions and services provided by default may
        not be necessary to support essential organizational operations.
        Additionally, it is sometimes convenient to provide multiple services
        from a single component (e.g., email and web services); however, doing
        so increases risk over limiting the services provided by any one component.

        To support the requirements and principles of least functionality, the
        application must support the organizational requirements providing only
        essential capabilities and limiting the use of ports, protocols, and/or
        services to only those required, authorized, and approved to conduct
        official business or to address authorized quality of life issues.

        Database Management Systems using ports, protocols, and services deemed
        unsafe are open to attack through those ports, protocols, and services.
        This can allow unauthorized access to the database and through the
        database to other components of the information system.

```
New:
```
In order to prevent unauthorized connection of devices, unauthorized transfer of information, or unauthorized tunneling (i.e., embedding of data types within data types), organizations must disable or restrict unused or unnecessary physical and logical ports/protocols/services on information systems.

Applications are capable of providing a wide variety of functions and services. Some of the functions and services provided by default may not be necessary to support essential organizational operations. Additionally, it is sometimes convenient to provide multiple services from a single component (e.g., email and web services); however, doing so increases risk over limiting the services provided by any one component. 

To support the requirements and principles of least functionality, the application must support the organizational requirements providing only essential capabilities and limiting the use of ports, protocols, and/or services to only those required, authorized, and approved to conduct official business or to address authorized quality of life issues.

Database Management Systems using ports, protocols, and services deemed unsafe are open to attack through those ports, protocols, and services. This can allow unauthorized access to the database and through the database to other components of the information system.

```
---
V-214050:
Old:
```
Security flaws with software applications, including database
  management systems, are discovered daily. Vendors are constantly updating and
  patching their products to address newly discovered security vulnerabilities.
  Organizations (including any contractor to the organization) are required to
  promptly install security-relevant software updates (e.g., patches, service
  packs, and hot fixes). Flaws discovered during security assessments,
  continuous monitoring, incident response activities, or information system
  error handling must also be addressed expeditiously.  Organization-defined
  time periods for updating security-relevant software may vary based on a
  variety of factors including, for example, the security category of the
  information system or the criticality of the update (i.e., severity of the
  vulnerability related to the discovered flaw).  This requirement will apply
  to software patch management solutions that are used to install patches across
  the enclave and also to applications themselves that are not part of that p
  atch management solution. For example, many browsers today provide the
  capability to install their own patch software. Patch criticality, as well as
  system criticality, will vary. Therefore, the tactical situations regarding
  the patch management process will also vary. This means that the time period
  utilized must be a configurable parameter. Time frames for application of
  security-relevant software updates may be dependent upon the Information
  Assurance Vulnerability Management (IAVM) process.  The application will
  be configured to check for and install security-relevant software updates
  within an identified time period from the availability of the update. The
  specific time period will be defined by an authoritative source (e.g., IAVM,
  CTOs, DTMs, and STIGs).

```
New:
```
Security flaws with software applications, including database management systems, are discovered daily. Vendors are constantly updating and patching their products to address newly discovered security vulnerabilities. Organizations (including any contractor to the organization) are required to promptly install security-relevant software updates (e.g., patches, service packs, and hot fixes). Flaws discovered during security assessments, continuous monitoring, incident response activities, or information system error handling must also be addressed expeditiously.

Organization-defined time periods for updating security-relevant software may vary based on a variety of factors including, for example, the security category of the information system or the criticality of the update (i.e., severity of the vulnerability related to the discovered flaw).

This requirement will apply to software patch management solutions that are used to install patches across the enclave and also to applications themselves that are not part of that patch management solution. For example, many browsers today provide the capability to install their own patch software. Patch criticality, as well as system criticality, will vary. Therefore, the tactical situations regarding the patch management process will also vary. This means that the time period utilized must be a configurable parameter. Time frames for application of security-relevant software updates may be dependent upon the Information Assurance Vulnerability Management (IAVM) process.

The application will be configured to check for and install security-relevant software updates within an identified time period from the availability of the update. The specific time period will be defined by an authoritative source (e.g., IAVM, CTOs, DTMs, and STIGs).

```
---
V-214052:
Old:
```
Enterprise environments make account management for applications and
  databases challenging and complex. A manual process for account management
  functions adds the risk of a potential oversight or other error. Managing
  accounts for the same person in multiple places is inefficient and prone to
  problems with consistency and synchronization.  A comprehensive application
  account management process that includes automation helps to ensure that
  accounts designated as requiring attention are consistently and promptly
  addressed. Examples include, but are not limited to, using automation to take
  action on multiple accounts designated as inactive, suspended, or terminated,
  or by disabling accounts located in non-centralized account stores, such as
  multiple servers. Account management functions can also include: assignment of
  group or role membership; identifying account type; specifying user access
  authorizations (i.e., privileges); account removal, update, or termination;
  and administrative alerts. The use of automated mechanisms can include, for
  example: using email or text messaging to notify account managers when users
  are terminated or transferred; using the information system to monitor account
  usage; and using automated telephone notification to report atypical system
  account usage.  PostgreSQL must be configured to automatically utilize
  organization-level account management functions, and these functions must
  immediately enforce the organization's current account policy. Automation may
  be comprised of differing technologies that when placed together contain an
  overall mechanism supporting an organization's automated account management
  requirements.

```
New:
```
Enterprise environments make account management for applications and databases challenging and complex. A manual process for account management functions adds the risk of a potential oversight or other error. Managing accounts for the same person in multiple places is inefficient and prone to problems with consistency and synchronization.

A comprehensive application account management process that includes automation helps to ensure that accounts designated as requiring attention are consistently and promptly addressed. 

Examples include, but are not limited to, using automation to take action on multiple accounts designated as inactive, suspended, or terminated, or by disabling accounts located in non-centralized account stores, such as multiple servers. Account management functions can also include: assignment of group or role membership; identifying account type; specifying user access authorizations (i.e., privileges); account removal, update, or termination; and administrative alerts. The use of automated mechanisms can include, for example: using email or text messaging to notify account managers when users are terminated or transferred; using the information system to monitor account usage; and using automated telephone notification to report atypical system account usage.

PostgreSQL must be configured to automatically utilize organization-level account management functions, and these functions must immediately enforce the organization's current account policy. 

Automation may be comprised of differing technologies that when placed together contain an overall mechanism supporting an organization's automated account management requirements.

```
---
V-214053:
Old:
```
Any PostgreSQL or associated application providing too much information
        in error messages on the screen or printout risks compromising the data
        and security of the system. The structure and content of error messages
        need to be carefully considered by the organization and development team.

        Databases can inadvertently provide a wealth of information to an
        attacker through improperly handled error messages. In addition to
        sensitive business or personal information, database errors can provide
        host names, IP addresses, user names, and other system information not
        required for troubleshooting but very useful to someone targeting the
        system.

        Carefully consider the structure/content of error messages. The extent
        to which information systems are able to identify and handle error
        conditions is guided by organizational policy and operational
        requirements. Information that could be exploited by adversaries
        includes, for example, logon attempts with passwords entered by mistake
        as the username, mission/business information that can be derived from
        (if not stated explicitly by) information recorded, and personal
        information, such as account numbers, social security numbers, and
        credit card numbers.

```
New:
```
Any PostgreSQL or associated application providing too much information in error messages on the screen or printout risks compromising the data and security of the system. The structure and content of error messages need to be carefully considered by the organization and development team.

Databases can inadvertently provide a wealth of information to an attacker through improperly handled error messages. In addition to sensitive business or personal information, database errors can provide host names, IP addresses, user names, and other system information not required for troubleshooting but very useful to someone targeting the system.

Carefully consider the structure/content of error messages. The extent to which information systems are able to identify and handle error conditions is guided by organizational policy and operational requirements. Information that could be exploited by adversaries includes, for example, logon attempts with passwords entered by mistake as the username, mission/business information that can be derived from (if not stated explicitly by) information recorded, and personal information, such as account numbers, social security numbers, and credit card numbers.

```
---
V-214056:
Old:
```
The DoD standard for authentication is DoD-approved PKI certificates.
        Authentication based on User ID and Password may be used only when it is
        not possible to employ a PKI certificate, and requires AO approval.

        In such cases, passwords need to be protected at all times, and
        encryption is the standard method for protecting passwords during
        transmission.

        PostgreSQL passwords sent in clear text format across the network are
        vulnerable to discovery by unauthorized users. Disclosure of passwords
        may easily lead to unauthorized access to the database.

```
New:
```
The DoD standard for authentication is DoD-approved PKI certificates.

Authentication based on User ID and Password may be used only when it is not possible to employ a PKI certificate, and requires AO approval.

In such cases, passwords need to be protected at all times, and encryption is the standard method for protecting passwords during transmission.

PostgreSQL passwords sent in clear text format across the network are vulnerable to discovery by unauthorized users. Disclosure of passwords may easily lead to unauthorized access to the database.

```
---
V-214057:
Old:
```
Authentication with a DoD-approved PKI certificate does not necessarily
        imply authorization to access PostgreSQL. To mitigate the risk of
        unauthorized access to sensitive information by entities that have been
        issued certificates by DoD-approved PKIs, all DoD systems, including
        databases, must be properly configured to implement access control
        policies.

        Successful authentication must not automatically give an entity access
        to an asset or security boundary. Authorization procedures and controls
        must be implemented to ensure each authenticated entity also has a
        validated and current authorization. Authorization is the process of
        determining whether an entity, once authenticated, is permitted to
        access a specific asset. Information systems use access control policies
        and enforcement mechanisms to implement this requirement.

        Access control policies include identity-based policies, role-based
        policies, and attribute-based policies. Access enforcement mechanisms
        include access control lists, access control matrices, and cryptography.

        These policies and mechanisms must be employed by the application to
        control access between users (or processes acting on behalf of users)
        and objects (e.g., devices, files, records, processes, programs, and domains)
        in the information system.

        This requirement is applicable to access control enforcement applications,
        a category that includes database management systems. If PostgreSQL does
        not follow applicable policy when approving access, it may be in conflict
        with networks or other applications in the information system. This may
        result in users either gaining or being denied access inappropriately and
        in conflict with applicable policy.

```
New:
```
Authentication with a DoD-approved PKI certificate does not necessarily imply authorization to access PostgreSQL. To mitigate the risk of unauthorized access to sensitive information by entities that have been issued certificates by DoD-approved PKIs, all DoD systems, including databases, must be properly configured to implement access control policies.

Successful authentication must not automatically give an entity access to an asset or security boundary. Authorization procedures and controls must be implemented to ensure each authenticated entity also has a validated and current authorization. Authorization is the process of determining whether an entity, once authenticated, is permitted to access a specific asset. Information systems use access control policies and enforcement mechanisms to implement this requirement.

Access control policies include identity-based policies, role-based policies, and attribute-based policies. Access enforcement mechanisms include access control lists, access control matrices, and cryptography. These policies and mechanisms must be employed by the application to control access between users (or processes acting on behalf of users) and objects (e.g., devices, files, records, processes, programs, and domains) in the information system.

This requirement is applicable to access control enforcement applications, a category that includes database management systems. If PostgreSQL does not follow applicable policy when approving access, it may be in conflict with networks or other applications in the information system. This may result in users either gaining or being denied access inappropriately and in conflict with applicable policy.

```
---
V-214058:
Old:
```
Without the association of security labels to information, there is no
  basis for PostgreSQL to make security-related access-control decisions.
  Security labels are abstractions representing the basic properties or
  characteristics of an entity (e.g., subjects and objects) with respect to
  safeguarding information.
  These labels are typically associated with internal data structures (e.g.,
  tables, rows) within the database and are used to enable the implementation of
  access control and flow control policies, reflect special dissemination,
  handling or distribution instructions, or support other aspects of the
  information security policy.
  One example includes marking data as classified or FOUO. These security
  labels may be assigned manually or during data processing, but, either way,
  it is imperative these assignments are maintained while the data is in storage.
  If the security labels are lost when the data is stored, there is the risk of
  a data compromise.

```
New:
```
Without the association of security labels to information, there is no basis for PostgreSQL to make security-related access-control decisions.

Security labels are abstractions representing the basic properties or characteristics of an entity (e.g., subjects and objects) with respect to safeguarding information. 

These labels are typically associated with internal data structures (e.g., tables, rows) within the database and are used to enable the implementation of access control and flow control policies, reflect special dissemination, handling or distribution instructions, or support other aspects of the information security policy. 

One example includes marking data as classified or FOUO. These security labels may be assigned manually or during data processing, but, either way, it is imperative these assignments are maintained while the data is in storage. If the security labels are lost when the data is stored, there is the risk of a data compromise.

```
---
V-214059:
Old:
```
Database management includes the ability to control the number of users
  and user sessions utilizing PostgreSQL. Unlimited concurrent connections to
  PostgreSQL could allow a successful Denial of Service (DoS) attack by
  exhausting connection resources; and a system can also fail or be degraded by
  an overload of legitimate users. Limiting the number of concurrent sessions
  per user is helpful in reducing these risks.
  This requirement addresses concurrent session control for a single account.
  It does not address concurrent sessions by a single user via multiple system
  accounts; and it does not deal with the total number of sessions across all
  accounts.
  The capability to limit the number of concurrent sessions per user must be
  configured in or added to PostgreSQL (for example, by use of a logon trigger),
  when this is technically feasible. Note that it is not sufficient to limit
  sessions via a web server or application server alone, because legitimate
  users and adversaries can potentially connect to PostgreSQL by other means.
  The organization will need to define the maximum number of concurrent sessions
  by account type, by account, or a combination thereof. In deciding on the
  appropriate number, it is important to consider the work requirements of the
  various types of users. For example, 2 might be an acceptable limit for
  general users accessing the database via an application; but 10 might be too
  few for a database administrator using a database management GUI tool, where
  each query tab and navigation pane may count as a separate session.
  (Sessions may also be referred to as connections or logons, which for the
  purposes of this requirement are synonyms..

```
New:
```
Database management includes the ability to control the number of users and user sessions utilizing PostgreSQL. Unlimited concurrent connections to PostgreSQL could allow a successful Denial of Service (DoS) attack by exhausting connection resources; and a system can also fail or be degraded by an overload of legitimate users. Limiting the number of concurrent sessions per user is helpful in reducing these risks.

This requirement addresses concurrent session control for a single account. It does not address concurrent sessions by a single user via multiple system accounts; and it does not deal with the total number of sessions across all accounts.

The capability to limit the number of concurrent sessions per user must be configured in or added to PostgreSQL (for example, by use of a logon trigger), when this is technically feasible. Note that it is not sufficient to limit sessions via a web server or application server alone, because legitimate users and adversaries can potentially connect to PostgreSQL by other means.

The organization will need to define the maximum number of concurrent sessions by account type, by account, or a combination thereof. In deciding on the appropriate number, it is important to consider the work requirements of the various types of users. For example, 2 might be an acceptable limit for general users accessing the database via an application; but 10 might be too few for a database administrator using a database management GUI tool, where each query tab and navigation pane may count as a separate session.

(Sessions may also be referred to as connections or logons, which for the purposes of this requirement are synonyms.)

```
---
V-214060:
Old:
```
If PostgreSQL were to allow any user to make changes to database
          structure or logic, those changes might be implemented without
          undergoing the appropriate testing and approvals that are part of a
          robust change management process.

          Accordingly, only qualified and authorized individuals must be allowed
          to obtain access to information system components for purposes of
          initiating changes, including upgrades and modifications.

          Unmanaged changes that occur to the database software libraries or
          configuration can lead to unauthorized or compromised installations.

```
New:
```
If PostgreSQL were to allow any user to make changes to database structure or logic, those changes might be implemented without undergoing the appropriate testing and approvals that are part of a robust change management process.

Accordingly, only qualified and authorized individuals must be allowed to obtain access to information system components for purposes of initiating changes, including upgrades and modifications.

Unmanaged changes that occur to the database software libraries or configuration can lead to unauthorized or compromised installations.

```
---
V-214061:
Old:
```
Non-organizational users include all information system users other
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
  organizations, and the Nation.

```
New:
```
Non-organizational users include all information system users other than organizational users, which includes organizational employees or individuals the organization deems to have equivalent status of employees (e.g., contractors, guest researchers, individuals from allied nations). 

Non-organizational users must be uniquely identified and authenticated for all accesses other than those accesses explicitly identified and documented by the organization when related to the use of anonymous access, such as accessing a web server. 

Accordingly, a risk assessment is used in determining the authentication needs of the organization. 

Scalability, practicality, and security are simultaneously considered in balancing the need to ensure ease of use for access to federal information and information systems with the need to protect and adequately mitigate risk to organizational operations, organizational assets, individuals, other organizations, and the Nation.

```
---
V-214062:
Old:
```
Without the association of security labels to information, there is no
  basis for PostgreSQL to make security-related access-control decisions.
  Security labels are abstractions representing the basic properties or
  characteristics of an entity (e.g., subjects and objects) with respect to
  safeguarding information.
  These labels are typically associated with internal data structures (e.g.,
  tables, rows) within the database and are used to enable the implementation of
  access control and flow control policies, reflect special dissemination,
  handling or distribution instructions, or support other aspects of the
  information security policy.
  One example includes marking data as classified or FOUO. These security labels
  may be assigned manually or during data processing, but, either way, it is
  imperative these assignments are maintained while the data is in storage. If
  the security labels are lost when the data is stored, there is the risk of a
  data compromise.

```
New:
```
Without the association of security labels to information, there is no basis for PostgreSQL to make security-related access-control decisions.

Security labels are abstractions representing the basic properties or characteristics of an entity (e.g., subjects and objects) with respect to safeguarding information. 

These labels are typically associated with internal data structures (e.g., tables, rows) within the database and are used to enable the implementation of access control and flow control policies, reflect special dissemination, handling or distribution instructions, or support other aspects of the information security policy. 

One example includes marking data as classified or FOUO. These security labels may be assigned manually or during data processing, but, either way, it is imperative these assignments are maintained while the data is in storage. If the security labels are lost when the data is stored, there is the risk of a data compromise.

```
---
V-214063:
Old:
```
Invalid user input occurs when a user inserts data or characters into
  an application's data entry fields and the application is unprepared to
  process that data. This results in unanticipated application behavior,
  potentially leading to an application or information system compromise.
  Invalid user input is one of the primary methods employed when attempting to
  compromise an application.
  With respect to database management systems, one class of threat is known as
  SQL Injection, or more generally, code injection. It takes advantage of the
  dynamic execution capabilities of various programming languages, including
  dialects of SQL. Potentially, the attacker can gain unauthorized access to
  data, including security settings, and severely corrupt or destroy the database.
  Even when no such hijacking takes place, invalid input that gets recorded in
  the database, whether accidental or malicious, reduces the reliability and
  usability of the system. Available protections include data types, referential
  constraints, uniqueness constraints, range checking, and application-specific
  logic. Application-specific logic can be implemented within the database in
  stored procedures and triggers, where appropriate.
  This calls for inspection of application source code, which will require
  collaboration with the application developers. It is recognized that in many
  cases, the database administrator (DBA) is organizationally separate from the
  application developers, and may have limited, if any, access to source code.
  Nevertheless, protections of this type are so important to the secure
  operation of databases that they must not be ignored. At a minimum, the DBA
  must attempt to obtain assurances from the development organization that this
  issue has been addressed, and must document what has been discovered.

```
New:
```
Invalid user input occurs when a user inserts data or characters into an application's data entry fields and the application is unprepared to process that data. This results in unanticipated application behavior, potentially leading to an application or information system compromise. Invalid user input is one of the primary methods employed when attempting to compromise an application.

With respect to database management systems, one class of threat is known as SQL Injection, or more generally, code injection. It takes advantage of the dynamic execution capabilities of various programming languages, including dialects of SQL. Potentially, the attacker can gain unauthorized access to data, including security settings, and severely corrupt or destroy the database.

Even when no such hijacking takes place, invalid input that gets recorded in the database, whether accidental or malicious, reduces the reliability and usability of the system. Available protections include data types, referential constraints, uniqueness constraints, range checking, and application-specific logic. Application-specific logic can be implemented within the database in stored procedures and triggers, where appropriate.

This calls for inspection of application source code, which will require collaboration with the application developers. It is recognized that in many cases, the database administrator (DBA) is organizationally separate from the application developers, and may have limited, if any, access to source code. Nevertheless, protections of this type are so important to the secure operation of databases that they must not be ignored. At a minimum, the DBA must attempt to obtain assurances from the development organization that this issue has been addressed, and must document what has been discovered.

```
---
V-214064:
Old:
```
With respect to database management systems, one class of threat is
  known as SQL Injection, or more generally, code injection. It takes advantage
  of the dynamic execution capabilities of various programming languages,
  including dialects of SQL. In such cases, the attacker deduces the manner in
  which SQL statements are being processed, either from inside knowledge or by
  observing system behavior in response to invalid inputs. When the attacker
  identifies scenarios where SQL queries are being assembled by application code
  (which may be within the database or separate from it) and executed
  dynamically, the attacker is then able to craft input strings that subvert the
  intent of the query. Potentially, the attacker can gain unauthorized access to
  data, including security settings, and severely corrupt or destroy the database.
  The principal protection against code injection is not to use dynamic execution
  except where it provides necessary functionality that cannot be utilized
  otherwise. Use strongly typed data items rather than general-purpose strings
  as input parameters to task-specific, pre-compiled stored procedures and f
  unctions (and triggers).
  This calls for inspection of application source code, which will require
  collaboration with the application developers. It is recognized that in many
  cases, the database administrator (DBA) is organizationally separate from the
  application developers, and may have limited, if any, access to source code.
  Nevertheless, protections of this type are so important to the secure operation
  of databases that they must not be ignored. At a minimum, the DBA must attempt
  to obtain assurances from the development organization that this issue has
  been addressed, and must document what has been discovered.

```
New:
```
With respect to database management systems, one class of threat is known as SQL Injection, or more generally, code injection. It takes advantage of the dynamic execution capabilities of various programming languages, including dialects of SQL. In such cases, the attacker deduces the manner in which SQL statements are being processed, either from inside knowledge or by observing system behavior in response to invalid inputs. When the attacker identifies scenarios where SQL queries are being assembled by application code (which may be within the database or separate from it) and executed dynamically, the attacker is then able to craft input strings that subvert the intent of the query. Potentially, the attacker can gain unauthorized access to data, including security settings, and severely corrupt or destroy the database.

The principal protection against code injection is not to use dynamic execution except where it provides necessary functionality that cannot be utilized otherwise. Use strongly typed data items rather than general-purpose strings as input parameters to task-specific, pre-compiled stored procedures and functions (and triggers).

This calls for inspection of application source code, which will require collaboration with the application developers. It is recognized that in many cases, the database administrator (DBA) is organizationally separate from the application developers, and may have limited, if any, access to source code. Nevertheless, protections of this type are so important to the secure operation of databases that they must not be ignored. At a minimum, the DBA must attempt to obtain assurances from the development organization that this issue has been addressed, and must document what has been discovered.

```
---
V-214065:
Old:
```
With respect to database management systems, one class of threat is
  known as SQL Injection, or more generally, code injection. It takes advantage
  of the dynamic execution capabilities of various programming languages,
  including dialects of SQL. In such cases, the attacker deduces the manner in
  which SQL statements are being processed, either from inside knowledge or by
  observing system behavior in response to invalid inputs. When the attacker
  identifies scenarios where SQL queries are being assembled by application code
  (which may be within the database or separate from it) and executed dynamically,
  the attacker is then able to craft input strings that subvert the intent of the
  query. Potentially, the attacker can gain unauthorized access to data,
  including security settings, and severely corrupt or destroy the database.
  The principal protection against code injection is not to use dynamic execution
  except where it provides necessary functionality that cannot be utilized
  otherwise. Use strongly typed data items rather than general-purpose strings
  as input parameters to task-specific, pre-compiled stored procedures and
  functions (and triggers).When dynamic execution is necessary, ways to mitigate
  the risk include the following, which should be implemented both in the
  on-screen application and at the database level, in the stored procedures:
  -- Allow strings as input only when necessary.
  -- Rely on data typing to validate numbers, dates, etc. Do not accept invalid
  values. If substituting other values for them, think carefully about whether
  this could be subverted.
  -- Limit the size of input strings to what is truly necessary.
  -- If single quotes/apostrophes, double quotes, semicolons, equals signs,
  angle brackets, or square brackets will never be valid as input, reject them.
  -- If comment markers will never be valid as input, reject them. In SQL, these
  are -- or /* */
  -- If HTML and XML tags, entities, comments, etc., will never be valid,
  reject them.
  -- If wildcards are present, reject them unless truly necessary. In SQL these
  are the underscore and the percentage sign, and the word ESCAPE is also a clue
  that wildcards are in use.
  -- If SQL key words, such as SELECT, INSERT, UPDATE, DELETE, CREATE, ALTER,
  DROP, ESCAPE, UNION, GRANT, REVOKE, DENY, MODIFY will never be valid, reject
  them. Use case-insensitive comparisons when searching for these. Bear in mind
  that some of these words, particularly Grant (as a person's name), could also
  be valid input.
  -- If there are range limits on the values that may be entered, enforce those
  limits.
  -- Institute procedures for inspection of programs for correct use of dynamic
  coding, by a party other than the developer.
  -- Conduct rigorous testing of program modules that use dynamic coding,
  searching for ways to subvert the intended use.
  -- Record the inspection and testing in the system documentation.
  -- Bear in mind that all this applies not only to screen input, but also to
  the values in an incoming message to a web service or to a stored procedure
  called by a software component that has not itself been hardened in these ways.
  Not only can the caller be subject to such vulnerabilities; it may itself be
  the attacker.

```
New:
```
With respect to database management systems, one class of threat is known as SQL Injection, or more generally, code injection. It takes advantage of the dynamic execution capabilities of various programming languages, including dialects of SQL. In such cases, the attacker deduces the manner in which SQL statements are being processed, either from inside knowledge or by observing system behavior in response to invalid inputs. When the attacker identifies scenarios where SQL queries are being assembled by application code (which may be within the database or separate from it) and executed dynamically, the attacker is then able to craft input strings that subvert the intent of the query. Potentially, the attacker can gain unauthorized access to data, including security settings, and severely corrupt or destroy the database.

The principal protection against code injection is not to use dynamic execution except where it provides necessary functionality that cannot be utilized otherwise. Use strongly typed data items rather than general-purpose strings as input parameters to task-specific, pre-compiled stored procedures and functions (and triggers).

When dynamic execution is necessary, ways to mitigate the risk include the following, which should be implemented both in the on-screen application and at the database level, in the stored procedures:
-- Allow strings as input only when necessary. 
-- Rely on data typing to validate numbers, dates, etc. Do not accept invalid values. If substituting other values for them, think carefully about whether this could be subverted.
-- Limit the size of input strings to what is truly necessary.
-- If single quotes/apostrophes, double quotes, semicolons, equals signs, angle brackets, or square brackets will never be valid as input, reject them.
-- If comment markers will never be valid as input, reject them. In SQL, these are -- or /* */ 
-- If HTML and XML tags, entities, comments, etc., will never be valid, reject them.
-- If wildcards are present, reject them unless truly necessary. In SQL these are the underscore and the percentage sign, and the word ESCAPE is also a clue that wildcards are in use.
-- If SQL key words, such as SELECT, INSERT, UPDATE, DELETE, CREATE, ALTER, DROP, ESCAPE, UNION, GRANT, REVOKE, DENY, MODIFY will never be valid, reject them. Use case-insensitive comparisons when searching for these. Bear in mind that some of these words, particularly Grant (as a person's name), could also be valid input. 
-- If there are range limits on the values that may be entered, enforce those limits.
-- Institute procedures for inspection of programs for correct use of dynamic coding, by a party other than the developer.
-- Conduct rigorous testing of program modules that use dynamic coding, searching for ways to subvert the intended use.
-- Record the inspection and testing in the system documentation.
-- Bear in mind that all this applies not only to screen input, but also to the values in an incoming message to a web service or to a stored procedure called by a software component that has not itself been hardened in these ways. Not only can the caller be subject to such vulnerabilities; it may itself be the attacker.

```
---
V-214066:
Old:
```
In order to ensure sufficient storage capacity for the audit logs,
  PostgreSQL must be able to allocate audit record storage capacity. Although
  another requirement (SRG-APP-000515-DB-000318) mandates that audit data be
  off-loaded to a centralized log management system, it remains necessary to
  provide space on the database server to serve as a buffer against outages and
  capacity limits of the off-loading mechanism.
  The task of allocating audit record storage capacity is usually performed
  during initial installation of PostgreSQL and is closely associated with the
  DBA and system administrator roles. The DBA or system administrator will
  usually coordinate the allocation of physical drive space with the application
  owner/installer and the application will prompt the installer to provide the
  capacity information, the physical location of the disk, or both.
  In determining the capacity requirements, consider such factors as: total
  number of users; expected number of concurrent users during busy periods;
  number and type of events being monitored; types and amounts of data being
  captured; the frequency/speed with which audit records are off-loaded to the
  central log management system; and any limitations that exist on PostgreSQL's
  ability to reuse the space formerly occupied by off-loaded records.

```
New:
```
In order to ensure sufficient storage capacity for the audit logs, PostgreSQL must be able to allocate audit record storage capacity. Although another requirement (SRG-APP-000515-DB-000318) mandates that audit data be off-loaded to a centralized log management system, it remains necessary to provide space on the database server to serve as a buffer against outages and capacity limits of the off-loading mechanism.

The task of allocating audit record storage capacity is usually performed during initial installation of PostgreSQL and is closely associated with the DBA and system administrator roles. The DBA or system administrator will usually coordinate the allocation of physical drive space with the application owner/installer and the application will prompt the installer to provide the capacity information, the physical location of the disk, or both.

In determining the capacity requirements, consider such factors as: total number of users; expected number of concurrent users during busy periods; number and type of events being monitored; types and amounts of data being captured; the frequency/speed with which audit records are off-loaded to the central log management system; and any limitations that exist on PostgreSQL's ability to reuse the space formerly occupied by off-loaded records.

```
---
V-214067:
Old:
```
Discretionary Access Control (DAC) is based on the notion that
  individual users are "owners" of objects and therefore have discretion over
  who should be authorized to access the object and in which mode (e.g., read or
  write). Ownership is usually acquired as a consequence of creating the object
  or via specified ownership assignment. DAC allows the owner to determine who
  will have access to objects they control. An example of DAC includes
  user-controlled table permissions.
  When discretionary access control policies are implemented, subjects are not
  constrained with regard to what actions they can take with information for
  which they have already been granted access. Thus, subjects that have been
  granted access to information are not prevented from passing (i.e., the
  subjects have the discretion to pass) the information to other subjects or
  objects.
  A subject that is constrained in its operation by Mandatory Access Control
  policies is still able to operate under the less rigorous constraints of this
  requirement. Thus, while Mandatory Access Control imposes constraints
  preventing a subject from passing information to another subject operating at
  a different sensitivity level, this requirement permits the subject to pass
  the information to any subject at the same sensitivity level.
  The policy is bounded by the information system boundary. Once the information
  is passed outside of the control of the information system, additional means
  may be required to ensure the constraints remain in effect. While the older,
  more traditional definitions of discretionary access control require i
  dentity-based access control, that limitation is not required for this use of
  discretionary access control.

```
New:
```
Discretionary Access Control (DAC) is based on the notion that individual users are "owners" of objects and therefore have discretion over who should be authorized to access the object and in which mode (e.g., read or write). Ownership is usually acquired as a consequence of creating the object or via specified ownership assignment. DAC allows the owner to determine who will have access to objects they control. An example of DAC includes user-controlled table permissions.

When discretionary access control policies are implemented, subjects are not constrained with regard to what actions they can take with information for which they have already been granted access. Thus, subjects that have been granted access to information are not prevented from passing (i.e., the subjects have the discretion to pass) the information to other subjects or objects. 

A subject that is constrained in its operation by Mandatory Access Control policies is still able to operate under the less rigorous constraints of this requirement. Thus, while Mandatory Access Control imposes constraints preventing a subject from passing information to another subject operating at a different sensitivity level, this requirement permits the subject to pass the information to any subject at the same sensitivity level. 

The policy is bounded by the information system boundary. Once the information is passed outside of the control of the information system, additional means may be required to ensure the constraints remain in effect. While the older, more traditional definitions of discretionary access control require identity-based access control, that limitation is not required for this use of discretionary access control.

```
---
V-214069:
Old:
```
If time stamps are not consistently applied and there is no common time
  reference, it is difficult to perform forensic analysis.
  Time stamps generated by PostgreSQL must include date and time. Time is
  commonly expressed in Coordinated Universal Time (UTC), a modern continuation
  of Greenwich Mean Time (GMT), or local time with an offset from UTC.

```
New:
```
If time stamps are not consistently applied and there is no common time reference, it is difficult to perform forensic analysis.

Time stamps generated by PostgreSQL must include date and time. Time is commonly expressed in Coordinated Universal Time (UTC), a modern continuation of Greenwich Mean Time (GMT), or local time with an offset from UTC.

```
---
V-214071:
Old:
```
Without the capability to restrict which roles and individuals can
  select which events are audited, unauthorized personnel may be able to prevent
  or interfere with the auditing of critical events.

  Suppression of auditing could permit an adversary to evade detection.

  Misconfigured audits can degrade the system's performance by overwhelming the
  audit log. Misconfigured audits may also make it more difficult to establish,
  correlate, and investigate the events relating to an incident or identify those
  responsible for one.

```
New:
```
Without the capability to restrict which roles and individuals can select which events are audited, unauthorized personnel may be able to prevent or interfere with the auditing of critical events.

Suppression of auditing could permit an adversary to evade detection.

Misconfigured audits can degrade the system's performance by overwhelming the audit log. Misconfigured audits may also make it more difficult to establish, correlate, and investigate the events relating to an incident or identify those responsible for one.

```
---
V-214072:
Old:
```
It is critical for the appropriate personnel to be aware if a system
  is at risk of failing to process audit logs as required. Without a real-time
  alert, security personnel may be unaware of an impending failure of the audit
  capability, and system operation may be adversely affected.
  The appropriate support staff include, at a minimum, the ISSO and the DBA/SA.
  Alerts provide organizations with urgent messages. Real-time alerts provide
  these messages immediately (i.e., the time from event detection to alert o
  ccurs in seconds or less).
  The necessary monitoring and alerts may be implemented using features of
  PostgreSQL, the OS, third-party software, custom code, or a combination of
  these. The term "the system" is used to encompass all of these.

```
New:
```
It is critical for the appropriate personnel to be aware if a system is at risk of failing to process audit logs as required. Without a real-time alert, security personnel may be unaware of an impending failure of the audit capability, and system operation may be adversely affected. 

The appropriate support staff include, at a minimum, the ISSO and the DBA/SA.

A failure of database auditing will result in either the database continuing to function without auditing or in a complete halt to database operations. When audit processing fails, appropriate personnel must be alerted immediately to avoid further downtime or unaudited transactions

Alerts provide organizations with urgent messages. Real-time alerts provide these messages immediately (i.e., the time from event detection to alert occurs in seconds or less).

The necessary monitoring and alerts may be implemented using features of PostgreSQL, the OS, third-party software, custom code, or a combination of these. The term "the system" is used to encompass all of these.

```
---
V-214073:
Old:
```
Information can be either unintentionally or maliciously disclosed or
  modified during reception, including, for example, during aggregation, at
  protocol transformation points, and during packing/unpacking. These
  unauthorized disclosures or modifications compromise the confidentiality or
  integrity of the information.
  This requirement applies only to those applications that are either
  distributed or can allow access to data nonlocally. Use of this requirement
  will be limited to situations where the data owner has a strict requirement
  for ensuring data integrity and confidentiality is maintained at every step of
  the data transfer and handling process.
  When receiving data, PostgreSQL, associated applications, and infrastructure
  must leverage protection mechanisms.
  PostgreSQL uses OpenSSL SSLv23_method() in fe-secure-openssl.c; while the name
  is misleading, this function enables only TLS encryption methods, not SSL.
  See OpenSSL: https://mta.openssl.org/pipermail/openssl-dev/2015-May/001449.htm.

```
New:
```
Information can be either unintentionally or maliciously disclosed or modified during reception, including, for example, during aggregation, at protocol transformation points, and during packing/unpacking. These unauthorized disclosures or modifications compromise the confidentiality or integrity of the information.

This requirement applies only to those applications that are either distributed or can allow access to data nonlocally. Use of this requirement will be limited to situations where the data owner has a strict requirement for ensuring data integrity and confidentiality is maintained at every step of the data transfer and handling process. 

When receiving data, PostgreSQL, associated applications, and infrastructure must leverage protection mechanisms.

For more information on configuring PostgreSQL to use SSL, consult the following documentation:
https://www.postgresql.org/docs/current/ssl-tcp.html

Postgres provides native support for using SSL connections to encrypt client/server communications.  To enable the use of SSL, the postgres “ssl” configuration parameter must be set to “on” and the database instance needs to be configured to use a valid server certificate and private key installed on the server.  With SSL enabled, connections made to the database server will default to being encrypted.  However, it is possible for clients to override the default and attempt to establish an unencrypted connection. To prevent connections made from non-local hosts from being unencrypted, the postgres host-based authentication settings should be configured to only allow hostssl (i.e., encrypted) connections.  The hostssl connections can be further configured to require that the client present a valid (trusted) SSL certificate for a connection.

```
---
V-214074:
Old:
```
Within the database, object ownership implies full privileges to the
  owned object, including the privilege to assign access to the owned objects
  to other subjects. Database functions and procedures can be coded using
  definer's rights. This allows anyone who utilizes the object to perform the
  actions if they were the owner. If not properly managed, this can lead to
  privileged actions being taken by unauthorized individuals.
  Conversely, if critical tables or other objects rely on unauthorized owner
  accounts, these objects may be lost when an account is removed.

```
New:
```
Within the database, object ownership implies full privileges to the owned object, including the privilege to assign access to the owned objects to other subjects. Database functions and procedures can be coded using definer's rights. This allows anyone who utilizes the object to perform the actions if they were the owner. If not properly managed, this can lead to privileged actions being taken by unauthorized individuals.

Conversely, if critical tables or other objects rely on unauthorized owner accounts, these objects may be lost when an account is removed.

```
---
V-214075:
Old:
```
When dealing with change control issues, it should be noted any changes
  to the hardware, software, and/or firmware components of the information
  system and/or application can have significant effects on the overall security
  of the system.
  If the system were to allow any user to make changes to software libraries,
  those changes might be implemented without undergoing the appropriate testing
  and approvals that are part of a robust change management process.
  Accordingly, only qualified and authorized individuals must be allowed access
  to information system components for purposes of initiating changes, including
  upgrades and modifications.
  DBA and other privileged administrative or application owner accounts are
  granted privileges that allow actions that can have a great impact on database
  security and operation. It is especially important to grant privileged access
  to only those persons who are qualified and authorized to use them.

```
New:
```
When dealing with change control issues, it should be noted any changes to the hardware, software, and/or firmware components of the information system and/or application can have significant effects on the overall security of the system. 

If the system were to allow any user to make changes to software libraries, those changes might be implemented without undergoing the appropriate testing and approvals that are part of a robust change management process.

Accordingly, only qualified and authorized individuals must be allowed access to information system components for purposes of initiating changes, including upgrades and modifications.

DBA and other privileged administrative or application owner accounts are granted privileges that allow actions that can have a great impact on database security and operation. It is especially important to grant privileged access to only those persons who are qualified and authorized to use them.

```
---
V-214076:
Old:
```
When dealing with change control issues, it should be noted, any
  changes to the hardware, software, and/or firmware components of the
  information system and/or application can potentially have significant effects
  on the overall security of the system.
  Multiple applications can provide a cumulative negative effect. A
  vulnerability and subsequent exploit to one application can lead to an exploit
  of other applications sharing the same security context. For example, an
  exploit to a web server process that leads to unauthorized administrative
  access to host system directories can most likely lead to a compromise of all
  applications hosted by the same system. Database software not installed using
  dedicated directories both threatens and is threatened by other hosted
  applications. Access controls defined for one application may by default
  provide access to the other application's database objects or directories. Any
  method that provides any level of separation of security context assists in
  the protection between applications.

```
New:
```
When dealing with change control issues, it should be noted, any changes to the hardware, software, and/or firmware components of the information system and/or application can potentially have significant effects on the overall security of the system.

Multiple applications can provide a cumulative negative effect. A vulnerability and subsequent exploit to one application can lead to an exploit of other applications sharing the same security context. For example, an exploit to a web server process that leads to unauthorized administrative access to host system directories can most likely lead to a compromise of all applications hosted by the same system. Database software not installed using dedicated directories both threatens and is threatened by other hosted applications. Access controls defined for one application may by default provide access to the other application's database objects or directories. Any method that provides any level of separation of security context assists in the protection between applications.

```
---
V-214077:
Old:
```
Information system auditing capability is critical for accurate
  forensic analysis. Reconstruction of harmful events or forensic analysis is
  not possible if audit records do not contain enough information. To support
  analysis, some types of events will need information to be logged that
  exceeds the basic requirements of event type, time stamps, location, source,
  outcome, and user identity. If additional information is not available, it
  could negatively impact forensic investigations into user actions or other
  malicious events.
  The organization must determine what additional information is required for
  complete analysis of the audited events. The additional information required
  is dependent on the type of information (e.g., sensitivity of the data and
  the environment within which it resides). At a minimum, the organization
  must employ either full-text recording of privileged commands or the
  individual identities of users of shared accounts, or both. The organization
  must maintain audit trails in sufficient detail to reconstruct events to
  determine the cause and impact of compromise.
  Examples of detailed information the organization may require in audit
  records are full-text recording of privileged commands or the individual
  identities of shared account users.

```
New:
```
Information system auditing capability is critical for accurate forensic analysis. Reconstruction of harmful events or forensic analysis is not possible if audit records do not contain enough information. To support analysis, some types of events will need information to be logged that exceeds the basic requirements of event type, time stamps, location, source, outcome, and user identity. If additional information is not available, it could negatively impact forensic investigations into user actions or other malicious events.

The organization must determine what additional information is required for complete analysis of the audited events. The additional information required is dependent on the type of information (e.g., sensitivity of the data and the environment within which it resides). At a minimum, the organization must employ either full-text recording of privileged commands or the individual identities of users of shared accounts, or both. The organization must maintain audit trails in sufficient detail to reconstruct events to determine the cause and impact of compromise. 

Examples of detailed information the organization may require in audit records are full-text recording of privileged commands or the individual identities of shared account users.

```
---
V-214078:
Old:
```
In certain situations, to provide required functionality, PostgreSQL
  needs to execute internal logic (stored procedures, functions, triggers, etc.)
  and/or external code modules with elevated privileges. However, if the
  privileges required for execution are at a higher level than the privileges
  assigned to organizational users invoking the functionality
  applications/programs, those users are indirectly provided with greater
  privileges than assigned by organizations.
  Privilege elevation must be utilized only where necessary and protected
  from misuse.
  This calls for inspection of application source code, which will require
  collaboration with the application developers. It is recognized that in
  many cases, the database administrator (DBA) is organizationally separate
  from the application developers, and may have limited, if any, access to
  source code. Nevertheless, protections of this type are so important to the
  secure operation of databases that they must not be ignored. At a minimum,
  the DBA must attempt to obtain assurances from the development organization
  that this issue has been addressed, and must document what has been discovered.

```
New:
```
In certain situations, to provide required functionality, PostgreSQL needs to execute internal logic (stored procedures, functions, triggers, etc.) and/or external code modules with elevated privileges. However, if the privileges required for execution are at a higher level than the privileges assigned to organizational users invoking the functionality applications/programs, those users are indirectly provided with greater privileges than assigned by organizations.

Privilege elevation must be utilized only where necessary and protected from misuse.

This calls for inspection of application source code, which will require collaboration with the application developers. It is recognized that in many cases, the database administrator (DBA) is organizationally separate from the application developers, and may have limited, if any, access to source code. Nevertheless, protections of this type are so important to the secure operation of databases that they must not be ignored. At a minimum, the DBA must attempt to obtain assurances from the development organization that this issue has been addressed, and must document what has been discovered.

```
---
V-214080:
Old:
```
Without the ability to centrally manage the content captured in the
  audit records, identification, troubleshooting, and correlation of suspicious
  behavior would be difficult and could lead to a delayed or incomplete analysis
  of an ongoing attack.
  The content captured in audit records must be managed from a central location
  (necessitating automation). Centralized management of audit records and logs
  provides for efficiency in maintenance and management of records, as well as
  the backup and archiving of those records.
  PostgreSQL may write audit records to database tables, to files in the file
  system, to other kinds of local repository, or directly to a centralized log
  management system. Whatever the method used, it must be compatible with
  off-loading the records to the centralized system.

```
New:
```
Without the ability to centrally manage the content captured in the audit records, identification, troubleshooting, and correlation of suspicious behavior would be difficult and could lead to a delayed or incomplete analysis of an ongoing attack.

The content captured in audit records must be managed from a central location (necessitating automation). Centralized management of audit records and logs provides for efficiency in maintenance and management of records, as well as the backup and archiving of those records. 

PostgreSQL may write audit records to database tables, to files in the file system, to other kinds of local repository, or directly to a centralized log management system. Whatever the method used, it must be compatible with off-loading the records to the centralized system.

```
---
V-214081:
Old:
```
An isolation boundary provides access control and protects the integrity
  of the hardware, software, and firmware that perform security functions.
  Security functions are the hardware, software, and/or firmware of the
  information system responsible for enforcing the system security policy and
  supporting the isolation of code and data on which the protection is based.
  Developers and implementers can increase the assurance in security functions
  by employing well-defined security policy models; structured, disciplined, and
  rigorous hardware and software development techniques; and sound system/security
  engineering principles.
  Database Management Systems typically separate security functionality from
  non-security functionality via separate databases or schemas. Database objects
  or code implementing security functionality should not be commingled with
  objects or code implementing application logic. When security and non-security
  functionality are commingled, users who have access to non-security
  functionality may be able to access security functionality.

```
New:
```
An isolation boundary provides access control and protects the integrity of the hardware, software, and firmware that perform security functions.

Security functions are the hardware, software, and/or firmware of the information system responsible for enforcing the system security policy and supporting the isolation of code and data on which the protection is based.

Developers and implementers can increase the assurance in security functions by employing well-defined security policy models; structured, disciplined, and rigorous hardware and software development techniques; and sound system/security engineering principles.

Database Management Systems typically separate security functionality from non-security functionality via separate databases or schemas. Database objects or code implementing security functionality should not be commingled with objects or code implementing application logic. When security and non-security functionality are commingled, users who have access to non-security functionality may be able to access security functionality.

```
---
V-214084:
Old:
```
Previous versions of PostgreSQL components that are not removed from
  the information system after updates have been installed may be exploited
  by adversaries.
  Some PostgreSQL installation tools may remove older versions of software
  automatically from the information system. In other cases, manual review and
  removal will be required. In planning installations and upgrades,
  organizations must include steps (automated, manual, or both) to identify and
  remove the outdated modules.
  A transition period may be necessary when both the old and the new software
  are required. This should be taken into account in the planning.

```
New:
```
Previous versions of PostgreSQL components that are not removed from the information system after updates have been installed may be exploited by adversaries.

Some PostgreSQL installation tools may remove older versions of software automatically from the information system. In other cases, manual review and removal will be required. In planning installations and upgrades, organizations must include steps (automated, manual, or both) to identify and remove the outdated modules.

A transition period may be necessary when both the old and the new software are required. This should be taken into account in the planning.

```
---
V-214085:
Old:
```
Changes in categorized information must be tracked. Without an audit
  trail, unauthorized access to protected data could go undetected.
  For detailed information on categorizing information, refer to FIPS
  Publication 199, Standards for Security Categorization of Federal Information
  and Information Systems, and FIPS Publication 200, Minimum Security
  Requirements for Federal Information and Information Systems.

```
New:
```
Changes in categorized information must be tracked. Without an audit trail, unauthorized access to protected data could go undetected.

For detailed information on categorizing information, refer to FIPS Publication 199, Standards for Security Categorization of Federal Information and Information Systems, and FIPS Publication 200, Minimum Security Requirements for Federal Information and Information Systems.

```
---
V-214091:
Old:
```
Changes in categorized information must be tracked. Without an audit
  trail, unauthorized access to protected data could go undetected.
  To aid in diagnosis, it is necessary to keep track of failed attempts in
  addition to the successful ones.
  For detailed information on categorizing information, refer to FIPS Publication
  199, Standards for Security Categorization of Federal Information and
  Information Systems, and FIPS Publication 200, Minimum Security Requirements
  for Federal Information and Information Systems.

```
New:
```
Changes in categorized information must be tracked. Without an audit trail, unauthorized access to protected data could go undetected.

To aid in diagnosis, it is necessary to keep track of failed attempts in addition to the successful ones.

For detailed information on categorizing information, refer to FIPS Publication 199, Standards for Security Categorization of Federal Information and Information Systems, and FIPS Publication 200, Minimum Security Requirements for Federal Information and Information Systems.

```
---
V-214097:
Old:
```
Changes in categorized information must be tracked. Without an audit
  trail, unauthorized access to protected data could go undetected.
  To aid in diagnosis, it is necessary to keep track of failed attempts in
  addition to the successful ones.
  For detailed information on categorizing information, refer to FIPS
  Publication 199, Standards for Security Categorization of Federal Information
  and Information Systems, and FIPS Publication 200, Minimum Security
  Requirements for Federal Information and Information Systems.

```
New:
```
Changes in categorized information must be tracked. Without an audit trail, unauthorized access to protected data could go undetected.

To aid in diagnosis, it is necessary to keep track of failed attempts in addition to the successful ones.

For detailed information on categorizing information, refer to FIPS Publication 199, Standards for Security Categorization of Federal Information and Information Systems, and FIPS Publication 200, Minimum Security Requirements for Federal Information and Information Systems.

```
---
V-214099:
Old:
```
Without tracking privileged activity, it would be difficult to
  establish, correlate, and investigate the events relating to an incident or
  identify those responsible for one.
  System documentation should include a definition of the functionality
  considered privileged.
  A privileged function in this context is any operation that modifies the
  structure of the database, its built-in logic, or its security settings.
  This would include all Data Definition Language (DDL) statements and all
  security-related statements. In an SQL environment, it encompasses, but is not
  necessarily limited to:
  CREATE
  ALTER
  DROP
  GRANT
  REVOKE
  There may also be Data Manipulation Language (DML) statements that, subject to
  context, should be regarded as privileged. Possible examples in SQL include:
  TRUNCATE TABLE;DELETE, or DELETE affecting more than n rows, for some n, or
  DELETE without a WHERE clause;
  UPDATE or UPDATE affecting more than n rows, for some n, or UPDATE without a
  WHERE clause;
  any SELECT, INSERT, UPDATE, or DELETE to an application-defined security table
  executed by other than a security principal.
  Depending on the capabilities of PostgreSQL and the design of the database and
  associated applications, audit logging may be achieved by means of DBMS
  auditing features, database triggers, other mechanisms, or a combination of
  these.
  Note: That it is particularly important to audit, and tightly control, any
  action that weakens the implementation of this requirement itself, since the
  objective is to have a complete audit trail of all administrative activity.

```
New:
```
Without tracking privileged activity, it would be difficult to establish, correlate, and investigate the events relating to an incident or identify those responsible for one. 

System documentation should include a definition of the functionality considered privileged. 

A privileged function in this context is any operation that modifies the structure of the database, its built-in logic, or its security settings. This would include all Data Definition Language (DDL) statements and all security-related statements. In an SQL environment, it encompasses, but is not necessarily limited to: 

CREATE 
ALTER 
DROP 
GRANT 
REVOKE 

There may also be Data Manipulation Language (DML) statements that, subject to context, should be regarded as privileged. Possible examples in SQL include: 

TRUNCATE TABLE, DELETE, or DELETE affecting more than n rows, for some n, or DELETE without a WHERE clause.

UPDATE or UPDATE affecting more than n rows, for some n, or UPDATE without a WHERE clause.

Any SELECT, INSERT, UPDATE, or DELETE to an application-defined security table executed by other than a security principal. 

Depending on the capabilities of PostgreSQL and the design of the database and associated applications, audit logging may be achieved by means of DBMS auditing features, database triggers, other mechanisms, or a combination of these. 

Note: That it is particularly important to audit, and tightly control, any action that weakens the implementation of this requirement itself, since the objective is to have a complete audit trail of all administrative activity.

```
---
V-214100:
Old:
```
Changes in categorized information must be tracked. Without an audit
  trail, unauthorized access to protected data could go undetected.
  To aid in diagnosis, it is necessary to keep track of failed attempts in
  addition to the successful ones.
  For detailed information on categorizing information, refer to FIPS
  Publication 199, Standards for Security Categorization of Federal Information
  and Information Systems, and FIPS Publication 200, Minimum Security
  Requirements for Federal Information and Information Systems.

```
New:
```
Changes in categorized information must be tracked. Without an audit trail, unauthorized access to protected data could go undetected.

To aid in diagnosis, it is necessary to keep track of failed attempts in addition to the successful ones.

For detailed information on categorizing information, refer to FIPS Publication 199, Standards for Security Categorization of Federal Information and Information Systems, and FIPS Publication 200, Minimum Security Requirements for Federal Information and Information Systems.

```
---
V-214101:
Old:
```
Changes to the security configuration must be tracked.
  This requirement applies to situations where security data is retrieved or
  modified via data manipulation operations, as opposed to via specialized
  security functionality.
  In an SQL environment, types of access include, but are not necessarily
  limited to:
  CREATE
  SELECT
  INSERT
  UPDATE
  DELETE
  PREPARE
  EXECUTE
  ALTER
  DRO.

```
New:
```
Changes to the security configuration must be tracked.

This requirement applies to situations where security data is retrieved or modified via data manipulation operations, as opposed to via specialized security functionality.

In an SQL environment, types of access include, but are not necessarily limited to:

CREATE
SELECT
INSERT
UPDATE
DELETE
PREPARE
EXECUTE
ALTER
DROP

```
---
V-214102:
Old:
```
Changes in the permissions, privileges, and roles granted to users and
  roles must be tracked. Without an audit trail, unauthorized elevation or
  restriction of privileges could go undetected. Elevated privileges give users
  access to information and functionality that they should not have; restricted
  privileges wrongly deny access to authorized users.
  In an SQL environment, deleting permissions is typically done via the REVOKE
  command.

```
New:
```
Changes in the permissions, privileges, and roles granted to users and roles must be tracked. Without an audit trail, unauthorized elevation or restriction of privileges could go undetected. Elevated privileges give users access to information and functionality that they should not have; restricted privileges wrongly deny access to authorized users.

In an SQL environment, deleting permissions is typically done via the REVOKE command.

```
---
V-214103:
Old:
```
For completeness of forensic analysis, it is necessary to track who
  logs on to PostgreSQL.
  Concurrent connections by the same user from multiple workstations may be
  valid use of the system; or such connections may be due to improper
  circumvention of the requirement to use the CAC for authentication; or they
  may indicate unauthorized account sharing; or they may be because an account
  has been compromised.
  (If the fact of multiple, concurrent logons by a given user can be reliably
  reconstructed from the log entries for other events (logons/connections;
  voluntary and involuntary disconnections), then it is not mandatory to create
  additional log entries specifically for this..

```
New:
```
For completeness of forensic analysis, it is necessary to track who logs on to PostgreSQL.

Concurrent connections by the same user from multiple workstations may be valid use of the system; or such connections may be due to improper circumvention of the requirement to use the CAC for authentication; or they may indicate unauthorized account sharing; or they may be because an account has been compromised.

(If the fact of multiple, concurrent logons by a given user can be reliably reconstructed from the log entries for other events (logons/connections; voluntary and involuntary disconnections), then it is not mandatory to create additional log entries specifically for this.)

```
---
V-214104:
Old:
```
The removal of security objects from the database/PostgreSQL would
  seriously degrade a system's information assurance posture. If such an action
  is attempted, it must be logged.
  To aid in diagnosis, it is necessary to keep track of failed attempts in
  addition to the successful ones.

```
New:
```
The removal of security objects from the database/PostgreSQL would seriously degrade a system's information assurance posture. If such an action is attempted, it must be logged.

To aid in diagnosis, it is necessary to keep track of failed attempts in addition to the successful ones.

```
---
V-214105:
Old:
```
Changes in the permissions, privileges, and roles granted to users and
  roles must be tracked. Without an audit trail, unauthorized elevation or
  restriction of privileges could go undetected. Elevated privileges give users
  access to information and functionality that they should not have; restricted
  privileges wrongly deny access to authorized users.
  In an SQL environment, modifying permissions is typically done via the GRANT
  and REVOKE commands.

```
New:
```
Changes in the permissions, privileges, and roles granted to users and roles must be tracked. Without an audit trail, unauthorized elevation or restriction of privileges could go undetected. Elevated privileges give users access to information and functionality that they should not have; restricted privileges wrongly deny access to authorized users.

In an SQL environment, modifying permissions is typically done via the GRANT and REVOKE commands.

```
---
V-214107:
Old:
```
Changes in the database objects (tables, views, procedures, functions)
  that record and control permissions, privileges, and roles granted to users
  and roles must be tracked. Without an audit trail, unauthorized changes to the
  security subsystem could go undetected. The database could be severely
  compromised or rendered inoperative.

```
New:
```
Changes in the database objects (tables, views, procedures, functions) that record and control permissions, privileges, and roles granted to users and roles must be tracked. Without an audit trail, unauthorized changes to the security subsystem could go undetected. The database could be severely compromised or rendered inoperative.

```
---
V-214108:
Old:
```
Changes in categorized information must be tracked. Without an audit
  trail, unauthorized access to protected data could go undetected.
  For detailed information on categorizing information, refer to FIPS
  Publication 199, Standards for Security Categorization of Federal Information
  and Information Systems, and FIPS Publication 200, Minimum Security
  Requirements for Federal Information and Information Systems.

```
New:
```
Changes in categorized information must be tracked. Without an audit trail, unauthorized access to protected data could go undetected.

For detailed information on categorizing information, refer to FIPS Publication 199, Standards for Security Categorization of Federal Information and Information Systems, and FIPS Publication 200, Minimum Security Requirements for Federal Information and Information Systems.

```
---
V-214111:
Old:
```
The DoD standard for authentication is DoD-approved PKI certificates.
  A certificate’s certification path is the path from the end entity certificate
  to a trusted root certification authority (CA). Certification path validation
  is necessary for a relying party to make an informed decision regarding
  acceptance of an end entity certificate. Certification path validation
  includes checks such as certificate issuer trust, time validity and revocation
  status for each certificate in the certification path. Revocation status
  information for CA and subject certificates in a certification path is
  commonly provided via certificate revocation lists (CRLs) or online
  certificate status protocol (OCSP) responses.
  Database Management Systems that do not validate certificates by performing
  RFC 5280-compliant certification path validation are in danger of accepting
  certificates that are invalid and/or counterfeit. This could allow unauthorized
  access to the database.

```
New:
```
The DoD standard for authentication is DoD-approved PKI certificates.

A certificate’s certification path is the path from the end entity certificate to a trusted root certification authority (CA). Certification path validation is necessary for a relying party to make an informed decision regarding acceptance of an end entity certificate. Certification path validation includes checks such as certificate issuer trust, time validity and revocation status for each certificate in the certification path. Revocation status information for CA and subject certificates in a certification path is commonly provided via certificate revocation lists (CRLs) or online certificate status protocol (OCSP) responses.

Database Management Systems that do not validate certificates by performing RFC 5280-compliant certification path validation are in danger of accepting certificates that are invalid and/or counterfeit. This could allow unauthorized access to the database.

```
---
V-214113:
Old:
```
Information can be either unintentionally or maliciously disclosed or
  modified during preparation for transmission, including, for example, during
  aggregation, at protocol transformation points, and during packing/unpacking.
  These unauthorized disclosures or modifications compromise the confidentiality
  or integrity of the information.
  Use of this requirement will be limited to situations where the data owner has
  a strict requirement for ensuring data integrity and confidentiality is
  maintained at every step of the data transfer and handling process.
  When transmitting data, PostgreSQL, associated applications, and
  infrastructure must leverage transmission protection mechanisms.
  PostgreSQL uses OpenSSL SSLv23_method() in fe-secure-openssl.c, while the name
  is misleading, this function enables only TLS encryption methods, not SSL.
  See OpenSSL: https://mta.openssl.org/pipermail/openssl-dev/2015-May/001449.htm.

```
New:
```
Information can be either unintentionally or maliciously disclosed or modified during preparation for transmission, including, for example, during aggregation, at protocol transformation points, and during packing/unpacking. These unauthorized disclosures or modifications compromise the confidentiality or integrity of the information.

Use of this requirement will be limited to situations where the data owner has a strict requirement for ensuring data integrity and confidentiality is maintained at every step of the data transfer and handling process. 

When transmitting data, PostgreSQL, associated applications, and infrastructure must leverage transmission protection mechanisms.

For more information on configuring PostgreSQL to use SSL, consult the following documentation:
https://www.postgresql.org/docs/current/ssl-tcp.html

Postgres provides native support for using SSL connections to encrypt client/server communications.  To enable the use of SSL, the postgres “ssl” configuration parameter must be set to “on” and the database instance needs to be configured to use a valid server certificate and private key installed on the server.  With SSL enabled, connections made to the database server will default to being encrypted.  However, it is possible for clients to override the default and attempt to establish an unencrypted connection. To prevent connections made from non-local hosts from being unencrypted, the postgres host-based authentication settings should be configured to only allow hostssl (i.e., encrypted) connections.  The hostssl connections can be further configured to require that the client present a valid (trusted) SSL certificate for a connection.

```
---
V-214114:
Old:
```
Without the capability to generate audit records, it would be difficult
  to establish, correlate, and investigate the events relating to an incident or
  identify those responsible for one.
  Audit records can be generated from various components within PostgreSQL
  (e.g., process, module). Certain specific application functionalities may be
  audited as well. The list of audited events is the set of events for which
  audits are to be generated. This set of events is typically a subset of the
  list of all events for which the system is capable of generating audit records.
  DoD has defined the list of events for which PostgreSQL will provide an audit
  record generation capability as the following:
  (i) Successful and unsuccessful attempts to access, modify, or delete
  privileges, security objects, security levels, or categories of information
  (e.g., classification levels);
  (ii) Access actions, such as successful and unsuccessful logon attempts,
  privileged activities, or other system-level access, starting and ending time
  for user access to the system, concurrent logons from different workstations,
  successful and unsuccessful accesses to objects, all program initiations,
  and all direct access to the information system; and
  (iii) All account creation, modification, disabling, and termination actions.
  Organizations may define additional events requiring continuous or ad hoc
  auditing.

```
New:
```
Without the capability to generate audit records, it would be difficult to establish, correlate, and investigate the events relating to an incident or identify those responsible for one. 

Audit records can be generated from various components within PostgreSQL (e.g., process, module). Certain specific application functionalities may be audited as well. The list of audited events is the set of events for which audits are to be generated. This set of events is typically a subset of the list of all events for which the system is capable of generating audit records.

DoD has defined the list of events for which PostgreSQL will provide an audit record generation capability as the following: 

(i) Successful and unsuccessful attempts to access, modify, or delete privileges, security objects, security levels, or categories of information (e.g., classification levels);
(ii) Access actions, such as successful and unsuccessful logon attempts, privileged activities, or other system-level access, starting and ending time for user access to the system, concurrent logons from different workstations, successful and unsuccessful accesses to objects, all program initiations, and all direct access to the information system; and
(iii) All account creation, modification, disabling, and termination actions.

Organizations may define additional events requiring continuous or ad hoc auditing.

```
---
V-214116:
Old:
```
Information system auditing capability is critical for accurate
  forensic analysis. Without information that establishes the identity of the
  subjects (i.e., users or processes acting on behalf of users) associated with
  the events, security personnel cannot determine responsibility for the
  potentially harmful event.
  Identifiers (if authenticated or otherwise known) include, but are not limited
  to, user database tables, primary key values, user names, or process identifiers.
  1) Linux's sudo and su feature enables a user (with sufficient OS privileges)
  to emulate another user, and it is the identity of the emulated user that is
  seen by PostgreSQL and logged in the audit trail. Therefore, care must be
  taken (outside of Postgresql) to restrict sudo/su to the minimum set of users
  necessary.
  2) PostgreSQL's SET ROLE feature enables a user (with sufficient PostgreSQL
  privileges) to emulate another user running statements under the permission
  set of the emulated user. In this case, it is the emulating user's identity,
  and not that of the emulated user, that gets logged in the audit trail.
  While this is definitely better than the other way around, ideally, both
  identities would be recorded.

```
New:
```
Information system auditing capability is critical for accurate forensic analysis. Without information that establishes the identity of the subjects (i.e., users or processes acting on behalf of users) associated with the events, security personnel cannot determine responsibility for the potentially harmful event.

Identifiers (if authenticated or otherwise known) include, but are not limited to, user database tables, primary key values, user names, or process identifiers.

1) Linux's sudo and su feature enables a user (with sufficient OS privileges) to emulate another user, and it is the identity of the emulated user that is seen by PostgreSQL and logged in the audit trail. Therefore, care must be taken (outside of Postgresql) to restrict sudo/su to the minimum set of users necessary.

2) PostgreSQL's SET ROLE feature enables a user (with sufficient PostgreSQL privileges) to emulate another user running statements under the permission set of the emulated user. In this case, it is the emulating user's identity, and not that of the emulated user, that gets logged in the audit trail. While this is definitely better than the other way around, ideally, both identities would be recorded.

```
---
V-214117:
Old:
```
Use of weak or untested encryption algorithms undermines the purposes
  of utilizing encryption to protect data. The application must implement
  cryptographic modules adhering to the higher standards approved by the federal
  government since this provides assurance they have been tested and validated.
  For detailed information, refer to NIST FIPS Publication 140-2, Security
  Requirements For Cryptographic Modules. Note that the product's cryptographic
  modules must be validated and certified by NIST as FIPS-compliant.

```
New:
```
Use of weak or untested encryption algorithms undermines the purposes of utilizing encryption to protect data. The application must implement cryptographic modules adhering to the higher standards approved by the federal government since this provides assurance they have been tested and validated.

For detailed information, refer to NIST FIPS Publication 140-3, Security Requirements For Cryptographic Modules. Note that the product's cryptographic modules must be validated and certified by NIST as FIPS-compliant.

```
---
V-220321:
Old:
```
Use of weak or untested encryption algorithms undermines the purposes of
utilizing encryption to protect data. The application must implement cryptographic
modules adhering to the higher standards approved by the federal government since
this provides assurance they have been tested and validated.

It is the responsibility of the data owner to assess the cryptography requirements
in light of applicable federal laws, Executive Orders, directives, policies,
regulations, and standards.

NSA-approved cryptography for classified networks is hardware based. This
requirement addresses the compatibility of PostgreSQL with the encryption devices.

```
New:
```
Use of weak or untested encryption algorithms undermines the purposes of utilizing encryption to protect data. The application must implement cryptographic modules adhering to the higher standards approved by the federal government since this provides assurance they have been tested and validated.

It is the responsibility of the data owner to assess the cryptography requirements in light of applicable federal laws, Executive Orders, directives, policies, regulations, and standards.

NSA-approved cryptography for classified networks is hardware based. This requirement addresses the compatibility of PostgreSQL with the encryption devices.

```
---
V-214119:
Old:
```
Use of weak or untested encryption algorithms undermines the purposes of
utilizing encryption to protect data. The application must implement cryptographic
modules adhering to the higher standards approved by the federal government since
this provides assurance they have been tested and validated.

It is the responsibility of the data owner to assess the cryptography requirements
in light of applicable federal laws, Executive Orders, directives, policies,
regulations, and standards.

For detailed information, refer to NIST FIPS Publication 140-2, Security
Requirements For Cryptographic Modules. Note that the product's cryptographic
modules must be validated and certified by NIST as FIPS-compliant.

```
New:
```
Use of weak or untested encryption algorithms undermines the purposes of utilizing encryption to protect data. The application must implement cryptographic modules adhering to the higher standards approved by the federal government since this provides assurance they have been tested and validated.

It is the responsibility of the data owner to assess the cryptography requirements in light of applicable federal laws, Executive Orders, directives, policies, regulations, and standards.

For detailed information, refer to NIST FIPS Publication 140-3, Security Requirements For Cryptographic Modules. Note that the product's cryptographic modules must be validated and certified by NIST as FIPS-compliant.

```
---
V-214120:
Old:
```
This control is intended to address the confidentiality and integrity of
information at rest in non-mobile devices and covers user information and system
information. Information at rest refers to the state of information when it is
located on a secondary storage device (e.g., disk drive, tape drive) within an
organizational information system. Applications and application users generate
information throughout the course of their application use.

User data generated, as well as application-specific configuration data, needs to be
protected. Organizations may choose to employ different mechanisms to achieve
confidentiality and integrity protections, as appropriate.

If the confidentiality and integrity of application data is not protected, the data
will be open to compromise and unauthorized modification.

```
New:
```
This control is intended to address the confidentiality and integrity of information at rest in non-mobile devices and covers user information and system information. Information at rest refers to the state of information when it is located on a secondary storage device (e.g., disk drive, tape drive) within an organizational information system. Applications and application users generate information throughout the course of their application use. 

User data generated, as well as application-specific configuration data, needs to be protected. Organizations may choose to employ different mechanisms to achieve confidentiality and integrity protections, as appropriate. 

If the confidentiality and integrity of application data is not protected, the data will be open to compromise and unauthorized modification.

```
---
V-214122:
Old:
```
Information system management functionality includes functions necessary to
administer databases, network components, workstations, or servers and typically
requires privileged user access.

The separation of user functionality from information system management
functionality is either physical or logical and is accomplished by using different
computers, different central processing units, different instances of the operating
system, different network addresses, combinations of these methods, or other
methods, as appropriate.

An example of this type of separation is observed in web administrative interfaces
that use separate authentication methods for users of any other information system
resources.

This may include isolating the administrative interface on a different domain and
with additional access controls.

If administrative functionality or information regarding PostgreSQL management is
presented on an interface available for users, information on DBMS settings may be
inadvertently made available to the user.

```
New:
```
Information system management functionality includes functions necessary to administer databases, network components, workstations, or servers and typically requires privileged user access. 

The separation of user functionality from information system management functionality is either physical or logical and is accomplished by using different computers, different central processing units, different instances of the operating system, different network addresses, combinations of these methods, or other methods, as appropriate. 

An example of this type of separation is observed in web administrative interfaces that use separate authentication methods for users of any other information system resources. 

This may include isolating the administrative interface on a different domain and with additional access controls.

If administrative functionality or information regarding PostgreSQL management is presented on an interface available for users, information on DBMS settings may be inadvertently made available to the user.

```
---
V-214123:
Old:
```
Session auditing is for use when a user's activities are under
  investigation. To be sure of capturing all activity during those periods when
  session auditing is in use, it needs to be in operation for the whole time
  PostgreSQL is running.

```
New:
```
Session auditing is for use when a user's activities are under investigation. To be sure of capturing all activity during those periods when session auditing is in use, it needs to be in operation for the whole time PostgreSQL is running.

```
---
V-214124:
Old:
```
PostgreSQLs handling data requiring "data at rest" protections must
employ cryptographic mechanisms to prevent unauthorized disclosure and modification
of the information at rest. These cryptographic mechanisms may be native to
PostgreSQL or implemented via additional software or operating system/file system
settings, as appropriate to the situation.

Selection of a cryptographic mechanism is based on the need to protect the integrity
of organizational information. The strength of the mechanism is commensurate with
the security category and/or classification of the information. Organizations have
the flexibility to either encrypt all information on storage devices (i.e., full
disk encryption) or encrypt specific data structures (e.g., files, records, or
fields).

The decision whether and what to encrypt rests with the data owner and is also
influenced by the physical measures taken to secure the equipment and media on which
the information resides.

```
New:
```
PostgreSQLs handling data requiring "data at rest" protections must employ cryptographic mechanisms to prevent unauthorized disclosure and modification of the information at rest. These cryptographic mechanisms may be native to PostgreSQL or implemented via additional software or operating system/file system settings, as appropriate to the situation.

Selection of a cryptographic mechanism is based on the need to protect the integrity of organizational information. The strength of the mechanism is commensurate with the security category and/or classification of the information. Organizations have the flexibility to either encrypt all information on storage devices (i.e., full disk encryption) or encrypt specific data structures (e.g., files, records, or fields). 

The decision whether and what to encrypt rests with the data owner and is also influenced by the physical measures taken to secure the equipment and media on which the information resides.

```
---
V-214125:
Old:
```
Information system auditing capability is critical for accurate forensic
analysis. Without establishing the source of the event, it is impossible to
establish, correlate, and investigate the events relating to an incident.

In order to compile an accurate risk assessment and provide forensic analysis, it is
essential for security personnel to know where events occurred, such as application
components, modules, session identifiers, filenames, host names, and functionality.

In addition to logging where events occur within the application, the application
must also produce audit records that identify the application itself as the source
of the event.

Associating information about the source of the event within the application
provides a means of investigating an attack; recognizing resource utilization or
capacity thresholds; or identifying an improperly configured application.

```
New:
```
Information system auditing capability is critical for accurate forensic analysis. Without establishing the source of the event, it is impossible to establish, correlate, and investigate the events relating to an incident.

In order to compile an accurate risk assessment and provide forensic analysis, it is essential for security personnel to know where events occurred, such as application components, modules, session identifiers, filenames, host names, and functionality. 

In addition to logging where events occur within the application, the application must also produce audit records that identify the application itself as the source of the event.

Associating information about the source of the event within the application provides a means of investigating an attack; recognizing resource utilization or capacity thresholds; or identifying an improperly configured application.

```
---
V-214128:
Old:
```
Information systems are capable of providing a wide variety of functions
and services. Some of the functions and services, provided by default, may not be
necessary to support essential organizational operations (e.g., key missions,
functions).

It is detrimental for software products to provide, or install by default,
functionality exceeding requirements or mission objectives.

PostgreSQLs must adhere to the principles of least functionality by providing only
essential capabilities.

Unused, unnecessary PostgreSQL components increase the attack vector for PostgreSQL
by introducing additional targets for attack. By minimizing the services and
applications installed on the system, the number of potential vulnerabilities is
reduced. Components of the system that are unused and cannot be uninstalled must be
disabled. The techniques available for disabling components will vary by DBMS
product, OS and the nature of the component and may include DBMS configuration
settings, OS service settings, OS file access security, and DBMS user/role
permissions.

```
New:
```
Information systems are capable of providing a wide variety of functions and services. Some of the functions and services, provided by default, may not be necessary to support essential organizational operations (e.g., key missions, functions).  

It is detrimental for software products to provide, or install by default, functionality exceeding requirements or mission objectives.  

PostgreSQL must adhere to the principles of least functionality by providing only essential capabilities. 

Unused, unnecessary PostgreSQL components increase the attack vector for PostgreSQL by introducing additional targets for attack. By minimizing the services and applications installed on the system, the number of potential vulnerabilities is reduced. Components of the system that are unused and cannot be uninstalled must be disabled. The techniques available for disabling components will vary by DBMS product, OS and the nature of the component and may include DBMS configuration settings, OS service settings, OS file access security, and DBMS user/role permissions.

```
---
V-214129:
Old:
```
Without the association of security labels to information, there is no
basis for PostgreSQL to make security-related access-control decisions.

Security labels are abstractions representing the basic properties or
characteristics of an entity (e.g., subjects and objects) with respect to
safeguarding information.

These labels are typically associated with internal data structures (e.g., tables,
rows) within the database and are used to enable the implementation of access
control and flow control policies, reflect special dissemination, handling or
distribution instructions, or support other aspects of the information security
policy.

One example includes marking data as classified or FOUO. These security labels may
be assigned manually or during data processing, but, either way, it is imperative
these assignments are maintained while the data is in storage. If the security
labels are lost when the data is stored, there is the risk of a data compromise.

The mechanism used to support security labeling may be the sepgsql feature of
PostgreSQL, a third-party product, or custom application code.

```
New:
```
Without the association of security labels to information, there is no basis for PostgreSQL to make security-related access-control decisions.

Security labels are abstractions representing the basic properties or characteristics of an entity (e.g., subjects and objects) with respect to safeguarding information. 

These labels are typically associated with internal data structures (e.g., tables, rows) within the database and are used to enable the implementation of access control and flow control policies, reflect special dissemination, handling or distribution instructions, or support other aspects of the information security policy. 

One example includes marking data as classified or FOUO. These security labels may be assigned manually or during data processing, but, either way, it is imperative these assignments are maintained while the data is in storage. If the security labels are lost when the data is stored, there is the risk of a data compromise.

The mechanism used to support security labeling may be the sepgsql feature of PostgreSQL, a third-party product, or custom application code.

```
---
V-214130:
Old:
```
The DoD standard for authentication is DoD-approved PKI certificates.

Authentication based on User ID and Password may be used only when it is not
possible to employ a PKI certificate, and requires AO approval.

In such cases, database passwords stored in clear text, using reversible encryption,
or using unsalted hashes would be vulnerable to unauthorized disclosure. Database
passwords must always be in the form of one-way, salted hashes when stored
internally or externally to PostgreSQL.

```
New:
```
The DoD standard for authentication is DoD-approved PKI certificates.

Authentication based on User ID and Password may be used only when it is not possible to employ a PKI certificate, and requires AO approval.

In such cases, database passwords stored in clear text, using reversible encryption, or using unsalted hashes would be vulnerable to unauthorized disclosure. Database passwords must always be in the form of one-way, salted hashes when stored internally or externally to PostgreSQL.

```
---
V-214131:
Old:
```
Failure to provide logical access restrictions associated with changes to
configuration may have significant effects on the overall security of the system.

When dealing with access restrictions pertaining to change control, it should be
noted that any changes to the hardware, software, and/or firmware components of the
information system can potentially have significant effects on the overall security
of the system.

Accordingly, only qualified and authorized individuals should be allowed to obtain
access to system components for the purposes of initiating changes, including
upgrades and modifications.

```
New:
```
Failure to provide logical access restrictions associated with changes to configuration may have significant effects on the overall security of the system.

When dealing with access restrictions pertaining to change control, it should be noted that any changes to the hardware, software, and/or firmware components of the information system can potentially have significant effects on the overall security of the system.

Accordingly, only qualified and authorized individuals should be allowed to obtain access to system components for the purposes of initiating changes, including upgrades and modifications.

```
---
V-214132:
Old:
```
Non-repudiation of actions taken is required in order to maintain data
integrity. Examples of particular actions taken by individuals include creating
information, sending a message, approving information (e.g., indicating concurrence
or signing a contract), and receiving a message.

Non-repudiation protects against later claims by a user of not having created,
modified, or deleted a particular data item or collection of data in the database.

In designing a database, the organization must define the types of data and the user
actions that must be protected from repudiation. The implementation must then
include building audit features into the application data tables, and configuring
PostgreSQL' audit tools to capture the necessary audit trail. Design and
implementation also must ensure that applications pass individual user
identification to PostgreSQL, even where the application connects to PostgreSQL with
a standard, shared account.

```
New:
```
Non-repudiation of actions taken is required in order to maintain data integrity. Examples of particular actions taken by individuals include creating information, sending a message, approving information (e.g., indicating concurrence or signing a contract), and receiving a message. 

Non-repudiation protects against later claims by a user of not having created, modified, or deleted a particular data item or collection of data in the database.

In designing a database, the organization must define the types of data and the user actions that must be protected from repudiation. The implementation must then include building audit features into the application data tables, and configuring PostgreSQL' audit tools to capture the necessary audit trail. Design and implementation also must ensure that applications pass individual user identification to PostgreSQL, even where the application connects to PostgreSQL with a standard, shared account.

```
---
V-214133:
Old:
```
Organizations are required to use a central log management system, so,
under normal conditions, the audit space allocated to PostgreSQL on its own server
will not be an issue. However, space will still be required on PostgreSQL server for
audit records in transit, and, under abnormal conditions, this could fill up. Since
a requirement exists to halt processing upon audit failure, a service outage would
result.

If support personnel are not notified immediately upon storage volume utilization
reaching 75%, they are unable to plan for storage capacity expansion.

The appropriate support staff include, at a minimum, the ISSO and the DBA/SA.

```
New:
```
Organizations are required to use a central log management system, so, under normal conditions, the audit space allocated to PostgreSQL on its own server will not be an issue. However, space will still be required on PostgreSQL server for audit records in transit, and, under abnormal conditions, this could fill up. Since a requirement exists to halt processing upon audit failure, a service outage would result.

If support personnel are not notified immediately upon storage volume utilization reaching 75%, they are unable to plan for storage capacity expansion. 

The appropriate support staff include, at a minimum, the ISSO and the DBA/SA.

```
---
V-214135:
Old:
```
The DoD standard for authentication of an interactive user is the
presentation of a Common Access Card (CAC) or other physical token bearing a valid,
current, DoD-issued Public Key Infrastructure (PKI) certificate, coupled with a
Personal Identification Number (PIN) to be entered by the user at the beginning of
each session and whenever reauthentication is required.

Without reauthentication, users may access resources or perform tasks for which they
do not have authorization.

When applications provide the capability to change security roles or escalate the
functional capability of the application, it is critical the user re-authenticate.

In addition to the reauthentication requirements associated with session locks,
organizations may require reauthentication of individuals and/or devices in other
situations, including (but not limited to) the following circumstances:

(i) When authenticators change;
(ii) When roles change;
(iii) When security categorized information systems change;
(iv) When the execution of privileged functions occurs;
(v) After a fixed period of time; or
(vi) Periodically.

Within the DoD, the minimum circumstances requiring reauthentication are privilege
escalation and role changes.

```
New:
```
The DoD standard for authentication of an interactive user is the presentation of a Common Access Card (CAC) or other physical token bearing a valid, current, DoD-issued Public Key Infrastructure (PKI) certificate, coupled with a Personal Identification Number (PIN) to be entered by the user at the beginning of each session and whenever reauthentication is required.

Without reauthentication, users may access resources or perform tasks for which they do not have authorization.

When applications provide the capability to change security roles or escalate the functional capability of the application, it is critical the user re-authenticate.

In addition to the reauthentication requirements associated with session locks, organizations may require reauthentication of individuals and/or devices in other situations, including (but not limited to) the following circumstances:

(i) When authenticators change;
(ii) When roles change;
(iii) When security categorized information systems change;
(iv) When the execution of privileged functions occurs;
(v) After a fixed period of time; or
(vi) Periodically.

Within the DoD, the minimum circumstances requiring reauthentication are privilege escalation and role changes.

```
---
V-214136:
Old:
```
The DoD standard for authentication is DoD-approved PKI certificates. PKI
certificate-based authentication is performed by requiring the certificate holder to
cryptographically prove possession of the corresponding private key.

If the private key is stolen, an attacker can use the private key(s) to impersonate
the certificate holder. In cases where PostgreSQL-stored private keys are used to
authenticate PostgreSQL to the system’s clients, loss of the corresponding private
keys would allow an attacker to successfully perform undetected man-in-the-middle
attacks against PostgreSQL system and its clients.

Both the holder of a digital certificate and the issuing authority must take careful
measures to protect the corresponding private key. Private keys should always be
generated and protected in FIPS 140-2 validated cryptographic modules.

All access to the private key(s) of PostgreSQL must be restricted to authorized and
authenticated users. If unauthorized users have access to one or more of
PostgreSQL's private keys, an attacker could gain access to the key(s) and use them
to impersonate the database on the network or otherwise perform unauthorized
actions.

```
New:
```
The DoD standard for authentication is DoD-approved PKI certificates. PKI certificate-based authentication is performed by requiring the certificate holder to cryptographically prove possession of the corresponding private key.

If the private key is stolen, an attacker can use the private key(s) to impersonate the certificate holder. In cases where PostgreSQL-stored private keys are used to authenticate PostgreSQL to the system’s clients, loss of the corresponding private keys would allow an attacker to successfully perform undetected man-in-the-middle attacks against PostgreSQL system and its clients.

Both the holder of a digital certificate and the issuing authority must take careful measures to protect the corresponding private key. Private keys should always be generated and protected in FIPS 140-2 or 140-3 validated cryptographic modules.

All access to the private key(s) of PostgreSQL must be restricted to authorized and authenticated users. If unauthorized users have access to one or more of PostgreSQL's private keys, an attacker could gain access to the key(s) and use them to impersonate the database on the network or otherwise perform unauthorized actions.

```
---
V-214137:
Old:
```
Only DoD-approved external PKIs have been evaluated to ensure that they
have security controls and identity vetting procedures in place which are sufficient
for DoD systems to rely on the identity asserted in the certificate. PKIs lacking
sufficient security controls and identity vetting procedures risk being compromised
and issuing certificates that enable adversaries to impersonate legitimate users.

The authoritative list of DoD-approved PKIs is published at
http://iase.disa.mil/pki-pke/interoperability.

This requirement focuses on communications protection for PostgreSQL session rather
than for the network packet.

```
New:
```
Only DoD-approved external PKIs have been evaluated to ensure that they have security controls and identity vetting procedures in place which are sufficient for DoD systems to rely on the identity asserted in the certificate. PKIs lacking sufficient security controls and identity vetting procedures risk being compromised and issuing certificates that enable adversaries to impersonate legitimate users. 

The authoritative list of DoD-approved PKIs is published at http://iase.disa.mil/pki-pke/interoperability.

This requirement focuses on communications protection for PostgreSQL session rather than for the network packet.

```
---
V-214138:
Old:
```
Information system auditing capability is critical for accurate forensic
analysis. Without establishing what type of event occurred, it would be difficult to
establish, correlate, and investigate the events relating to an incident or identify
those responsible for one.

Audit record content that may be necessary to satisfy the requirement of this policy
includes, for example, time stamps, user/process identifiers, event descriptions,
success/fail indications, filenames involved, and access control or flow control
rules invoked.

Associating event types with detected events in the application and audit logs
provides a means of investigating an attack; recognizing resource utilization or
capacity thresholds; or identifying an improperly configured application.

Database software is capable of a range of actions on data stored within the
database. It is important, for accurate forensic analysis, to know exactly what
actions were performed. This requires specific information regarding the event type
an audit record is referring to. If event type information is not recorded and
stored with the audit record, the record itself is of very limited use.

```
New:
```
Information system auditing capability is critical for accurate forensic analysis. Without establishing what type of event occurred, it would be difficult to establish, correlate, and investigate the events relating to an incident or identify those responsible for one. 

Audit record content that may be necessary to satisfy the requirement of this policy includes, for example, time stamps, user/process identifiers, event descriptions, success/fail indications, filenames involved, and access control or flow control rules invoked.

Associating event types with detected events in the application and audit logs provides a means of investigating an attack; recognizing resource utilization or capacity thresholds; or identifying an improperly configured application. 

Database software is capable of a range of actions on data stored within the database. It is important, for accurate forensic analysis, to know exactly what actions were performed. This requires specific information regarding the event type an audit record is referring to. If event type information is not recorded and stored with the audit record, the record itself is of very limited use.

```
---
V-214139:
Old:
```
PostgreSQLs handling data requiring "data at rest" protections must
employ cryptographic mechanisms to prevent unauthorized disclosure and modification
of the information at rest. These cryptographic mechanisms may be native to
PostgreSQL or implemented via additional software or operating system/file system
settings, as appropriate to the situation.

Selection of a cryptographic mechanism is based on the need to protect the integrity
of organizational information. The strength of the mechanism is commensurate with
the security category and/or classification of the information. Organizations have
the flexibility to either encrypt all information on storage devices (i.e., full
disk encryption) or encrypt specific data structures (e.g., files, records, or
fields).

The decision whether and what to encrypt rests with the data owner and is also
influenced by the physical measures taken to secure the equipment and media on which
the information resides.

```
New:
```
PostgreSQLs handling data requiring "data at rest" protections must employ cryptographic mechanisms to prevent unauthorized disclosure and modification of the information at rest. These cryptographic mechanisms may be native to PostgreSQL or implemented via additional software or operating system/file system settings, as appropriate to the situation.

Selection of a cryptographic mechanism is based on the need to protect the integrity of organizational information. The strength of the mechanism is commensurate with the security category and/or classification of the information. Organizations have the flexibility to either encrypt all information on storage devices (i.e., full disk encryption) or encrypt specific data structures (e.g., files, records, or fields). 

The decision whether and what to encrypt rests with the data owner and is also influenced by the physical measures taken to secure the equipment and media on which the information resides.

```
---
V-214140:
Old:
```
Captured sessions can be reused in "replay" attacks. This requirement
limits the ability of adversaries to capture and continue to employ previously valid
session IDs.

This requirement focuses on communications protection for PostgreSQL session rather
than for the network packet. The intent of this control is to establish grounds for
confidence at each end of a communications session in the ongoing identity of the
other party and in the validity of the information being transmitted.

Session IDs are tokens generated by PostgreSQLs to uniquely identify a user's (or
process's) session. DBMSs will make access decisions and execute logic based on the
session ID.

Unique session IDs help to reduce predictability of said identifiers. Unique session
IDs address man-in-the-middle attacks, including session hijacking or insertion of.
information into a session. If the attacker is unable to identify or guess the
session information related to pending application traffic, they will have more
difficulty in hijacking the session or otherwise manipulating valid sessions.

When a user logs out, or when any other session termination event occurs, PostgreSQL
must terminate the user session(s) to minimize the potential for sessions to be
hijacked.

```
New:
```
Captured sessions can be reused in "replay" attacks. This requirement limits the ability of adversaries to capture and continue to employ previously valid session IDs.

This requirement focuses on communications protection for PostgreSQL session rather than for the network packet. The intent of this control is to establish grounds for confidence at each end of a communications session in the ongoing identity of the other party and in the validity of the information being transmitted. 

Session IDs are tokens generated by PostgreSQLs to uniquely identify a user's (or process's) session. DBMSs will make access decisions and execute logic based on the session ID.

Unique session IDs help to reduce predictability of said identifiers. Unique session IDs address man-in-the-middle attacks, including session hijacking or insertion of false information into a session. If the attacker is unable to identify or guess the session information related to pending application traffic, they will have more difficulty in hijacking the session or otherwise manipulating valid sessions. 

When a user logs out, or when any other session termination event occurs, PostgreSQL must terminate the user session(s) to minimize the potential for sessions to be hijacked.

```
---
V-214142:
Old:
```
Information system auditing capability is critical for accurate forensic
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
record, the record itself is of very limited use.

```
New:
```
Information system auditing capability is critical for accurate forensic analysis. Without establishing when events occurred, it is impossible to establish, correlate, and investigate the events relating to an incident.

In order to compile an accurate risk assessment and provide forensic analysis, it is essential for security personnel to know the date and time when events occurred.

Associating the date and time with detected events in the application and audit logs provides a means of investigating an attack; recognizing resource utilization or capacity thresholds; or identifying an improperly configured application. 

Database software is capable of a range of actions on data stored within the database. It is important, for accurate forensic analysis, to know exactly when specific actions were performed. This requires the date and time an audit record is referring to. If date and time information is not recorded and stored with the audit record, the record itself is of very limited use.

```
---
V-214144:
Old:
```
Information stored in one location is vulnerable to accidental or
incidental deletion or alteration.

Off-loading is a common process in information systems with limited audit storage
capacity.

PostgreSQL may write audit records to database tables, to files in the file system,
to other kinds of local repository, or directly to a centralized log management
system. Whatever the method used, it must be compatible with off-loading the records
to the centralized system.

```
New:
```
Information stored in one location is vulnerable to accidental or incidental deletion or alteration.

Off-loading is a common process in information systems with limited audit storage capacity. 

PostgreSQL may write audit records to database tables, to files in the file system, to other kinds of local repository, or directly to a centralized log management system. Whatever the method used, it must be compatible with off-loading the records to the centralized system.

```
---
V-214145:
Old:
```
One class of man-in-the-middle, or session hijacking, attack involves the
adversary guessing at valid session identifiers based on patterns in identifiers
already known.

The preferred technique for thwarting guesses at Session IDs is the generation of
unique session identifiers using a FIPS 140-2 approved random number generator.

However, it is recognized that available PostgreSQL products do not all implement
the preferred technique yet may have other protections against session hijacking.
Therefore, other techniques are acceptable, provided they are demonstrated to be
effective.

```
New:
```
One class of man-in-the-middle, or session hijacking, attack involves the adversary guessing at valid session identifiers based on patterns in identifiers already known.

The preferred technique for thwarting guesses at Session IDs is the generation of unique session identifiers using a FIPS 140-2 or 140-3 approved random number generator.

However, it is recognized that available PostgreSQL products do not all implement the preferred technique yet may have other protections against session hijacking. Therefore, other techniques are acceptable, provided they are demonstrated to be effective.

```
---
V-214146:
Old:
```
To assure accountability and prevent unauthenticated access, organizational
users must be identified and authenticated to prevent potential misuse and
compromise of the system.

Organizational users include organizational employees or individuals the
organization deems to have cmpuivalent status of employees (e.g., contractors).
Organizational users (and any processes acting on behalf of users) must be uniquely
identified and authenticated for all accesses, except the following:

(i) Accesses explicitly identified and documented by the organization. Organizations
document specific user actions that can be performed on the information system
without identification or authentication; and
(ii) Accesses that occur through authorized use of group authenticators without
individual authentication. Organizations may rcmpuire unique identification of
individuals using shared accounts, for detailed accountability of individual
activity.

```
New:
```
To assure accountability and prevent unauthenticated access, organizational users must be identified and authenticated to prevent potential misuse and compromise of the system. 

Organizational users include organizational employees or individuals the organization deems to have equivalent status of employees (e.g., contractors). Organizational users (and any processes acting on behalf of users) must be uniquely identified and authenticated for all accesses, except the following:

(i) Accesses explicitly identified and documented by the organization. Organizations document specific user actions that can be performed on the information system without identification or authentication; and 
(ii) Accesses that occur through authorized use of group authenticators without individual authentication. Organizations may require unique identification of individuals using shared accounts, for detailed accountability of individual activity.

```
---
V-214147:
Old:
```
This addresses the termination of user-initiated logical sessions in
contrast to the termination of network connections that are associated with
communications sessions (i.e., network disconnect). A logical session (for local,
network, and remote access) is initiated whenever a user (or process acting on
behalf of a user) accesses an organizational information system. Such user sessions
can be terminated (and thus terminate user access) without terminating network
sessions.

Session termination ends all processes associated with a user's logical session
except those batch processes/jobs that are specifically created by the user (i.e.,
session owner) to continue after the session is terminated.

Conditions or trigger events requiring automatic session termination can include,
for example, organization-defined periods of user inactivity, targeted responses to
certain types of incidents, and time-of-day restrictions on information system use.

This capability is typically reserved for specific cases where the system owner,
data owner, or organization requires additional assurance.

```
New:
```
This addresses the termination of user-initiated logical sessions in contrast to the termination of network connections that are associated with communications sessions (i.e., network disconnect). A logical session (for local, network, and remote access) is initiated whenever a user (or process acting on behalf of a user) accesses an organizational information system. Such user sessions can be terminated (and thus terminate user access) without terminating network sessions. 

Session termination ends all processes associated with a user's logical session except those batch processes/jobs that are specifically created by the user (i.e., session owner) to continue after the session is terminated. 

Conditions or trigger events requiring automatic session termination can include, for example, organization-defined periods of user inactivity, targeted responses to certain types of incidents, and time-of-day restrictions on information system use.

This capability is typically reserved for specific cases where the system owner, data owner, or organization requires additional assurance.

```
---
V-214149:
Old:
```
The DoD standard for authentication is DoD-approved PKI certificates. Once
a PKI certificate has been validated, it must be mapped to PostgreSQL user account
for the authenticated identity to be meaningful to PostgreSQL and useful for
authorization decisions.

```
New:
```
The DoD standard for authentication is DoD-approved PKI certificates. Once a PKI certificate has been validated, it must be mapped to PostgreSQL user account for the authenticated identity to be meaningful to PostgreSQL and useful for authorization decisions.

```
---
V-214150:
Old:
```
Applications, including PostgreSQLs, must prevent unauthorized and
unintended information transfer via shared system resources.

Data used for the development and testing of applications often involves copying
data from production. It is important that specific procedures exist for this
process, to include the conditions under which such transfer may take place, where
the copies may reside, and the rules for ensuring sensitive data are not exposed.

Copies of sensitive data must not be misplaced or left in a temporary location
without the proper controls.

```
New:
```
Applications, including PostgreSQL, must prevent unauthorized and unintended information transfer via shared system resources.  

Data used for the development and testing of applications often involves copying data from production. It is important that specific procedures exist for this process, to include the conditions under which such transfer may take place, where the copies may reside, and the rules for ensuring sensitive data are not exposed. 

Copies of sensitive data must not be misplaced or left in a temporary location without the proper controls.

```
---
V-214152:
Old:
```
Protecting audit data also includes identifying and protecting the tools
        used to view and manipulate log data. Therefore, protecting audit tools
        is necessary to prevent unauthorized operation on audit data.

        Applications providing tools to interface with audit data will leverage
        user permissions and roles identifying the user accessing the tools and
        the corresponding rights the user enjoys in order make access decisions
        regarding the modification of audit tools.

        Audit tools include, but are not limited to, vendor-provided and open source
        audit tools needed to successfully view and manipulate audit information
        system activity and records. Audit tools include custom queries and
        report generators.

```
New:
```
Protecting audit data also includes identifying and protecting the tools used to view and manipulate log data. Therefore, protecting audit tools is necessary to prevent unauthorized operation on audit data.

Applications providing tools to interface with audit data will leverage user permissions and roles identifying the user accessing the tools and the corresponding rights the user enjoys in order make access decisions regarding the modification of audit tools.

Audit tools include, but are not limited to, vendor-provided and open source audit tools needed to successfully view and manipulate audit information system activity and records. Audit tools include custom queries and report generators.

```
---
V-214153:
Old:
```
Use of weak or not validated cryptographic algorithms undermines the
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
        encryption modules.

```
New:
```
Use of weak or not validated cryptographic algorithms undermines the purposes of utilizing encryption and digital signatures to protect data. Weak algorithms can be easily broken and not validated cryptographic modules may not implement algorithms correctly. Unapproved cryptographic modules or algorithms should not be relied on for authentication, confidentiality, or integrity. Weak cryptography could allow an attacker to gain access to and modify data stored in the database as well as the administration settings of the DBMS.

Applications (including DBMSs) utilizing cryptography are required to use approved NIST FIPS 140-2 or 140-3 validated cryptographic modules that meet the requirements of applicable federal laws, Executive Orders, directives, policies, regulations, standards, and guidance. 

NSA Type-X (where X=1, 2, 3, 4) products are NSA-certified, hardware-based encryption modules.

The standard for validating cryptographic modules will transition to the NIST FIPS 140-3 publication.

FIPS 140-2 modules can remain active for up to five years after validation or until September 21, 2026, when the FIPS 140-2 validations will be moved to the historical list. Even on the historical list, CMVP supports the purchase and use of these modules for existing systems. While Federal Agencies decide when they move to FIPS 140-3 only modules, purchasers are reminded that for several years there may be a limited selection of FIPS 140-3 modules from which to choose. CMVP recommends purchasers consider all modules that appear on the Validated Modules Search Page:
https://csrc.nist.gov/projects/cryptographic-module-validation-program/validated-modules

More information on the FIPS 140-3 transition can be found here: 
https://csrc.nist.gov/Projects/fips-140-3-transition-effort/

```
---
V-214154:
Old:
```
Changes in categorized information must be tracked. Without an audit
        trail, unauthorized access to protected data could go undetected.

        For detailed information on categorizing information, refer to FIPS
        Publication 199, Standards for Security Categorization of Federal
        Information and Information Systems, and FIPS Publication 200, Minimum
        Security Requirements for Federal Information and Information Systems.

```
New:
```
Changes in categorized information must be tracked. Without an audit trail, unauthorized access to protected data could go undetected.

For detailed information on categorizing information, refer to FIPS Publication 199, Standards for Security Categorization of Federal Information and Information Systems, and FIPS Publication 200, Minimum Security Requirements for Federal Information and Information Systems.

```
---
V-214155:
Old:
```
Without tracking all or selected types of access to all or selected
        objects (tables, views, procedures, functions, etc.), it would be
        difficult to establish, correlate, and investigate the events relating
        to an incident, or identify those responsible for one.

        In an SQL environment, types of access include, but are not necessarily
        limited to:

        SELECT
        INSERT
        UPDATE
        DELETE
        EXECUT.

```
New:
```
Without tracking all or selected types of access to all or selected objects (tables, views, procedures, functions, etc.), it would be difficult to establish, correlate, and investigate the events relating to an incident, or identify those responsible for one.

In an SQL environment, types of access include, but are not necessarily limited to:

SELECT
INSERT
UPDATE
DELETE
EXECUTE

```
---
V-214156:
Old:
```
In this context, direct access is any query, command, or call to the
        DBMS that comes from any source other than the application(s) that it
        supports. Examples would be the command line or a database management
        utility program. The intent is to capture all activity from administrative
        and non-standard sources.

```
New:
```
In this context, direct access is any query, command, or call to the DBMS that comes from any source other than the application(s) that it supports. Examples would be the command line or a database management utility program. The intent is to capture all activity from administrative and non-standard sources.

```
---
V-214157:
Old:
```
Postgres uses OpenSSL for the underlying encryption layer. Currently only
        Red Hat Enterprise Linux is certified as a FIPS 140-2 distribution of
        OpenSSL. For other operating systems, users must obtain or build their
        own FIPS 140-2 OpenSSL libraries.

```
New:
```
PostgreSQL uses OpenSSL for the underlying encryption layer. It must be installed on an operating system that contains a certified FIPS 140-2 or 140-3 distribution of OpenSSL. For other operating systems, users must obtain or build their own FIPS 140 OpenSSL libraries.

```
---
V-214112:
Old:
```
Information system auditing capability is critical for accurate forensic
  analysis. Without establishing where events occurred, it is impossible to
  establish, correlate, and investigate the events relating to an incident.
  In order to compile an accurate risk assessment and provide forensic analysis,
  it is essential for security personnel to know where events occurred, such as
  application components, modules, session identifiers, filenames, host names,
  and functionality.
  Associating information about where the event occurred within the application
  provides a means of investigating an attack; recognizing resource utilization
  or capacity thresholds; or identifying an improperly configured application.

```
New:
```
Information system auditing capability is critical for accurate forensic analysis. Without establishing where events occurred, it is impossible to establish, correlate, and investigate the events relating to an incident.

In order to compile an accurate risk assessment and provide forensic analysis, it is essential for security personnel to know where events occurred, such as application components, modules, session identifiers, filenames, host names, and functionality. 

Associating information about where the event occurred within the application provides a means of investigating an attack; recognizing resource utilization or capacity thresholds; or identifying an improperly configured application.

```
---
</details>