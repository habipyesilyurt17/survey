# == Schema Information
#
# Table name: answers
#
#  id          :bigint           not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#
class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :question
end
