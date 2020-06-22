dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)

    new_string = string.downcase
    results = Hash.new(0)

    dictionary.each do |x|
        scores = new_string.scan(x)
        value = scores.length
        results[x] = value        
    end

    p results.select {|k, v| v > 0 }

end

substrings("Howdy partner, sit down! How's it going?", dictionary)