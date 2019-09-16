class Store < ActiveRecord::Base
  validate :must_carry_mens_or_womens_apparel
  # does the store carry at least one type of apparel?
  def must_carry_mens_or_womens_apparel
    errors.add(:mens_apparel, 'or womens apparel must be provided') unless mens_apparel || womens_apparel
  end

  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
end