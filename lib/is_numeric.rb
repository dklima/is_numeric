require 'is_numeric/version'

# Extending the class String to perform checks on string to get
# if is a number
class String
  def numeric?
    !(self !~ /^-?\d+(\.\d*)?$/)
  end
end
