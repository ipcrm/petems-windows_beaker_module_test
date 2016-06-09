# Dummy repo to show Windows Powershell provider with Beaker

Setup steps

```
bundle install
BEAKER_debug=yes bundle exec rspec spec/acceptance/windows_beaker_test_spec.rb
```

For 2008R2:

```
BEAKER_set=windows-2008R2-serverstandard-x64 BEAKER_debug=yes bundle exec rspec spec/acceptance/windows_beaker_test_spec.rb
```

Note: The 2008R2 box has an issue where it requires a reboot through the GUI, and will just hang at this step in the meantime:

```
Bringing machine 'win-2008R2-std' up with 'virtualbox' provider...
==> win-2008R2-std: vagrant-r10k not configured; skipping
==> win-2008R2-std: Importing base box 'opentable/win-2008r2-standard-amd64-nocm'...
Progress: 10%Progress: 90%==> win-2008R2-std: Matching MAC address for NAT networking...
==> win-2008R2-std: Checking if box 'opentable/win-2008r2-standard-amd64-nocm' is up to date...
==> win-2008R2-std: Setting the name of the VM: defaultyml_win-2008R2-std_1465478786271_31539
==> win-2008R2-std: vagrant-r10k not configured; skipping
==> win-2008R2-std: vagrant-r10k not configured; skipping
==> win-2008R2-std: vagrant-r10k not configured; skipping
==> win-2008R2-std: Clearing any previously set network interfaces...
==> win-2008R2-std: Preparing network interfaces based on configuration...
    win-2008R2-std: Adapter 1: nat
    win-2008R2-std: Adapter 2: hostonly
==> win-2008R2-std: Forwarding ports...
    win-2008R2-std: 22 (guest) => 2222 (host) (adapter 1)
    win-2008R2-std: 3389 (guest) => 3389 (host) (adapter 1)
    win-2008R2-std: 5985 (guest) => 5985 (host) (adapter 1)
    win-2008R2-std: 5986 (guest) => 55986 (host) (adapter 1)
==> win-2008R2-std: Running 'pre-boot' VM customizations...
==> win-2008R2-std: Booting VM...
==> win-2008R2-std: Waiting for machine to boot. This may take a few minutes...
    win-2008R2-std: WinRM address: 127.0.0.1:5985
    win-2008R2-std: WinRM username: vagrant
    win-2008R2-std: WinRM execution_time_limit: PT2H
    win-2008R2-std: WinRM transport: plaintext
```

The solution is just to open the GUI in Virtualbox, Click the reboot button, then run a no-provision run:

```
BEAKER_provision=no bundle exec rspec spec/acceptance/windows_beaker_test_spec.rb
/opt/rubies/2.0.0-p451/lib/ruby/gems/2.0.0/gems/beaker-rspec-5.3.0/lib/beaker-rspec/helpers/serverspec.rb:43: warning: already initialized constant Module::VALID_OPTIONS_KEYS
/opt/rubies/2.0.0-p451/lib/ruby/gems/2.0.0/gems/specinfra-2.44.0/lib/specinfra/configuration.rb:4: warning: previous definition of VALID_OPTIONS_KEYS was here
Hypervisor for win-2008R2-std is vagrant
Beaker::Hypervisor, found some vagrant boxes to create
Determined existing vagrant box win-2008R2-std ip to be: 10.255.33.129
configure vagrant boxes (set ssh-config, switch to root user, hack etc/hosts)
Give root a copy of current user's keys, on win-2008R2-std

win-2008R2-std 14:29:34$ if exist .ssh (xcopy .ssh C:\Users\Administrator\.ssh /s /e)
  Attempting ssh connection to 10.255.33.129, user: vagrant, opts: {:config=>"/var/folders/nn/408ddhln26s1b356ry19q6yr0000gp/T/win-2008R2-std20160609-45639-cjd1zf"}

win-2008R2-std executed in 0.16 seconds
Update /etc/ssh/sshd_config to allow root login
Warning: Attempting to enable root login non-supported platform: win-2008R2-std: windows-server-amd64
Warning: Attempting to update ssh on non-supported platform: win-2008R2-std: windows-server-amd64
Warning: ssh connection to win-2008R2-std has been terminated

win-2008R2-std 14:29:38$ type C:\Windows\System32\drivers\etc\hosts
  Attempting ssh connection to 10.255.33.129, user: vagrant, opts: {:config=>"/var/folders/nn/408ddhln26s1b356ry19q6yr0000gp/T/win-2008R2-std20160609-45639-1p83fum"}
  # Copyright (c) 1993-2009 Microsoft Corp.
  #
  # This is a sample HOSTS file used by Microsoft TCP/IP for Windows.
  #
  # This file contains the mappings of IP addresses to host names. Each
  # entry should be kept on an individual line. The I  P address should
  # be placed in the first column followed by the corresponding host name.
  # The IP address and the host name should be separated by at least one
  # space.
  #
  # Additionally, comments (such as these) may be inserted on ind  ividual
  # lines or following the machine name denoted by a '#' symbol.
  #
  # For example:
  #
  #      102.54.94.97     rhino.acme.com          # source server
  #       38.25.63.10     x.acme.c  om              # x client host

  # localhost name resolution is handled within DNS itself.
  # 127.0.0.1       localhost
  # ::1             localhost

win-2008R2-std executed in 0.04 seconds
```
