require 'test_helper'

describe String do
  # Extract constants for test data
  TEST_STRINGS = {
    text: 'Just a test',
    float: '10.1',
    integer: '10',
    invalid_float: '10.1.1',
    multiple_dots: '10.1.1.1',
    mixed_number: '10 hello',
    mixed_complex: 'hello 10.world'
  }.freeze

  before do
    @strings = TEST_STRINGS.transform_values(&:dup)
  end

  describe 'basic requirements' do
    it 'ensures all test strings are String objects' do
      @strings.each_value do |str|
        expect(str).must_be_kind_of String
      end
    end

    it 'ensures numeric? method is available' do
      @strings.each_value do |str|
        expect(str).must_respond_to :numeric?
      end
    end
  end

  describe '#numeric? with valid numbers' do
    it 'returns true for integer strings' do
      expect(@strings[:integer].numeric?).must_equal true
    end

    it 'returns true for float strings' do
      expect(@strings[:float].numeric?).must_equal true
    end
  end

  describe '#numeric? with invalid numbers or mixed content' do
    it 'returns false for text-only strings' do
      expect(@strings[:text].numeric?).must_equal false
    end

    it 'returns false for invalid float formats' do
      expect(@strings[:invalid_float].numeric?).must_equal false
      expect(@strings[:multiple_dots].numeric?).must_equal false
    end

    it 'returns false for strings containing mix of numbers and text' do
      expect(@strings[:mixed_number].numeric?).must_equal false
      expect(@strings[:mixed_complex].numeric?).must_equal false
    end
  end
end