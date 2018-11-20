require 'rspec/autorun'
require '../lib/github_username'

describe '#github_username' do
  it "should not be blank or nil" do
    expect(github_username('')).not_to eq('')
  end

  it "should check if the username exists on GitHub" do
    require 'open-uri'
    expect{ open("https://github.com/#{github_username('rdzcn')}").read }.not_to raise_error,
      "The user you entered is not a valid GitHub nickname"
  end
end
