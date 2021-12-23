# Second part of first step, create migration in terminal for auditions 
# by running 'bundle exe rake db:create_migration NAME=create_auditions'
class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |t|
      t.string :actor
      t.string :location
      t.integer :phone
      t.boolean :hired
      t.integer :role_id
    end
  end
end
