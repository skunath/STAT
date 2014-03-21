class Phoneme


  def initialize(args)
    @cskip = -10.0
    @csub = 35.0
    @cexp = 45.0
    @cvowel = 10.0
    @epsilon = 0.0

    @character = args[:character]
    @type = args[:type] # vowel, consonant, diacritic

    @manner = args[:manner]
    @place = args[:place]

    @high = args[:high]
    @back = args[:back]
    @round = args[:round]
    @long = args[:long]

    @syllabic = args[:syllabic]
    @nasal = args[:nasal]
    @retroflex = args[:retroflex]
    @voice = args[:voice]
    @lateral = args[:lateral]
    @aspirated = args[:aspirated]

    #
    #

    @features = {}
    @features[:manner] = args[:manner]
    @features[:place] = args[:place]

    @features[:high] = args[:high]
    @features[:back] = args[:back]
    @features[:round] = args[:round]
    @features[:long] = args[:long]

    @features[:syllabic] = args[:syllabic]
    @features[:nasal] = args[:nasal]
    @features[:retroflex] = args[:retroflex]
    @features[:voice] = args[:voice]
    @features[:lateral] = args[:lateral]
    @features[:aspirated] = args[:aspirated]


  end

  def character()
    return @character
  end

  def vowel()
    return @type == "vowel"
  end

  def vowel_cost()
    return @cvowel
  end

  def alter_feature(name, value)
    if !@features[name].nil?
      if @features[name].class == String
        @features[name] = value
      else
        @features[name] = @features[name] + value
      end
    else
      @features[name] = value
    end
  end

  def combine_features(phoneme_2)
    for feature in phoneme_2.features
      self.alter_feature(feature[0], feature[1])
    end
  end

  #@vowel a single vowel object
  #@pasofalkjf alksfja lskfja sf
  def self.vowel(vowel)
    # Runs a subprocess and applies handlers for stdout and stderr
    # Params:
    # +vowel+:: command line string to be executed by the system
    if vowel.vowel()
      return @cvowel
    end
    return 0.0
  end

  def to_s
    @character
  end

  def set_character(full_character)
    @character = full_character
  end

  def consonant()
    return @type == "consonant"
  end

  def sound_type()
    return @type
  end

  def round()
    return @round
  end

  def long()
    return @long
  end

  def manner()
    return Manner[@manner]
  end

  def high()
    return High[@high].to_f
  end

  def back()
    return Back[@back]
  end

  def place()
    return Place[@place]
  end

  def syllabic()
    return @syllabic
  end

  def nasal()
    return @nasal
  end

  def retroflex
    return @retroflex
  end

  def voice
    return @voice
  end

  def lateral
    return @lateral
  end

  def aspirated
    return @aspirated
  end

  def features
    features = []
    for pair in @features.to_a
      features << pair if !pair[1].nil?
    end

    return features
  end



  def vowel_compare(compare_vowel)
    diff = 0.0

    # roundness comparison
    roundness_diff = (self.round() - compare_vowel.round()).to_f.abs * Salience["round"]
    # length comparison
    length_diff = (self.long() - compare_vowel.long()).to_f.abs * Salience["long"]
    # backness comparison
    backness_diff = (self.back() - compare_vowel.back()).to_f.abs * Salience["back"]
    # height comparison
    height_diff = (self.high() - compare_vowel.high()).to_f.abs * Salience["high"]
    # manner comparison
    manner_diff = (self.manner() - compare_vowel.manner()).to_f.abs * Salience["manner"]

    diff = diff + roundness_diff + length_diff + backness_diff + height_diff + manner_diff

    return diff.round(5);
  end

  def consonant_compare(compare_consonant)
    diff = 0.0

    # manner comparison
    manner_diff = (self.manner() - compare_consonant.manner()).to_f.abs * Salience["manner"]

    # place comparison
    place_diff = (self.place() - compare_consonant.place()).to_f.abs * Salience["place"]

    # syllabic comparison
    syllabic_diff = (self.syllabic() - compare_consonant.syllabic()).to_f.abs * Salience["syllabic"]

    # nasal comparison
    nasal_diff = (self.nasal() - compare_consonant.nasal()).to_f.abs * Salience["nasal"]

    # retroflex comparison
    retroflex_diff = (self.retroflex() - compare_consonant.retroflex()).to_f.abs * Salience["retroflex"]

    # voice comparison
    voice_diff = (self.voice() - compare_consonant.voice()).to_f.abs * Salience["voice"]

    # lateral comparison
    lateral_diff = (self.lateral() - compare_consonant.lateral()).to_f.abs * Salience["lateral"]

    # aspirated comparison
    aspirated_diff = (self.aspirated() - compare_consonant.aspirated()).to_f.abs * Salience["aspirated"]

    diff = manner_diff + place_diff + syllabic_diff + nasal_diff + retroflex_diff + voice_diff + lateral_diff + aspirated_diff

    return diff.round(5)
  end

  def mixed_compare(other_phoneme)
    vowel, consonant = nil

    if self.vowel()
      vowel = self
      consonant = other_phoneme
    else
      vowel = other_phoneme
      consonant = self
    end

    # begin computing diff
    diff = 0.0

    # syllabic comparison
    #syllabic_diff = (consonant.syllabic() - vowel.syllabic()).to_f.abs * Salience["syllabic"]

    # nasal comparison
    #nasal_diff = (consonant.nasal() - vowel.nasal()).to_f.abs * Salience["nasal"]

    # retroflex comparison
    #retroflex_diff = (consonant.retroflex() - vowel.retroflex()).to_f.abs * Salience["retroflex"]

    # manner comparison
    manner_diff = (consonant.manner() - vowel.manner()).to_f.abs * Salience["manner"]

    # place comparison
    place_diff = (consonant.place() - 0.0).to_f.abs * Salience["place"]

    # voice comparison
    voice_diff = (consonant.voice() - 0.0).to_f.abs * Salience["voice"]

    # lateral comparison
    lateral_diff = (consonant.lateral() - 0.0).to_f.abs * Salience["lateral"]

    # aspirated comparison
    aspirated_diff = (consonant.aspirated() - 0.0).to_f.abs * Salience["aspirated"]

    diff = manner_diff + place_diff + voice_diff + lateral_diff + aspirated_diff

    return diff.round(5)
  end

  def self.total_diff(phoneme_1, phoneme_2)
    # must be two phonemes coming in... alphabets will be different

    # This function determines the actual difference between two characters/phonemes
    # based on the features it knows of of the character/phoneme.

    # Notes:
    # This should probably create an on the fly hash when the class is instantiated to memoize
    # previous diff calculations...It should speed things up.

    first_string_vowel = phoneme_1.vowel()
    second_string_vowel = phoneme_2.vowel()


    if !first_string_vowel && !second_string_vowel
      # case where both characters/phonemes are consonants
      return phoneme_1.consonant_compare(phoneme_2)
    elsif first_string_vowel && second_string_vowel
      # case where only vowels are passed
      return phoneme_1.vowel_compare(phoneme_2)
    else
      # Mixed case with a vowel and a consonant
      return phoneme_1.mixed_compare(phoneme_2)
    end
  end

end

