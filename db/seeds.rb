#  name_en         :string
#  name_ar         :string
#  description_en  :text
#  description_ar  :text
#  image           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  department_type :string

if Rails.env.development? && Department.count.zero?
  Department.find_or_create_by(
    name_en: 'Department 1',
    name_ar: 'قسم 1',
    description_en: 'Department 1 description',
    description_ar: 'تفاصيل قسم 1',
    image: File.open(File.join(Rails.root, 'app/assets/images/placeholder.png')),
    department_type: 'supervision'
  )
end
