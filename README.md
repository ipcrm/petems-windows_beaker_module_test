# Dummy repo to show Windows Powershell provider with Beaker

Setup steps

```
bundle install
BEAKER_debug=yes bundle exec rspec spec/acceptance/windows_beaker_test_spec.rb
```

For 2008R2:

```
BEAKER_set=windows-2012R2-serverstandard-x64 BEAKER_debug=yes bundle exec rspec spec/acceptance/windows_beaker_test_spec.rb
```
