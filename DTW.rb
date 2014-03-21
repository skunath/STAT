class DTW
  def initialize(transcript_1, transcript_2, alphabet)
    @alphabet = alphabet
    @diffanalyze = Analyzer.new(@alphabet)

    # not sure what to do here
    #trans1 = new transcription(word1, processalphabet);
    # trans_alphabet = newtrans.get_alphabet();
    #trans2 = new transcription(word2, processalphabet);


    # Split signals and move into array storage...
    @sample = transcript_1
    @reference = transcript_2

    # Get lengths to prep matrices
    @sample_length = @sample.size()
    @reference_length = @reference.size()

    # Setup difference matrix
    # This is actually a similarity matrix but we will perceive the numbers
    # as the closer to zero the worse the match is
    @difference = Array.new(@sample_length+1) { |i| Array.new(@reference_length+1, 0.0) }
  end


  def analyze()
    # Perform DTW
    temp_cost = 0.0
    temp_cost_array = Array.new(3, 0.0)

    @distance = Array.new(@sample_length) { |i| Array.new(@reference_length, 0.0) }
    @move_matrix = Array.new(@sample_length) { |i| Array.new(@reference_length, 0) }

    #int wordlength1, wordlength2, wordlengthdiff;
    #ArrayList word1, word2;


    for i in (0..@sample_length-1).to_a
      for j in (0..@reference_length-1).to_a
        temp_cost_array[0] = 0.0
        temp_cost_array[1] = 0.0
        temp_cost_array[2] = 0.0

        #temp_cost = diffanalyze.alignment(reference[j-1], sample[i-1]);
        #distance[i-1][j-1] = diffanalyze.alignment(reference[j-1], sample[i-1]);

        # copy the words ...
        #word1 = trans1.get_word(i-1);
        #word2 = trans2.get_word(j-1);
        word1 = @sample[i]
        word2 = @reference[j]



        word_length_1 = word1.size()
        word_length_2 = word2.size()

        word_length_diff = (word_length_1 - word_length_2).abs


        temp_cost = @diffanalyze.alignment(word2, word1)
        @distance[i-1][j-1] = @diffanalyze.alignment(word2, word1)


        # insert
        temp_cost_array[0] =  @difference[i-1][j] + temp_cost
        # delete
        temp_cost_array[1] = @difference[i][j-1] + temp_cost
        # match
        # We use a weighting factor of 2 here to give a preference for a "match" between words...
        # This is based on the fact that since we are not really giving a distance measure but a closeness measure...
        temp_cost_array[2] = (3 - word_length_diff) * 2.5 * @difference[i-1][j-1] + temp_cost


        #Arrays.sort(temp_cost_array);
        # may need to sort at this point... maybe
        @temp_max_cost = temp_cost_array[2]
        max_location = 2
        for search in (0..temp_cost_array.size()-1)

          if (temp_cost_array[search] > @temp_max_cost)
            temp_max_cost = temp_cost_array[search]
            max_location = search
          end
        end
        #puts " ### #{temp_max_cost}"
        @move_matrix[i-1][j-1] = max_location
        @difference[i][j] = @temp_max_cost
      end
    end


    #temp = ""
    #for (int i = 0; i < samplelength + 1; i++) {
    #    temp = "";
    #for (int j = 0; j < referencelength + 1; j++){
    #    temp = temp + "   " + difference[i][j];
    #}
    #//System.out.println(temp);
    #}


    #System.out.println("==================");

    #temp = "";
    #for (int i = samplelength -1; i >=  0; i--) {
    #    temp = "";
    #for (int j = 0; j < referencelength; j++){
    #    temp = temp + "   " + distance[i][j].toString().substring(0, 3);
    #}
    #System.out.println(temp);
    #}

    #System.out.println("==================");
    #temp = "";
    #for (int i = samplelength -1; i >=  0; i--) {
    #    temp = "";
    #for (int j = 0; j < referencelength; j++){
    #    temp = temp + "   " + move_matrix[i][j];
    #}
    #System.out.println(temp);
    #}

    moves = @sample_length
    if (@sample_length < @reference_length)
        moves = @reference_length;
    end

    moveleft = 0
    movedown = 0
    starty = @reference_length - 1
    startx = @sample_length - 1

    movelist = []
    matchpoints = []


    while (moves > 0)
        if (@move_matrix[startx][starty] == 2)

        matchpoints = Array.new(2, 0)
        matchpoints[0] = startx
        matchpoints[1] = starty
        movelist.insert(0, matchpoints)

        startx -= 1
        starty -= 1

        elsif (@move_matrix[startx][starty] == 1)

          starty -= 1

       elsif (@move_matrix[startx][starty] == 0)

       startx -= 1
       end

             moves -= 1
      end



             prevtrans1 = 0
             prevtrans2 = 0


             fmatchpoints = movelist[1]

            finalmatch = []

             for i in (0..movelist.size()-1).to_a
                 matchpoints = movelist[i]
            row = []
            left = []
            right = []
             row << left
             row << right

             left << matchpoints[0]
             right << matchpoints[1]


                finalmatch << row
                prevtrans1 = matchpoints[0]
                prevtrans2 = matchpoints[1]
            end

		return finalmatch


  end


end