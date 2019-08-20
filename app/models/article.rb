class Article < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 5 }
  resources :articles do
    resources :comments
  end
end
