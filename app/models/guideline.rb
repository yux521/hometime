class Guideline < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '10分以下' },
    { id: 3, name: '15分' },
    { id: 4, name: '20分' },
    { id: 5, name: '30分' },
    { id: 6, name: '40分' },
    { id: 7, name: '50分' },
    { id: 8, name: '1時間' },
    { id: 9, name: '1時間10分' },
    { id: 10, name: '1時間20分' },
    { id: 11, name: '1時間30分' },
    { id: 12, name: '1時間40分' },
    { id: 13, name: '1時間50分' },
    { id: 14, name: '2時間' },
    { id: 15, name: '2時間以上' }
  ]

  include ActiveHash::Associations
  has_many :recipes
end
