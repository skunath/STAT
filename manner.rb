class Manner
  @manner_hash = {}

  @manner_hash["stop"] = 1.0
  @manner_hash["nasal"] = 0.95
  @manner_hash["affricate"] = 0.9
  @manner_hash["fricative"] = 0.8
  @manner_hash["approximant"] = 0.6
  @manner_hash["tap"] = 0.55
  @manner_hash["trill"] = 0.5
  @manner_hash["hvowel"] = 0.4
  @manner_hash["mvowel"] = 0.2
  @manner_hash["lvowel"] = 0.0

  def initialize()

  end

  def self.manners()
    return @manner_hash.keys().sort()
  end

  def self.manner_value(manner)
    return @manner_hash[manner]
  end

  def self.[] manner
    return @manner_hash[manner]
  end

end
