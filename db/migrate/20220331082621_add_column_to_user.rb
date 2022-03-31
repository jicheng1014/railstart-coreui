class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :is_admin, :boolean, default: false
    add_column :users, :gender, :string

    add_column :users, :name, :string  
    add_column :users, :avatar, :string
    add_column :users, :bio, :text
    add_column :users, :birthday, :date
    add_column :users, :color, :string
    add_column :users, :fruit, :string
    add_column :users, :music, :string
    add_column :users, :pill, :string
    add_column :users, :choises, :string
    add_column :users, :language, :string
    add_column :users, :friends, :integer
    add_column :users, :mood, :integer
    add_column :users, :awake, :time
    add_column :users, :first_kiss, :datetime
    add_column :users, :active, :boolean
    add_column :users, :terms, :boolean
  end
end
