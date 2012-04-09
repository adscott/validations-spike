require 'rspec'
require './models/person.rb'
require File.expand_path('models/person.rb')

describe Person do

  describe 'validation' do

    it 'should be valid' do
      person = Person.new(:name => 'Bruce Wayne')
      person.should be_valid
    end

    it 'should be invalid if name is too long' do
      person = Person.new(:name => 'a' * 41)
      person.should_not be_valid
      person.errors[:name].should == ['name too long']
    end

  end

end
