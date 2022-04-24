class HairRemoval < ApplicationRecord
  belongs_to :customer
  belongs_to :treatment
  belongs_to :part

  validates :treatment_id, :part_id, numericality: { other_than: 1 } 

  validates :treatment_date, presence: true
end
