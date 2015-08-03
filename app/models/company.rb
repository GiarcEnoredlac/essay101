class Company < ActiveRecord::Base
  belongs_to :parent, :class_name => "Company", :foreign_key => "parent_company_id"
  has_many :child_companies, :class_name => "Company", :foreign_key => "parent_company_id"
  has_many :batches
  has_many :users 
end
