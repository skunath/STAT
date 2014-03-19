class Place
  @place_hash = {}

  @place_hash["bilabial"] = 1.0
  @place_hash["labiodental"] = 0.95
  @place_hash["dental"] = 0.9
  @place_hash["labiovelar"] = 0.82
  @place_hash["alveolar"] = 0.85
  @place_hash["retroflex"] = 0.8
  @place_hash["palato-alveolar"] = 0.75
  @place_hash["palatal"] = 0.7
  @place_hash["velar"] = 0.6
  @place_hash["uvular"] = 0.5
  @place_hash["pharyngeal"] = 0.3
  @place_hash["glottal"] = 0.1

  def initialize()
  end

  def self.places()
    return @place_hash.keys().sort()
  end

  def self.place_value(place)
    return @place_hash[place]
  end

  def self.[] place
    return @place_hash[place]
  end
end