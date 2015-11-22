class Category < ActiveRecord::Base
  has_many :wants
  accepts_nested_attributes_for :wants
end
