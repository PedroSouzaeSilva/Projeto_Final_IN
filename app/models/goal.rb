class Goal < ApplicationRecord
  validates_presence_of :name, message: "Insira um nome para a meta"
  validates_presence_of :date_in, message: "Insira uma data de início válida"
  validates_presence_of :deadline, message: "Insira uma data de fim válida"
  validate  :deadline_before_date_in
  
  def deadline_before_date_in
    errors.add(:deadline, "O prazo não pode ser anterior ao início") if
    !deadline.blank? and !date_in.blank? and deadline < date_in
  end
  
  def data_correta_deadline
    data = "#{deadline.day}/#{deadline.month}/#{deadline.year}"
    data
  end
  def data_correta_date_in
    data = "#{date_in.day}/#{date_in.month}/#{date_in.year}"
    data
  end
end
