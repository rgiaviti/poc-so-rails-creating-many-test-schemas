class Article < ApplicationRecord
    has_many :comments

    validates :body, :title, presence: true
end
