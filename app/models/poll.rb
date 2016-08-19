class Poll < ApplicationRecord
  has_many :questions
  has_many :options, through: :questions
end
