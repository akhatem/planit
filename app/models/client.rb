# == Schema Information
#
# Table name: clients
#
#  id             :bigint           not null, primary key
#  name_en        :string
#  name_ar        :string
#  description_en :string
#  description_ar :string
#  attachment     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Client < ApplicationRecord
end
