class Post < ApplicationRecord
  has_rich_text :content

  validates :title, length: { maximum: 32 }, presence: true
end
