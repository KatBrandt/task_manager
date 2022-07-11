class Task < ApplicationRecord
  def laundry?
    if title == 'laundry'
      true
    else
      false
    end
  end
end
