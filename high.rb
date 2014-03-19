class High
  @high_hash = {}
  @high_hash["close"] = 1.0
  @high_hash["semiclose"] = 0.8
  @high_hash["closemid"] = 0.65
  @high_hash["mid"] = 0.5
  @high_hash["openmid"] = 0.35
  @high_hash["semiopen"] = 0.2
  @high_hash["open"] = 1.0

  def initialize()
  end

  def self.heights()
    return @high_hash.keys().sort()
  end

  def self.high_value(high)
    return @high_hash[high]
  end

  def self.[] high
    return @high_hash[high]
  end

end