class Option < ApplicationRecord
  belongs_to :question
  has_many :votes, dependent: :destroy
  accepts_nested_attributes_for :votes

end
