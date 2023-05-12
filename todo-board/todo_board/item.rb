require "byebug"
class Item
  def self.valid_date?(date_string)
    valid_year=(1900..2023).to_a
    valid_month=(1..12).to_a
    valid_day=(1..31).to_a
    if  !valid_year.include?(date_string[0..3].to_i)
      return false
    end
    if  !valid_month.include?(date_string[5..6].to_i)
      return false
    end
    if  !valid_day.include?(date_string[-2..-1].to_i)
      return false
    end
    if  ! date_string[4]=="-" || !date_string[-3]=="-" 
      return false
    end
    
    return true
  end

  def initialize(title, deadline, description)
    @title=title
    @deadline=deadline
    @description=description
    if  ! Item.valid_date?(@deadline)
      raise  "not a valid date"
    end
  end

  def title
    @title
  end

  def title=(new_title)
    @title=new_title
  end

  def deadline
    @deadline
  end

  def deadline=(new_deadline)
if  Item.valid_date?(new_deadline)
  @deadline=new_deadline
else
  raise "invalid date :("
end
  end

  def description
    @description
  end

  def description=(new_description)
    @description=new_description
  end

end



