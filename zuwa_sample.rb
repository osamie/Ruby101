require "open-uri"

=begin
print "enter a number: "
number_entry = Integer(gets.chomp)
=end


def method_name(number_entry)    
    if number_entry > 0 
        "positive number entered"
    elsif number_entry < 0
        "negative number"
    else
        "zero entered"
    end
end

def find_frequency(sentence, word)
    word.downcase!

    sentence = sentence.split(' ')

    # puts sentence.length

    counter = 0;

    for i in sentence do
      if i.downcase == word
        counter = counter + 1
      end

      i.downcase!
    end
    puts sentence
    counter
end


def embiggen(str)
    str = "#{str}!!!"
    str = str.upcase
    return str
end
    

# Concatenate the two strings capitalized
def argReturn(str1, str2)
    puts "#{str1}#{str2}".capitalize
    return str2
end

def tripple_adder(a,b,c)
    return "#{a} #{b} #{c}!"
end

def count_images(page_url, tag)
    pattern = /<#{tag}\b/

    page = open(page_url).read
    tags = page.scan(pattern)

    return "The site #{page_url} has #{tags.length} img tags"
end



# Rubyists prefer to use each operator over the for loop
def curlyBraces
    (0..1).each {
        |i| 
        puts "Index number #{i}"
    }
end




# curlyBraces

puts count_images("http://www.nytimes.com", "div")

# puts tripple_adder("something", "good", "here")
# puts tripple_adder(-1, 2, 5)
# puts embiggen("shopify")

# puts find_frequency("THE Ruby langauge is the best language in the world", "the")

# puts method_name(number_entry)