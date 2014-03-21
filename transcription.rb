class Transcription
  def initialize(transcription_string, input_alphabet)
    @custom_alphabet = input_alphabet
    @transcription_string = ""
    @split_transcription = transcription_string.split()
    @processed_transcription = []
    prep_transcription(transcription_string)
    print_aligned_transcriptions()
  end

  def retrieve_alphabet()
    return @custom_alphabet.retrieve_alphabet
  end

  def [] word_index
    @processed_transcription[word_index]
  end

  def processed_transcription()
    return @processed_transcription
  end

  def split_transcription()
    return @split_transcription
  end

  def get_list()
    return processed_transcription
  end

  def prep_transcription(transcription)
    # Do correct word breakup

    for word in @split_transcription
      @processed_transcription << Word.new(word, @custom_alphabet)
    end

  end

  def size()
    return split_transcription.size()
  end

  def get_alphabet()
      return custom_alphabet
  end

  def set_alphabet(new_alphabet)
    custom_alphabet = new_alphabet
  end

  def print_aligned_transcriptions()
    temp_output = ""
    processed_word = []
    #for (int i = 0; i < split_transcription.size(); i++) {
    #  temp_output = (String)split_transcription.get(i) + " || ";
    #  processed_word = (ArrayList)processed_transcription.get(i);
    #  for (int j = 0; j < processed_word.size(); j++) {
    #    temp_output = temp_output + (String) processed_word.get(j) + " - ";
    #  }
    #}
  end


end