class Word
  def initialize(word, alphabet=nil)
    if alphabet.nil?
      @alphabet = IPA_Alphabet.new()
    else
      @alphabet = alphabet
    end
    @word = word
    @normalized_word = []
    @phoneme_word = []
    process_word(@word)
  end

  def size()
    return @phoneme_word.size()
  end


  def process_word(word)
    # This function takes a word and breaks it down to phonemic units
    @normalized_word = []

    # Temp string to build out the product for the list
    temp_phoneme = ""
    temp_phoneme_type = 0

    # iterate through a given word
    for codepoint in word.codepoints
      unicode_char = [codepoint].pack("U")
      temp_phoneme_type = @alphabet.sound_type(unicode_char)

      if (temp_phoneme_type != 'diacritic' && temp_phoneme.size() > 0)
        @normalized_word << temp_phoneme
        temp_phoneme = ""
      end

      temp_phoneme = temp_phoneme + unicode_char

    end

    if (temp_phoneme.size() > 0)
        @normalized_word << temp_phoneme
    end

    # this is to put any combined things back into the alphabet
    temp_phoneme = ""
    for phoneme in @normalized_word
      if !@alphabet.sound_exist(phoneme)
        @alphabet.add_new_sound(phoneme)
      end
      @phoneme_word << @alphabet[phoneme]
    end


  end

  def normalized_word()
    return @normalized_word
  end

  def phoneme_word()
    return @phoneme_word
  end

  def [] index
    # assume they only want the phonemic word component
    return @phoneme_word[index] # the -1 is a horrible thing
  end

  def retrieve_alphabet()
    return @alphabet
  end

  def to_s
    phoneme_word.join("")
  end

end