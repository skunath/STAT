class Alphabet
  @cskip = -10.0
  @csub = 35.0
  @cexp = 45.0
  @cvowel = 10.0
  @epsilon = 0.0

  def initialize
    @alphabet = {}
    add_characters()
  end

  def add_characters()

  end

  def vowel_cost(vowel)

  end

  def [] sound
    sound(sound)
  end

  def sound(sound)
    return @alphabet[sound]
  end

  def total_diff(phoneme_1, phoneme_2)
    self[phoneme_1].total_diff(self[phoneme_1], self[phoneme_2])
  end

  def base_characters()
    return @alphabet.keys().sort()
  end

  def sound_exists(sound)
    return false
  end

  def sound_type(sound)
    return @alphabet[sound].sound_type
  end

  #  // passing an int as that is what the character code is stored as
  #  public int sound_type(String test_sound) {
  #    if (alphabet.containsKey(test_sound)) {
  #        Map character;
  #    character = (Map)alphabet.get(test_sound);
  #    return (Integer)character.get("type");
  #    }
  #    return 3;
  #    }

  def sound_exist(sound)
    if (@alphabet.has_key?(sound))
        return true
    end
    return false
  end


  def add_new_sound(new_sound)
    # this function assumes a multi-part sound. That is a representation that contains diacritics
    base_sound = [new_sound.codepoints[0]].pack("U")

    new_sound_map = sound(base_sound).clone
    diacritic_map = ""

    for codepoint in new_sound.codepoints[1..-1]
      diacritic_map = sound([codepoint].pack("U"))
      new_sound_map.combine_features(diacritic_map)
    end
    new_sound_map.set_character(new_sound)
    @alphabet[new_sound] = new_sound_map

    #for (int i = 1; i < (new_sound.codePointCount(1, new_sound.length()) + 1); i++) {
    #    diacritic_map =  (Map)alphabet.get(Character.toString((char) new_sound.codePointAt(i)));

    #// test point
    #//System.out.println(Character.toString((char) new_sound.codePointAt(i)));
    #// this is the iterator used to loop through the key/value pairs
    #Iterator it = diacritic_map.entrySet().iterator();

    #while (it.hasNext()) {
    #    Map.Entry pairs = (Map.Entry)it.next();
    #if (pairs.getKey() == "type") {
    #    continue;
    #}

    #if (new_sound_map.containsKey(pairs.getKey())) {
    #    if (pairs.getValue().getClass().getName() == "java.lang.String"){
    #        new_sound_map.put(pairs.getKey(), pairs.getValue());
    #    }
    #    else {
    #        new_sound_map.put(pairs.getKey(), (Double)pairs.getValue() + (Double)new_sound_map.get(pairs.getKey()));
    #    }
    #    }
    #    else {
    #        new_sound_map.put(pairs.getKey(), pairs.getValue());
    #    }
    #    }

    #    }

    #    alphabet.put(new_sound, new_sound_map);

    end


    #public Double vowel(String check){
    #  // This function simply checks to see if a particular character/phoneme is a vowel
    #  // if it is it returns the vowel constant. Otherwise return a 0.
    #                                                                    if (alphabet.containsKey(check)) {
    #    Map character;
    #    character = (Map)alphabet.get(check);
    #    if ((Integer)character.get("type") == 1) {
    #        return cvowel;
    #    }
    #    }
    #    else {
    #        add_new_sound(check);
    #    }
    #    return 0.0;
    #    }

#  public String core_sound(String p){
#    return Character.toString((char) p.codePointAt(0));
#  }

#  public HashMap 	sound_map(String sound) {
#    return (HashMap)alphabet.get(sound);
#  }

end