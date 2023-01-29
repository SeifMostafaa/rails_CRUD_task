class Book < ApplicationRecord
  belongs_to :admin_user
  has_many :chapters, dependent: :destroy
  validates :title, presence: true
end
