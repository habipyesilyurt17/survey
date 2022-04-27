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
class Question < ApplicationRecord
  belongs_to :survey
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true

  enum question_type: {
    single_choice: 0,
    multiple_choice: 1,
    long_answer: 2
  }
end
