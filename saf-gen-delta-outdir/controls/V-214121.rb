control 'V-214121' do
  title 'PostgreSQL must prohibit user installation of logic modules (functions, trigger procedures, views, etc.) without explicit privileged status.'
  desc 'Allowing regular users to install software, without explicit privileges, creates the risk that untested or potentially malicious software will be installed on the system. Explicit privileges (escalated or administrative privileges) provide the regular user with explicit capabilities and control that exceed the rights of a regular user.

PostgreSQL functionality and the nature and requirements of databases will vary; so while users are not permitted to install unapproved software, there may be instances where the organization allows the user to install approved software packages such as from an approved software repository. The requirements for production servers will be more restrictive than those used for development and research.

PostgreSQL must enforce software installation by users based upon what types of software installations are permitted (e.g., updates and security patches to existing software) and what types of installations are prohibited (e.g., software whose pedigree with regard to being potentially malicious is unknown or suspect) by the organization). 

In the case of a database management system, this requirement covers stored procedures, functions, triggers, views, etc.'
  desc 'check', %q(If PostgreSQL supports only software development, experimentation and/or developer-level testing (that is, excluding production systems, integration testing, stress testing, and user acceptance testing), this is not a finding.

Review PostgreSQL and database security settings with respect to non-administrative users' ability to create, alter, or replace logic modules, to include but not necessarily only stored procedures, functions, triggers, and views.

To list the privileges for all tables and schemas, as the database administrator (shown here as "postgres"), run the following:

$ sudo su - postgres
$ psql -c "\dp"
$ psql -c "\dn+"

The privileges are as follows:

rolename=xxxx -- privileges granted to a role
=xxxx -- privileges granted to PUBLIC

r -- SELECT ("read")
w -- UPDATE ("write")
a -- INSERT ("append")
d -- DELETE
D -- TRUNCATE
x -- REFERENCES
t -- TRIGGER
X -- EXECUTE
U -- USAGE
C -- CREATE
c -- CONNECT
T -- TEMPORARY
arwdDxt -- ALL PRIVILEGES (for tables, varies for other objects)
* -- grant option for preceding privilege

/yyyy -- role that granted this privilege

If any such permissions exist and are not documented and approved, this is a finding.)
  desc 'fix', 'Document and obtain approval for any non-administrative users who require the ability to create, alter or replace logic modules.

Implement the approved permissions. Revoke any unapproved permissions.'
  impact 0.5
  ref 'DPMS Target PostgreSQL 9.x'
  tag check_id: 'C-15337r360994_chk'
  tag severity: 'medium'
  tag gid: 'V-214121'
  tag rid: 'SV-214121r508027_rule'
  tag stig_id: 'PGS9-00-008400'
  tag gtitle: 'SRG-APP-000378-DB-000365'
  tag fix_id: 'F-15335r360995_fix'
  tag 'documentable'
  tag legacy: ['SV-87649', 'V-72997']
  tag cci: ['CCI-001812']
  tag nist: ['CM-11 (2)']
end
