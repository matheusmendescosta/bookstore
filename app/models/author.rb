class Author < ApplicationRecord
  has_one_attached :avatar
  validates :first_name, :last_name, presence: true

  before_validation :titleize_names, on: :create

  private

  def titleize_names
    self.first_name = first_name.titleize if first_name.present?
    self.last_name = last_name.titleize if last_name.present?
  end
end
