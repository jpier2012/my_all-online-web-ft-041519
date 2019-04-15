require 'pry'

def my_all?(collection)
  new_array = []
  collection.each {|element|
    if yield(element) == true
      new_array << element
      binding.pry
    end
  }
  new_array == collection ? true : false
  #binding.pry
end

test_collection = [1,2,3,4,5]

my_all?(test_collection){|x| x }
