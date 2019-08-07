class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.boolean :answer

      t.timestamps
    end
  end
end
