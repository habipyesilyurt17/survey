class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string   :name
      t.integer  :question_type
      t.integer  :survey_id
      t.timestamps
    end
  end
end
