class Back
  @back_hash = {}

  @back_hash["front"] = 1.0
  @back_hash["central"] = 0.5
  @back_hash["back"] = 0.0

  def initialize()
  end

  def self.backs()
    return @back_hash.keys().sort()
  end

  def self.back_value(back)
    return @back_hash[back]
  end

  def self.[] back
    return @back_hash[back]
  end
end