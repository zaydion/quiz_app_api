class Question < ApplicationRecord
  belongs_to :poll
  has_many :options
end
