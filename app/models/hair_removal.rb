class HairRemoval < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :customer
  belongs_to :treatment
  belongs_to :part
  has_one_attached :image

  validates :treatment_id, :part_id, numericality: { other_than: 1 } 

  validates :treatment_date, presence: true
end
