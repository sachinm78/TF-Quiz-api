class AddCategoryIDtoQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :category_id, :integer
  end
end
