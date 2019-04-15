require 'pry'

def my_all?(collection)
  new_array = []
  collection.each {|element|
    if yield(element)
      new_array << element
    end
  }
  new_array == collection ? true : false
end

test_collection = [1,2,3,4,5]

my_all?(test_collection){|x| x }
