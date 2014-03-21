class IPA_Alphabet < Alphabet
  def add_characters()
    # Insert Vowels

    # i - profile
    map = Phoneme.new(:character => "i",
                        :type => "vowel",
                        :manner => "hvowel",
                        :high => "close",
                        :back => "front",
                        :round => 0.0,
                        :long => 0.0)
    @alphabet[map.character()] = map


    # y
    map = Phoneme.new(:character => "y",
                      :type => "vowel",
                      :manner => "hvowel",
                      :high => "close",
                      :back => "front",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # e
    map = Phoneme.new(:character => "e",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "closemid",
                      :back => "front",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ø
    map = Phoneme.new(:character => "ø",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "closemid",
                      :back => "front",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɛ
    map = Phoneme.new(:character => "ɛ",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "openmid",
                      :back => "front",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # œ
    map = Phoneme.new(:character => "œ",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "openmid",
                      :back => "front",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # æ
    map = Phoneme.new(:character => "æ",
                      :type => "vowel",
                      :manner => "lvowel",
                      :high => "semiopen",
                      :back => "front",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # a
    map = Phoneme.new(:character => "a",
                      :type => "vowel",
                      :manner => "lvowel",
                      :high => "open",
                      :back => "front",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɶ
    map = Phoneme.new(:character => "ɶ",
                      :type => "vowel",
                      :manner => "lvowel",
                      :high => "open",
                      :back => "front",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɪ
    map = Phoneme.new(:character => "ɪ",
                      :type => "vowel",
                      :manner => "hvowel",
                      :high => "semiclose",
                      :back => "front",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ʏ
    map = Phoneme.new(:character => "ʏ",
                      :type => "vowel",
                      :manner => "hvowel",
                      :high => "semiclose",
                      :back => "front",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɨ
    map = Phoneme.new(:character => "ɨ",
                      :type => "vowel",
                      :manner => "hvowel",
                      :high => "close",
                      :back => "central",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ʉ
    map = Phoneme.new(:character => "ʉ",
                      :type => "vowel",
                      :manner => "hvowel",
                      :high => "close",
                      :back => "central",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɘ
    map = Phoneme.new(:character => "ɘ",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "closemid",
                      :back => "central",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɵ
    map = Phoneme.new(:character => "ɵ",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "closemid",
                      :back => "central",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ə
    map = Phoneme.new(:character => "ə",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "mid",
                      :back => "central",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɚ -- Special Case... rhoticized schwa
    map = Phoneme.new(:character => "ɚ",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "mid",
                      :back => "central",
                      :round => 0.0,
                      :long => 0.0,
                      :place => "alveolar")
    @alphabet[map.character()] = map

    # ɜ
    map = Phoneme.new(:character => "ɜ",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "openmid",
                      :back => "central",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɝ -- Special case
    map = Phoneme.new(:character => "ɝ",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "openmid",
                      :back => "central",
                      :round => 0.0,
                      :long => 0.0,
                      :place => "alveolar")
    @alphabet[map.character()] = map

    # ɞ
    map = Phoneme.new(:character => "ɞ",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "openmid",
                      :back => "central",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɐ
    map = Phoneme.new(:character => "ɐ",
                      :type => "vowel",
                      :manner => "lvowel",
                      :high => "semiopen",
                      :back => "central",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ʊ
    map = Phoneme.new(:character => "ʊ",
                      :type => "vowel",
                      :manner => "hvowel",
                      :high => "semiclose",
                      :back => "back",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɯ
    map = Phoneme.new(:character => "ɯ",
                      :type => "vowel",
                      :manner => "hvowel",
                      :high => "close",
                      :back => "back",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # u
    map = Phoneme.new(:character => "u",
                      :type => "vowel",
                      :manner => "hvowel",
                      :high => "close",
                      :back => "back",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɤ
    map = Phoneme.new(:character => "ɤ",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "closemid",
                      :back => "back",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # o
    map = Phoneme.new(:character => "o",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "closemid",
                      :back => "back",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ʌ
    map = Phoneme.new(:character => "ʌ",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "openmid",
                      :back => "back",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɔ
    map = Phoneme.new(:character => "ɔ",
                      :type => "vowel",
                      :manner => "mvowel",
                      :high => "openmid",
                      :back => "back",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɑ
    map = Phoneme.new(:character => "ɑ",
                      :type => "vowel",
                      :manner => "lvowel",
                      :high => "open",
                      :back => "back",
                      :round => 0.0,
                      :long => 0.0)
    @alphabet[map.character()] = map

    # ɒ
    map = Phoneme.new(:character => "ɒ",
                      :type => "vowel",
                      :manner => "lvowel",
                      :high => "open",
                      :back => "back",
                      :round => 1.0,
                      :long => 0.0)
    @alphabet[map.character()] = map


    # Insert Consonants


    # m
    map = Phoneme.new(:character => "m",
                      :type => "consonant",
                      :manner => "nasal",
                      :place => "bilabial",
                      :syllabic => 0.0,
                      :nasal => 1.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɱ
    map = Phoneme.new(:character => "ɱ",
                      :type => "consonant",
                      :manner => "nasal",
                      :place => "labiodental",
                      :syllabic => 0.0,
                      :nasal => 1.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # n
    map = Phoneme.new(:character => "n",
                      :type => "consonant",
                      :manner => "nasal",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 1.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɳ
    map = Phoneme.new(:character => "ɳ",
                      :type => "consonant",
                      :manner => "nasal",
                      :place => "retroflex",
                      :syllabic => 0.0,
                      :nasal => 1.0,
                      :retroflex => 1.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɲ
    map = Phoneme.new(:character => "ɲ",
                      :type => "consonant",
                      :manner => "nasal",
                      :place => "palatal",
                      :syllabic => 0.0,
                      :nasal => 1.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ŋ
    map = Phoneme.new(:character => "ŋ",
                      :type => "consonant",
                      :manner => "nasal",
                      :place => "velar",
                      :syllabic => 0.0,
                      :nasal => 1.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɴ
    map = Phoneme.new(:character => "ɴ",
                      :type => "consonant",
                      :manner => "nasal",
                      :place => "uvular",
                      :syllabic => 0.0,
                      :nasal => 1.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # p
    map = Phoneme.new(:character => "p",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "bilabial",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # b
    map = Phoneme.new(:character => "b",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "bilabial",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # t
    map = Phoneme.new(:character => "t",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # d
    map = Phoneme.new(:character => "d",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʈ
    map = Phoneme.new(:character => "ʈ",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "retroflex",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 1.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɖ̪
    # check this
    map = Phoneme.new(:character => "ɖ",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "retroflex",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 1.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # c
    map = Phoneme.new(:character => "c",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "palatal",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɟ
    map = Phoneme.new(:character => "ɟ",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "palatal",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # k
    map = Phoneme.new(:character => "k",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "velar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # check... multiple characters
    # ɡ̪ɡ
    map = Phoneme.new(:character => "ɡ",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "velar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

#    alphabet.put("ɡ̪", map);
#    alphabet.put("ɡ", map);
#    alphabet.put("g", map);

    # q
    map = Phoneme.new(:character => "q",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "uvular",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɢ
    map = Phoneme.new(:character => "ɢ",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "uvular",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʔ
    map = Phoneme.new(:character => "ʔ",
                      :type => "consonant",
                      :manner => "stop",
                      :place => "glottal",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɸ
    map = Phoneme.new(:character => "ɸ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "bilabial",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # β
    map = Phoneme.new(:character => "β",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "bilabial",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # f
    map = Phoneme.new(:character => "f",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "labiodental",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # v
    map = Phoneme.new(:character => "v",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "labiodental",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # θ
    map = Phoneme.new(:character => "θ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "dental",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ð
    map = Phoneme.new(:character => "ð",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "dental",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # s
    map = Phoneme.new(:character => "s",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # z
    map = Phoneme.new(:character => "z",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʃ
    map = Phoneme.new(:character => "ʃ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "palato-alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʒ
    map = Phoneme.new(:character => "ʒ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "palato-alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʂ
    map = Phoneme.new(:character => "ʂ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "retroflex",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 1.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʐ
    map = Phoneme.new(:character => "ʐ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "retroflex",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 1.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ç
    map = Phoneme.new(:character => "ç",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "palatal",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʝ
    map = Phoneme.new(:character => "ʝ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "palatal",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # x
    map = Phoneme.new(:character => "x",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "velar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɣ
    map = Phoneme.new(:character => "ɣ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "velar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # χ
    map = Phoneme.new(:character => "χ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "uvular",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʁ
    map = Phoneme.new(:character => "ʁ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "uvular",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ħ
    map = Phoneme.new(:character => "ħ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "pharyngeal",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʕ
    map = Phoneme.new(:character => "ʕ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "pharyngeal",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # h
    map = Phoneme.new(:character => "h",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "glottal",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɦ
    map = Phoneme.new(:character => "ɦ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "glottal",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʋ
    map = Phoneme.new(:character => "ʋ",
                      :type => "consonant",
                      :manner => "approximant",
                      :place => "labiodental",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɹ
    map = Phoneme.new(:character => "ɹ",
                      :type => "consonant",
                      :manner => "approximant",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɻ
    map = Phoneme.new(:character => "ɻ",
                      :type => "consonant",
                      :manner => "approximant",
                      :place => "retroflex",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 1.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # j
    map = Phoneme.new(:character => "j",
                      :type => "consonant",
                      :manner => "approximant",
                      :place => "palatal",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɰ
    map = Phoneme.new(:character => "ɰ",
                      :type => "consonant",
                      :manner => "approximant",
                      :place => "velar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʙ
    map = Phoneme.new(:character => "ʙ",
                      :type => "consonant",
                      :manner => "trill",
                      :place => "bilabial",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # r
    map = Phoneme.new(:character => "r",
                      :type => "consonant",
                      :manner => "trill",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʀ
    map = Phoneme.new(:character => "ʀ",
                      :type => "consonant",
                      :manner => "trill",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɾ
    map = Phoneme.new(:character => "ɾ",
                      :type => "consonant",
                      :manner => "tap",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɽ
    map = Phoneme.new(:character => "ɽ",
                      :type => "consonant",
                      :manner => "tap",
                      :place => "retroflex",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 1.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɬ
    map = Phoneme.new(:character => "ɬ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 1.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɮ
    map = Phoneme.new(:character => "ɮ",
                      :type => "consonant",
                      :manner => "fricative",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 1.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # l
    map = Phoneme.new(:character => "l",
                      :type => "consonant",
                      :manner => "approximant",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 1.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ɭ
    map = Phoneme.new(:character => "l",
                      :type => "consonant",
                      :manner => "approximant",
                      :place => "retroflex",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 1.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʎ
    map = Phoneme.new(:character => "ʎ",
                      :type => "consonant",
                      :manner => "approximant",
                      :place => "palatal",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 1.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʟ
    map = Phoneme.new(:character => "ʟ",
                      :type => "consonant",
                      :manner => "approximant",
                      :place => "velar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 1.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # w
    map = Phoneme.new(:character => "w",
                      :type => "consonant",
                      :manner => "approximant",
                      :place => "labiovelar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 1.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # ʧ
    map = Phoneme.new(:character => "ʧ",
                      :type => "consonant",
                      :manner => "affricate",
                      :place => "alveolar",
                      :syllabic => 0.0,
                      :nasal => 0.0,
                      :retroflex => 0.0,
                      :voice => 0.0,
                      :lateral => 0.0,
                      :aspirated => 0.0)
    @alphabet[map.character()] = map


    # Combining Character stuff.... now the fun begins

    # aspiration
    map = Phoneme.new(:character => "ʰ",
                      :type => "diacritic",
                      :aspirated => 1.0)
    @alphabet[map.character()] = map

    # long mark
    map = Phoneme.new(:character => "ː",
                      :type => "diacritic",
                      :long => 1.0)
    @alphabet[map.character()] = map

    # half-long mark
    map = Phoneme.new(:character => "ˑ",
                      :type => "diacritic",
                      :long => 0.5)
    @alphabet[map.character()] = map

    # unreleased
    map = Phoneme.new(:character => "˺",
                      :type => "diacritic",
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    map = Phoneme.new(:character => "\u031a",
                      :type => "diacritic",
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    map = Phoneme.new(:character => " ̚",
                      :type => "diacritic",
                      :aspirated => 0.0)
    @alphabet[map.character()] = map

    # nasal -- p̃
    map = Phoneme.new(:character => "\u0303",
                      :type => "diacritic",
                      :nasal => 1.0)
    @alphabet[map.character()] = map

    # voiceless -- b̥
    map = Phoneme.new(:character => "\u0325",
                      :type => "diacritic",
                      :voice => -1.0)
    @alphabet[map.character()] = map

    # voiced -- p̬
    map = Phoneme.new(:character => "\u032c",
                      :type => "diacritic",
                      :voice => 1.0)
    @alphabet[map.character()] = map

    # velarized -- tˠ
    map = Phoneme.new(:character => "\u02e0",
                      :type => "diacritic",
                      :place => "velar")
    @alphabet[map.character()] = map

    # rhoticized -- ə˞
    map = Phoneme.new(:character => "\u02de",
                      :type => "diacritic",
                      :place => "alveolar")
    @alphabet[map.character()] = map

    # labialized -- tʷ
    map = Phoneme.new(:character => "ʷ",
                      :type => "diacritic",
                      :place => "bilabial")
    @alphabet[map.character()] = map

    # short -- n̆
    map = Phoneme.new(:character => "\u0306",
                      :type => "diacritic",
                      :long => 0.0)
    @alphabet[map.character()] = map

    # dentalized -- d̪
    map = Phoneme.new(:character => "̪",
                      :type => "diacritic",
                      :place => "dental")
    @alphabet[map.character()] = map

    # retracted -- s̠
    map = Phoneme.new(:character => "̠",
                      :type => "diacritic")
    @alphabet[map.character()] = map

    # raised -- e̝
    map = Phoneme.new(:character => "̝",
                      :type => "diacritic")
    @alphabet[map.character()] = map

    # lowered -- i̞
    map = Phoneme.new(:character => "\u031e",
                      :type => "diacritic")
    @alphabet[map.character()] = map

    # syllabalized -- θ̩
    map = Phoneme.new(:character => "̩",
                      :type => "diacritic")
    @alphabet[map.character()] = map

    # extra short -- ĭ
    map = Phoneme.new(:character => "\u0306",
                      :type => "diacritic")
    @alphabet[map.character()] = map

    # advanced -- o̟
    map = Phoneme.new(:character => "\u031f",
                      :type => "diacritic")
    @alphabet[map.character()] = map

    # creaky voiced -- ɛ̰
    map = Phoneme.new(:character => "\u0330",
                      :type => "diacritic")
    @alphabet[map.character()] = map

    # palatalized -- ʲ
    map = Phoneme.new(:character => "ʲ",
                      :type => "diacritic",
                      :place => "palatal")
    @alphabet[map.character()] = map



  end








end