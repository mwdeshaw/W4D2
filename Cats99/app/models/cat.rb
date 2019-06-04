# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string           not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'date'

class Cat < ApplicationRecord
  COLORS = %w(orange black white brown blue)

  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: { in: COLORS,
                                 message: "%{value} is not a valid color" }
  validates :sex, length: { maximum: 1,
                            too_long: "%{count} characters is the maximum allowed" },
                            inclusion: { in: %w(M F), message: "%{value} is not a valid sex" }

  def age
    current = Date.current
    (current - birth_date).to_i / 365
  end
end
