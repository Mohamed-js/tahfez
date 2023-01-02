class Lesson < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  # belongs_to :material
  # http://api.alquran.cloud/v1/surah
end
