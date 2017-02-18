class CreateQuestionSets < ActiveRecord::Migration[5.0]
  def change
    create_table :question_sets do |t|
      t.string :testcode
      t.integer :user_id
      t.integer :question_id
      t.string :user_answer
      t.string :result

      t.timestamps
    end
  end
end
