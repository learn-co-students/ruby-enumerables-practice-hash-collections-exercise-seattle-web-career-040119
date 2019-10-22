# your code goes here\
require "pry"
def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  array.find_all do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.slice(0,2) == "wa"
  end
end

def remove_non_strings(array)
  array.select do |word|
    word.class == String
  end
end

def count_elements(array)
  new_array = []
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |item|
      if item[:name] == name
        # binding.pry
        hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(array1, array2)
  new_array = []
  array1.each_with_index do |element, index|
    new_array.push(array1[index].merge(array2[index]))
  end
  new_array

end

def find_cool(array)
  array.select do |item|
    item[:temperature] == "cool"
  end
end

def organize_campuses(campus_hash)
  organized_hash = {}
  campus_hash.each do |name, location_hash|
    # binding.pry
    if organized_hash[location_hash.values.first]
      organized_hash[location_hash.values.first] << name
    else
      organized_hash[location_hash.values.first] = []
      organized_hash[location_hash.values.first] << name
    end
  end
  organized_hash
end