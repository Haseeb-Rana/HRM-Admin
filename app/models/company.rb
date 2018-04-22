class Company < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'owner'
  has_many :users
end
