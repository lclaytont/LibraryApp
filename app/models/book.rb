class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre

  scope :checked_out, -> {
    where(available: false)
  }

  scope :checked_in, -> {
    where(available: true)
  }

end
