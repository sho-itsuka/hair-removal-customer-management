class Treatment < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ワックス脱毛' },
    { id: 3, name: '光脱毛(IPL)' },
    { id: 4, name: '光脱毛(SHR)' },
    { id: 5, name: 'ワックス＋光脱毛' }
  ]

  include ActiveHash::Associations
  has_many :hair_removals
  
end