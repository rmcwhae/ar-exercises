# frozen_string_literal: true

class Store < ActiveRecord::Base
  validate :must_carry_mens_or_womens_apparel
  # does the store carry at least one type of apparel?
  def must_carry_mens_or_womens_apparel
    errors.add(:mens_apparel, 'or womens apparel must be provided') unless mens_apparel || womens_apparel
  end

  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  before_destroy :check_destroy_allowed, prepend: true

  private

  def check_destroy_allowed
    # some condition that returns true or fails
    if employees.count.positive?
      errors[:base] << "Can't be destroyed because employees exist in this store"
      throw :abort # necessary for Rails 5 per https://stackoverflow.com/questions/19044725/before-destroy-callback-not-stopping-record-from-being-deleted
    end
    employees.count ? false : true
  end
end
