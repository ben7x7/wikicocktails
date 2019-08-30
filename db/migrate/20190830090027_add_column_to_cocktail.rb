class AddColumnToCocktail < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :technique, :text
  end
end
