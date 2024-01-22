control 'V-214157' do
  title 'The DBMS must be configured on a platform that has a NIST certified FIPS 140-2 or 140-3 installation of OpenSSL.'
  desc 'PostgreSQL uses OpenSSL for the underlying encryption layer. It must be installed on an operating system that contains a certified FIPS 140-2 or 140-3 distribution of OpenSSL. For other operating systems, users must obtain or build their own FIPS 140 OpenSSL libraries.'
  desc 'check', 'If the deployment incorporates a custom build of the operating system and PostgreSQL guaranteeing the use of FIPS 140-2 or 140-3 compliant OpenSSL, this is not a finding. 

If PostgreSQL is not installed on an OS found in the CMVP (https://csrc.nist.gov/projects/cryptographic-module-validation-program/validated-modules), this is a finding. 

If FIPS encryption is not enabled, this is a finding.'
  desc 'fix', 'Install PostgreSQL with FIPS-compliant cryptography enabled on an OS found in the CMVP (https://csrc.nist.gov/projects/cryptographic-module-validation-program/validated-modules) or by other means, ensure that FIPS 140-2 or 140-3 certified OpenSSL libraries are used by the DBMS.'
  impact 0.7
  ref 'DPMS Target PostgreSQL 9.x'
  tag severity: 'high'
  tag gtitle: 'SRG-APP-000179-DB-000114'
  tag gid: 'V-214157'
  tag rid: 'SV-214157r836932_rule'
  tag stig_id: 'PGS9-00-012800'
  tag cci: ['CCI-000803']
  tag nist: ['IA-7', 'Rev_4']
  tag 'check'
  tag 'fix'

  # https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Security_Guide/chap-Federal_Standards_and_Regulations.html

  # fips=1 kernel option to the kernel command line during system
  # installation.

  # PRELINKING=no option in the /etc/sysconfig/prelink
  # run

  # yum install dracut-fips
  # For the CPUs with the AES New Instructions (AES-NI) support, install the
  # vdracut-fips-aesni package as well:

  # in the CM:
  # To disable existing prelinking on all system files, use the
  # prelink -u -a command.

  only_if { false }
end
