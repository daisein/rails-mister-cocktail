class AddIntroToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :Intro, :string
  end
end
