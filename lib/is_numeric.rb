require 'is_numeric/version'

# Extending the class String to perform checks on string to get
# if is a number
module IsNumeric
  def numeric?
    !!Float(self) rescue false
  end
end

String.include(IsNumeric)
