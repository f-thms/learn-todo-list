class Category < ApplicationRecord
  DEFAULT_PARAMS = { name: "Sem categoria", description: "Item sem categoria" }

  has_many :items, dependent: :destroy

  def self.default
    Category.find_by(DEFAULT_PARAMS)
  end
end
