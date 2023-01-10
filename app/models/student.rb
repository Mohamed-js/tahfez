class Student < ApplicationRecord
    has_one_attached :avatar do |attachable|
        attachable.variant :thumb, resize_to_limit: [100, 100]
    end
    has_many :lessons
    scope :with_day, -> { select(:id, :name, :created_at) }

    def created_at
        attributes['created_at'].strftime("%Y-%m-%d")
    end
end
