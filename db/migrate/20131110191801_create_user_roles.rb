class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.text :role

      t.timestamps
      t.references :user
    end
  end
end
