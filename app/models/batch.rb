class Batch < ActiveRecord::Base
  belongs_to :company
  has_many :essays
  has_many :students 
end
