class Analyzer
  def initialize()
    # populate initial settings for weighting factors
    @cskip = -10.0
    @csub = 35.0
    @cexp = 45.0
    @epsilon = 0.0
  end

  def exp(p, q1, q2)
    maxvowel = 0.0
    if (Phoneme.vowel(q1) >= Phoneme.vowel(q2))
        maxvowel = Phoneme.vowel(q1)
    else
        maxvowel = Phoneme.vowel(q2)
    end

    return @cexp - Phoneme.total_diff(p, q1) - Phoneme.total_diff(p, q2) - Phoneme.vowel(p) - maxvowel
  end

  def sub(p, q)
    # so this should take the csub constant subtract the totaldiff and then the constants for if it is two vowels...
    return @csub - Phoneme.total_diff(p, q) - Phoneme.vowel(p) - Phoneme.vowel(q)
  end

  def skip(p)
    # just return the constant for the skip
    return @cskip
  end

  def alignment(x, y)
    # here the input should be two arrays of phonemes.

    lengthx = x.size
    lengthy = y.size


    matrix = Array.new(lengthx+1) { |i| Array.new(lengthy+1, 0.0) }

    temp = Array.new(6, 0.0)

    i = 1
    j = nil

    while (i < (lengthx + 1))
      j = 1
      while (j < (lengthy + 1))
        temp = Array.new(6, 0.0)

        # inner processing for alignment
        # the heavy lifting starts

        if (i-1 < 0 || j-1 < 0)
            temp[0] = -9999999.0 + self.skip(x[i-1])
        else
            temp[0] = matrix[i-1][j] + self.skip(x[i-1])
        end

        #################

				if (i-1 < 0|| j-1 < 0)
					temp[1] = -9999999.0 + self.skip(y[j-1])
				else
					temp[1] = matrix[i][j-1] + self.skip(y[j-1])
				end

				#################

        if (i < 0|| j < 0)
            temp[2] = -9999999.0 + self.sub(x[i-1],y[j-1])
        else
            temp[2] = matrix[i-1][j-1] + self.sub(x[i-1],y[j-1])
        end

        #################

				if (i-1 < 0|| j-2 < 0)
					temp[3] = -9999999.0 # + this.exp(x.substring(i-1,i),y.substring(j-2,j-1),y.substring(j-1,j));
        else
            temp[3] = matrix[i-1][j-2] + self.exp(x[i-1],y[j-2],y[j-1])
        end

        #################

				if (i-2 < 0|| j-1 < 0)
					temp[4] = -9999999.0  # ;// + this.exp(x.substring(i-2,i-1),x.substring(i-1,i),y.substring(j-2,j));
        else
          temp[4] = matrix[i-2][j-1] + self.exp(x[i-2],x[i-1],y[j-1])
        end

        #################

				temp[5] = 0.0

				temp = temp.sort()

        matrix[i][j] = temp[5]

        # closing inner loop
        j = j + 1
      end
      #closing outer loop
      i = i + 1
    end
    # loops closed


    # Start retrieval
    endscore = 0.0
    # set stack value to initial placeholder value...
    stack = 0.0

    endscore = (1.0 - @epsilon) * matrix[lengthx][lengthy]

    answerstack = []
    alignment = []

    #Map psptrack = new HashMap();    // hash table
    #psptrack = new TreeMap();        // sorted map

    puts matrix.to_s

    i = 0
    while (i <= lengthx)
      j = 0

      while (j <= lengthy)
        if (matrix[i][j] >= endscore)
          answerstack = []
          alignment = self.retrieve(x, y, i, j, 0.0, matrix, endscore, answerstack)
        end

        j += 1
      end

      i += 1
    end

    line = ""
    while (answerstack.size() > 0)
        line += answerstack.pop() + "\n"
    end

    puts line
    puts "printing alignment: " + alignment.to_s
    puts endscore

    return endscore
  end


  def retrieve(x, y, i, j, score, matrix, t, answerstack)
    tempscore = 0.0
    alignstring = ""

    # this is the base condition to end recursion
    if (matrix[i][j] == 0.0)
      #return 0.0;
      return answerstack
    else
      # start
      if (i-1 < 0 || j-1 < 0)
        tempscore = -9999999.0
      else
        tempscore = matrix[i-1][j-1]
        if ((tempscore + self.sub(x[i-1], y[j-1]) + score) >= t)
          # alignstring = "Align " + x.get(i-1) + " with " + y.get(j-1);
          alignstring = x[i-1].to_s + " --- " + y[j-1].to_s

          #alignstring += " --- " + this.apply_rules((String)x.get(i-1), (String)y.get(j-1))

          #if (x.size() == i && y.size() == j)
          #  alignstring += " " + this.apply_word_final_rules((String)x.get(i-1), (String)y.get(j-1))
          #end
          answerstack.push(alignstring)
          return self.retrieve(x,y,i-1,j-1,score + self.sub(x[i-1], y[j-1]), matrix, t, answerstack)
        end
      end


      if (i < 0 || (j - 1) < 0)
        tempscore = -9999999.0
      else
        tempscore = matrix[i][j-1]
        if ((tempscore + self.skip(y[j-1]) + score) >= t)
          # alignstring = "Align null with " + y.get(j-1);
          alignstring = " --- " + y[j-1].to_s
          #alignstring += " --- " + this.apply_deletion_rules(null, (String)y.get(j-1))
          answerstack.push(alignstring)
          return self.retrieve(x, y, i, j-1, score + self.skip(y[j-1]), matrix, t, answerstack )
        end

      end

      if ((i - 1) < 0 || (j - 2) < 0)
        tempscore = -9999999.0
      else
        tempscore = matrix[i-1][j-2]

        if ((tempscore + self.exp(x[i-1], y[j-2], y[j-1]) + score) >= t)
          # alignstring = "Align " + x.get(i-1) + " with " + y.get(j-2) + " " + y.get(j-1)
          alignstring = x[i-1].to_s + " --- " + y[j-2].to_s + " " + y[j-1].to_s

          answerstack.push(alignstring)
          return self.retrieve(x, y, i-1, j-2, score + self.exp(x[i-1], y[j-2], y[j-1]), matrix, t, answerstack )
        end

      end


      if ((i - 1) < 0 || j < 0)
        tempscore = -9999999.0
      else
        tempscore = matrix[i-1][j]

        if ((tempscore + self.skip(x[i-1]) + score) >= t)
          # alignstring = "Align " + x.get(i-1) + " with null";
          alignstring = x[i-1].to_s + " --- "
          #alignstring += " --- " + this.apply_deletion_rules((String)x.get(i-1), null);
          answerstack.push(alignstring)
          return self.retrieve(x, y, i-1, j, score + self.skip(x[i-1]), matrix, t, answerstack )
        end


      end

      if ((i - 2) < 0 || (j - 1) < 0)
        tempscore = -9999999.0
      else
        tempscore = matrix[i-2][j-1];

        if ((tempscore + self.exp(y[j-1], x[i-2], x[i-1]) + score) >= t)
          # alignstring = "Align " + x.get(i-2) + " " + x.get(i-1) + " with " + y.get(j-1);
          alignstring = x[i-2].to_s + " " + x[i-1].to_s + " --- " + y[j-1].to_s
          answerstack.push(alignstring);
          return self.retrieve(x, y, i-2, j-1, score + self.exp(y[j-1], x[i-2], x[i-1]), matrix, t, answerstack )
        end

      end


    end
    return answerstack
  end


end

