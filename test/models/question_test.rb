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
require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
