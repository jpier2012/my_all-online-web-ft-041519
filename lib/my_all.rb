require 'pry'

def my_all?(collection)
  new_array = []
  collection.each {|element|
    if yield(element) == true
      new_array << element
    end
  }
  new_array
end
