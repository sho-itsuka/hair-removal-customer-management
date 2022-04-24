class Part < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'フェイシャル' },
    { id: 3, name: 'ひげ' },
    { id: 4, name: '腕' },
    { id: 5, name: '脇' },
    { id: 6, name: '背中' },
    { id: 7, name: '胸・腹' },
    { id: 8, name: '腹まわり' },
    { id: 9, name: '脚' },
    { id: 10, name: 'VIO' },
    { id: 11, name: '手の甲' },
    { id: 12, name: '足の甲' },
    { id: 13, name: '鼻毛' }
  ]

  include ActiveHash::Associations
  has_many :hair_removals
  
end