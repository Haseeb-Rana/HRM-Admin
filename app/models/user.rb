class User < ApplicationRecord
  belongs_to :company
  # belongs_to :created_by, class_name: 'User'
end
