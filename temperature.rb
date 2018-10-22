class Temperature
  def initialize(options={})
    @temp = options
  end

  def to_fahrenheit
    if(@temp.keys.include?(:f))
      return @temp[:f]
    else
      return (@temp[:c] * 9.0/5.0) + 32
    end
  end

  def to_celsius
    if(@temp.keys.include?(:c))
      return @temp[:c]
    else
      return (@temp[:f] - 32) * 5.0/9.0
    end
  end

end
