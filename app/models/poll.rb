class Poll < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :options, through: :questions
end
