class Teacher < ApplicationRecord
    has_one_attached :avatar do |attachable|
        attachable.variant :thumb, resize_to_limit: [100, 100]
    end
    has_one_attached :video do |attachable|
        attachable.variant :thumb, resize_to_limit: [100, 100]
    end
    has_many :lessons
    has_many :availabilities
    has_many :students, through: :lessons
end
