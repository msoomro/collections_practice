# requires an array of integers
# returns a copy of the array with integers in ascending order
def sort_array_asc (numbers)
    numbers.sort
end

# requires an array of integers
# returns a copy of the array with the integers in descending order
def sort_array_desc(numbers)
    numbers.sort {|x,y| -(x <=> y)}
end

# requires an array of strings
# returns a copy of the array with strings ordered in ascending order by length
def sort_array_char_count(words)
    words.sort_by {|x| x.length}
end

# requires an array
# returns an array with 2nd and 3rd elements swapped
def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    array
end

# requires an array of integers
# returns a copy of the array with elements in reverse order
def reverse_array(numbers)
    numbers.reverse
end

# requires array of strings
# returns an array with third char in each string replaced by a '$'
def kesha_maker(strings)
    strings.collect do |word|
        if word.length >= 3
            word[0,2] << "$" << word[3,word.length-1]
        end
    end
end

# requires an array of strings
# returns all strings in the array that start with the letter 'a'
def find_a(array)
    a_array = []

    array.each do |word|
        if word.start_with?("a")
            a_array << word
        end
    end

    a_array
end

# requires array of integers
# returns sum of integers from array
def sum_array(numbers)
    sum = 0

    numbers.each do |num|
        sum += num
    end

    sum
end

# requires an array of strings
# returns an array of strings with an added 's' at the end of each element (except 2nd element)
def add_s(array)
    i = 0
    s_array = []

    while i < array.length
        s_array[i] = array[i]
        s_array[i] << "s" unless i == 1

        i += 1
    end

    s_array
end