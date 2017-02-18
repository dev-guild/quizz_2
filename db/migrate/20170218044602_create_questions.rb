class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :description
      t.string :optionA
      t.string :optionB
      t.string :optionC
      t.string :optionD
      t.string :answer

      t.timestamps
    end
  end
end
