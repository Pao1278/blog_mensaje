class Post < ApplicationRecord
  belongs_to :blog
  has_many :message, dependent: :delete_all

  validates :title, :content,
  presence: {message:"Este campo es requerido"}

  validates :title, :content, length:{minimum: 7}
end