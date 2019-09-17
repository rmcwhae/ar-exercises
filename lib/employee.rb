# frozen_string_literal: true

class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {
    greater_than_or_equal_to: 40,
    less_than_or_equal_to: 200
  }
  validates :store_id, presence: true

  private

  def generate_code(number)
    charset = Array('A'..'Z') + Array('a'..'z')
    Array.new(number) { charset.sample }.join
  end

  before_save do
    self.password = generate_code(8)
    # update_attribute(:password, generate_code(8))
  end
end
