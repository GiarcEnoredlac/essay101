class Invoice < ActiveRecord::Base
  belongs_to :batch
  has_many :payments
end
