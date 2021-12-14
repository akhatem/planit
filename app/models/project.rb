# == Schema Information
#
# Table name: projects
#
#  id             :bigint           not null, primary key
#  name_en        :string
#  name_ar        :string
#  description_en :text
#  description_ar :text
#  attachment     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Project < ApplicationRecord

    has_many_attached :attachments
    
    validates :name_en, presence: true, unless: -> { name_ar.present? }
    validates :name_ar, presence: true, unless: -> { name_en.present? }
    validates :description_en, presence: true, unless: -> { description_ar.present? }
    validates :description_ar, presence: true, unless: -> { description_en.present? }
    validates :attachment, presence: true
end
