# == Schema Information
#
# Table name: surveys
#
#  id         :bigint           not null, primary key
#  feedbacks  :jsonb
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SurveySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :questions
end
