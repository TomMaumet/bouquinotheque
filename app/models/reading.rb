class Reading < ApplicationRecord
  belongs_to :book
  belongs_to :user

  attr_reader :EAN
end
