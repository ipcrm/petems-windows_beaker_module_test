# Dummy repo to show Windows Powershell provider with Beaker

Setup steps

```
bundle install
```

Run Example
```
bundle exec rake beaker

/Users/XXXXX/.rbenv/versions/2.3.1/bin/ruby -I/Users/XXXXX/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/rspec-core-3.5.4/lib:/Users/XXXXX/.rbenv/versions/2.3.1/l
ib/ruby/gems/2.3.0/gems/rspec-support-3.5.0/lib /Users/XXXXX/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/rspec-core-3.5.4/exe/rspec spec/acceptance --color
/Users/XXXXX/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/beaker-rspec-6.0.0/lib/beaker-rspec/helpers/serverspec.rb:43: warning: already initialized constant Module::VALID
_OPTIONS_KEYS
/Users/XXXXX/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/specinfra-2.67.2/lib/specinfra/configuration.rb:4: warning: previous definition of VALID_OPTIONS_KEYS was here
Beaker::Hypervisor, found some vagrant boxes to create
Bringing machine 'win-2012R2-std' up with 'virtualbox' provider...
==> win-2012R2-std: Importing base box 'opentable/win-2012r2-standard-amd64-nocm'...
Progress: 10%Progress: 90%
==> win-2012R2-std: Matching MAC address for NAT networking...
==> win-2012R2-std: Checking if box 'opentable/win-2012r2-standard-amd64-nocm' is up to date...
==> win-2012R2-std: Setting the name of the VM: defaultyml_win-2012R2-std_1488850651928_51919
==> win-2012R2-std: Fixed port collision for 22 => 2222. Now on port 2200.
==> win-2012R2-std: Clearing any previously set network interfaces...
==> win-2012R2-std: Preparing network interfaces based on configuration...
    win-2012R2-std: Adapter 1: nat
    win-2012R2-std: Adapter 2: hostonly
==> win-2012R2-std: Forwarding ports...
    win-2012R2-std: 22 (guest) => 2200 (host) (adapter 1)
    win-2012R2-std: 3389 (guest) => 3389 (host) (adapter 1)
    win-2012R2-std: 5985 (guest) => 5985 (host) (adapter 1)
    win-2012R2-std: 5986 (guest) => 55986 (host) (adapter 1)
==> win-2012R2-std: Running 'pre-boot' VM customizations...
==> win-2012R2-std: Booting VM...
==> win-2012R2-std: Waiting for machine to boot. This may take a few minutes...
    win-2012R2-std: WinRM address: 127.0.0.1:5985
    win-2012R2-std: WinRM username: vagrant
    win-2012R2-std: WinRM execution_time_limit: PT2H
    win-2012R2-std: WinRM transport: plaintext
==> win-2012R2-std: Machine booted and ready!
==> win-2012R2-std: Checking for guest additions in VM...
    win-2012R2-std: The guest additions on this VM do not match the installed version of
    win-2012R2-std: VirtualBox! In most cases this is fine, but in rare cases it can
    win-2012R2-std: prevent things such as shared folders from working properly. If you see
    win-2012R2-std: shared folder errors, please make sure the guest additions within the
    win-2012R2-std: virtual machine match the version of VirtualBox you have installed on
    win-2012R2-std: your host and reload your VM.
    win-2012R2-std:
    win-2012R2-std: Guest Additions Version: 4.3.12
    win-2012R2-std: VirtualBox Version: 5.0
==> win-2012R2-std: Setting hostname...
==> win-2012R2-std: Configuring and enabling network interfaces...
==> win-2012R2-std: Mounting shared folders...
    win-2012R2-std: /vagrant => /Users/XXXXX/git/windows_beaker_module_test.git/.vagrant/beaker_vagrant_files/default.yml
Disabling updates.puppetlabs.com by modifying hosts file to resolve updates to 127.0.0.1 on win-2012R2-std
localhost $ scp /var/folders/5p/rrbcvp0x3d74tfjqxjc5mytc0000gq/T/install-puppet-msi-2017-03-06_20.41.07.bat20170306-84629-17okyw2 win-2012R2-std:C:/Windows/Temp/install-puppet-ms
i-2017-03-06_20.41.07.bat {:ignore => }
localhost $ scp /Users/XXXXX/git/windows_beaker_module_test.git win-2012R2-std:C:/ProgramData/PuppetLabs/code/modules {:ignore => [".bundle", ".git", ".idea", ".vagrant", ".
vendor", "vendor", "acceptance", "bundle", "spec", "tests", "log", ".svn", "junit", "pkg", "example", ".", ".."]}

windows_beaker_test
  should hello world
localhost $ scp /var/folders/5p/rrbcvp0x3d74tfjqxjc5mytc0000gq/T/beaker20170306-84629-68kke3 win-2012R2-std:C:/Users/vagrant/AppData/Local/Temp/tmp5D73.tmp {:ignore => }
localhost $ scp /var/folders/5p/rrbcvp0x3d74tfjqxjc5mytc0000gq/T/beaker20170306-84629-x224o1 win-2012R2-std:C:/Users/vagrant/AppData/Local/Temp/tmpCC0B.tmp {:ignore => }
    hello world with no errors
Destroying vagrant boxes
==> win-2012R2-std: Forcing shutdown of VM...
==> win-2012R2-std: Destroying VM and associated drives...

Finished in 1 minute 18.55 seconds (files took 4 minutes 47.8 seconds to load)
1 example, 0 failures

