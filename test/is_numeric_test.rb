require 'test_helper'

# Test for numeric? method
describe String do
  before do
    @string1 = 'Just a test'
    @string2 = '10.1'
  end

  after do
    @string1 = nil
    @string2 = nil
  end

  describe 'object' do
    it 'must be kind of String' do
      expect(@string1).must_be_kind_of String
      expect(@string2).must_be_kind_of String
    end

    it 'must have a method numeric?' do
      expect(@string1).must_respond_to :numeric?
      expect(@string2).must_respond_to :numeric?
    end
  end

  describe 'string with chars must be false' do
    it 'must return false if string have chars' do
      expect(@string1.numeric?).must_equal false
    end
  end

  describe 'string with numbers must be true' do
    it 'must return true if string have number' do
      expect(@string2.numeric?).must_equal true
    end
  end
end
