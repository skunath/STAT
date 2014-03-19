require_relative "manner"
require_relative "place"
require_relative "salience"
require_relative "high"
require_relative "back"
require_relative "analyzer"
require_relative "phoneme"



test2 = Phoneme.new(:character => "o",
                    :type => "vowel",
                    :manner => "mvowel",
                    :high => "closemid",
                    :back => "back",
                    :round => 1.0,
                    :long => 0.0
)

test3 = Phoneme.new(:character => "ɔ",
                    :type => "vowel",
                    :manner => "mvowel",
                    :high => "openmid",
                    :back => "back",
                    :round => 1.0,
                    :long => 0.0
)

test1 = Phoneme.new(:character => "a",
                    :type => "vowel",
                    :manner => "mvowel",
                    :high => "high",
                    :back => "front",
                    :round => 1.0,
                    :long => 0.0
)

puts test2.vowel_compare(test3)

test4 = Phoneme.new(:character => "ð",
                    :type => "consonant",
                    :manner => "fricative",
                    :place => "dental",
                    :syllabic => 0.0,
                    :nasal => 0.0,
                    :retroflex => 0.0,
                    :voice => 1.0,
                    :lateral => 0.0,
                    :aspirated => 0.0
)


test5 = Phoneme.new(:character => "w",
                    :type => "consonant",
                    :manner => "approximant",
                    :place => "dental",
                    :syllabic => 0.0,
                    :nasal => 0.0,
                    :retroflex => 0.0,
                    :voice => 1.0,
                    :lateral => 0.0,
                    :aspirated => 0.0
)

test6 = Phoneme.new(:character => "t",
                    :type => "consonant",
                    :manner => "approximant",
                    :place => "labiodental",
                    :syllabic => 0.0,
                    :nasal => 1.0,
                    :retroflex => 0.0,
                    :voice => 1.0,
                    :lateral => 0.0,
                    :aspirated => 0.0
)

puts test5.consonant_compare(test4)

puts test5.mixed_compare(test3)

try2 = [test6,test1, test6]
try1 = [test5,test1, test3,test6]

puts "%" * 50
puts Phoneme.vowel(test1)

temper = Analyzer.new()
temper.alignment(try1, try2)

