require_relative "item.rb"
class List 
def initialize(label)
  @label=label
  @items=[]
end
def label
  @label
end
def label=(new_label)
  @label=new_label
end

def add_item(title, deadline, description=" ")
  if Item.valid_date?(deadline)
  new_item=Item.new(title, deadline, description)
  @items<<new_item
  return true
  else
return false
end
end

def size
  @items.length
end

def valid_index?(index)
  if index<0 || index> @items.length-1
    return false
  else
    return true
  end
end

def swap(index_1, index_2)
  if valid_index?(index_1)&&valid_index?(index_2)
    @items[index_1],@items[index_2]= @items[index_2],@items[index_1]
    return true
  else
    return false
  end
end

def [](index)
if !valid_index?(index)
  return nil
else
  @items[index]
end
end

def priority
  @items[0]
end

def print
  line_width = 26
puts("Index".ljust(line_width / 3) + "Item".rjust(line_width / 3)+"Deadline"rjust(line_width / 3))
end

end