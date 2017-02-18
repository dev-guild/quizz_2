class CreateKokoTestAjas < ActiveRecord::Migration[5.0]
  def change
    create_table :koko_test_ajas do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
