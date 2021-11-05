class Blog < ApplicationRecord
  has_many :post

  validates :name, :description, presence: {message:"Este campo es requerido"}
end