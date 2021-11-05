class Message < ApplicationRecord
  belongs_to :post

  validates :author, :message,
  presence: {message:"Este campo es requerido"}

  validates :message, length:{minimum: 15}
end