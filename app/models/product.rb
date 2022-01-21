class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :photos

  # validates_presence_of :column1, :column2

  
end
