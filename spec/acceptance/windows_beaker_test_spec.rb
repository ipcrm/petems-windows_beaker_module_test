require 'spec_helper_acceptance'

describe 'windows_beaker_test' do
  context 'should hello world' do
    it 'hello world with no errors' do

      pp = <<-PP
        windows_beaker_test { 'hello-world': }
      PP

      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_failures => true)
    end
  end
end
