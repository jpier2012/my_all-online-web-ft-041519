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