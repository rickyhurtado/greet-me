class Contact < ApplicationRecord

  has_many :interests

  scope :gender, -> (gender) { where(gender: gender) }
  scope :males, -> { gender('m') }
  scope :females, -> do
    gender('f')
  end

end
