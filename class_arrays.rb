module Ruby101
    class Arrays

        # Illustrative - Instance variable holding a reference to the array
        attr_accessor :values 

        # Illustrative - Constructor for class
        def initialize(input = [])
            @values = input
            puts "Initializing Instance with #{@values}" 
        end

        # Given an Array, returns the elements 
        # that are present exactly once in the array.
        # This is a static method

        class << self
            def non_duplicated_values(input_array) 
                is_visited = {}
                non_duplicate = []
        
                
                (0..input_array.length-1).each { |index| 
                    element = input_array[index]
        
                    if (is_visited[element])
                        is_visited[element] += 1
                    else
                        is_visited[element] = 1
                    end
        
                }
        
                # if any entry in isVisited is less than 2, then add to non duplicate
                is_visited.each {|key,count|
                    if (count == 1)
                        non_duplicate.push(key)
                    end
                }
        
                return "#{non_duplicate}"
            end
        end
    end
end

r = Ruby101::Arrays.new([1,6,7,3])
r.values = [1,2,3]
puts "Modified instance variable: #{r.values}"
puts "Static method invocation: #{Ruby101::Arrays.non_duplicated_values([1,2,3,4,5,"you",2,2,9,3])}"


