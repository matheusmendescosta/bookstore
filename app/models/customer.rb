class Customer < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  after_validation :titleize_first_name, if: proc { |c| c.first_name.present? }, on: :create
  after_validation :titleize_last_name, if: proc { |c| c.last_name.present? }, on: :create

  private

  def titleize_first_name
    self.first_name = first_name.titleize
  end

  def titleize_last_name
    self.last_name = last_name.titleize
  end
end
