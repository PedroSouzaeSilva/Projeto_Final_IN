class Goal < ApplicationRecord
  def data_correta_deadline
    data = "#{deadline.day}/#{deadline.month}/#{deadline.year}"
    data
  end
  def data_correta_date_in
    data = "#{date_in.day}/#{date_in.month}/#{date_in.year}"
    data
  end
end
