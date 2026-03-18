class Item < ApplicationRecord
  enum :status, { pending: 0, completed: 1 }
  belongs_to :category

  before_validate :set_default_category_if_undefined

  private

  def set_default_category_if_undefined
    return if category.present?

    category = Category.default
  end
end
