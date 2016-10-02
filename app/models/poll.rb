class Poll < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :options, through: :questions
  accepts_nested_attributes_for :questions
end
