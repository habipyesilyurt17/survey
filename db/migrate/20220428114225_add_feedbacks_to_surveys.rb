class AddFeedbacksToSurveys < ActiveRecord::Migration[6.1]
  def change
    change_table :surveys do |t|
      t.jsonb    :feedbacks
    end
  end
end
