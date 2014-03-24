def trailing_zeros(float_string)
  float_string.scan(/(0+$)/).flatten.first.length
end