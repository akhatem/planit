# == Schema Information
#
# Table name: departments
#
#  id             :bigint           not null, primary key
#  name_en        :string
#  name_ar        :string
#  description_en :text
#  description_ar :text
#  image          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Department < ApplicationRecord

    has_one_attached :image
    
    validates :name_en, presence: true
    validates :name_ar, presence: true
    validates :description_en, presence: true
    validates :description_ar, presence: true
    validates :image, presence: true

end
