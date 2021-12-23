# First step is to create migration by running 'bundle exe rake db:create_migration NAME=create_roles' in terminal
class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :character_name
    end
  end
end
