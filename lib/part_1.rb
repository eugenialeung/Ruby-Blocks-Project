# def select_even_nums(array)
#     array.select { |num| num.even? }
# end
def select_even_nums(array)
    array.select(&:even?)
end



def reject_puppies(dogs)
    dogs.reject {|dog| dog["age"] <= 2 }
end
# p reject_puppies( [
#     {"name"=>"Fido", "age"=>3},
#     {"name"=>"Spot", "age"=>2},
#     {"name"=>"Rex", "age"=>5},
#     {"name"=>"Gizmo", "age"=>1}
#   ])



def count_positive_subarrays(array)
    array.count { |subarr| subarr.sum > 0 }
end



def aba_translate(word)
    vowels = "aeiou"
    new_word = ""
    word.each_char do |char|
        if vowels.include?(char)
            new_word += char + "b" + char
        else
            new_word += char
        end
    end
    new_word
end



def aba_array(array)
    array.map { |word| aba_translate(word)}
end