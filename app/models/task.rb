class Task < ApplicationRecord
    validates :content, presence: true, length: { minimum: 10 }
    validates :title, presence: true, length: { maximum: 255 }
end
