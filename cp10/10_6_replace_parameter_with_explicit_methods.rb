def set_value(name, value)
  if name == "height"
    @height = value
  elsif name == "width"
    @width = value
  else
    raise "Should never reach here"
  end
end
