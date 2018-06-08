class Counter < ApplicationRecord
  def increase_count
    self.update(number_count: self.number_count + self.number_count.next.slice(-1))
    self.number_count
  end
end
