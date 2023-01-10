class Lesson < ApplicationRecord
    belongs_to :student
    belongs_to :teacher
    # belongs_to :material
    # http://api.alquran.cloud/v1/surah
    def created_at
      attributes['created_at'].strftime("%Y-%m-%d")
    end
end
