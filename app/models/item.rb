class Item < ApplicationRecord
  enum :status, { pending: 0, completed: 1 }
  belongs_to :category
end
