class Task < ApplicationRecord
  def laundry?
    if title == 'laundry'
      true
    elsif description.include?("laundry")
      true
    else
      false
    end
  end
end
