class Salience

  @salience = {}
  @salience["syllabic"] = 5.0
  @salience["voice"] = 10.0
  @salience["lateral"] = 10.0
  @salience["high"] = 5.0
  @salience["manner"] = 50.0
  @salience["long"] = 1.0
  @salience["place"] = 40.0
  @salience["nasal"] = 10.0
  @salience["aspirated"] = 5.0
  @salience["back"] = 5.0
  @salience["retroflex"] = 10.0
  @salience["round"] = 5.0


  def initialize(args)
    # currently start with defaults...
  end


  def self.[] measure
    return @salience[measure]
  end

end
