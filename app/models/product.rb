class Product < ApplicationRecord
  validates :name, presence:{message: "を４０字以内で入力してください"},length: {maximum:40}
  
  belongs_to :brand
  belongs_to :category
  has_many :images, dependent: :destroy
end
