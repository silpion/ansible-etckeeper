require 'spec_helper'

# write up RSpec integration tests here
%w{
  git
  etckeeper
}.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe file('/etc/etckeeper') do
  it { should be_directory }
end

describe file('/etc/etckeeper/etckeeper.conf') do
  it { should be_file }
  its(:content) { should match /VCS="git"/ }
end
