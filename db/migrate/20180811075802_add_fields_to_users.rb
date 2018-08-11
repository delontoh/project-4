class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :content, :text
    add_column :users, :skill_1, :string
    add_column :users, :skill_2, :string
    add_column :users, :skill_3, :string
    add_column :users, :skill_4, :string
    add_column :users, :skill_5, :string
  end
end
