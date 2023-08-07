class Book < ApplicationRecord
  belongs_to :library
  belongs_to :checked_out_by, foreign_key: :checked_out_by_id, class_name: 'User', optional: true

  enum status: { available: 0, checked_out: 1 }
end
