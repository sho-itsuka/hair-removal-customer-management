class Customer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :gender
  belongs_to :prefecture
  
  validates :gender_id, :prefecture_id, numericality: { other_than: 1 } 
  
  validates :postal_code, format: { with: /\A\d{3}-\d{4}\z/, message: "is invalid. Enter it as follows(e.g. 123-4567)" }
  
  with_options presence: true, format: { with: /\A0[5789]0-?\d{4}-?\d{4}\z/, message: 'is invalid. Input only number' } do
    validates :phone_number
  end

  validates :phone_number, format: { with: /\A\d{10,11}\z/, message: 'is too short' }
  
  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ } do
    validates :first_name
    validates :last_name
  end

  with_options presence: true, format: { with: /\A[ァ-ヶ一]+\z/ } do
    validates :first_name_kana
    validates :last_name_kana
  end

end