# == Schema Information
#
# Table name: questions
#
#  id            :bigint           not null, primary key
#  name          :string
#  question_type :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  survey_id     :integer
#
class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_type, :name
  has_many :answers
  belongs_to :survey
end
