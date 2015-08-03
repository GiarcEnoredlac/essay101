class Package < ActiveRecord::Base
  has_many_and_belongs_to :batches
  has_many_and_belongs_to :invoices 
end
