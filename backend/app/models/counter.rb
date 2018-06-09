class Counter < ApplicationRecord
  def increase_count
    self.update(number_count: self.number_count + 1)
    self
  end
end
