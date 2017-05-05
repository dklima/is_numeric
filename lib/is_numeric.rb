require 'is_numeric/version'

# Extending the class String to perform checks on string to get
# if is a number
module IsNumeric
  def numeric?
    !(self !~ /^-?\d+(\.\d*)?$/)
  end
end

String.include IsNumeric
