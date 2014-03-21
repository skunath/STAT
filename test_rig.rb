require_relative "manner"
require_relative "place"
require_relative "salience"
require_relative "high"
require_relative "back"
require_relative "analyzer"
require_relative "phoneme"
require_relative "DTW"
require_relative "word"
require_relative "alphabet"
require_relative "IPA_Alphabet"
require_relative "transcription"

transcript_1 = "pliːs kal stela æsk ɚ"#" tu bʁiŋ d̪iːs siŋks wɪθ hɜ fʁɑm d̪ə stoə siks spuns ɑf fʁeʃ sno piːs faɪf sik slæb̥s ʌf blu ʧis"
transcript_2 = "pʰl̥iiːz kʰɑlˠ stɛlə æskɚ"#" ɾə bɹɪ̃ŋ ðiiːz θɪ̃ŋz wɪθɚ fɹʌ̃m ðə stɔɹ sɪks spuunz əv fɹɛʃ snoʊ pʰiiːz faɪːv θɪk sl̥æːbz əv bluː ʧiiːz"

# kick off a new alphabet
alphabet = IPA_Alphabet.new()
p_transcript_1 = Transcription.new(transcript_1, alphabet)
p_transcript_2 = Transcription.new(transcript_2, alphabet)
#t = Word.new()
#puts t.process_word("ʧiə̆z̥").to_s

#puts p_transcript_1[0].normalized_word
puts p_transcript_1.size
puts p_transcript_2.size

#puts alphabet["pʰ"]

#m = Analyzer.new(alphabet)
#m.alignment(p_transcript_1[0], p_transcript_2[0])

a = DTW.new(p_transcript_1, p_transcript_2, alphabet)
output = a.analyze

puts output.to_s