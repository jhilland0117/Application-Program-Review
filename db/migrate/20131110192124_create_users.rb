class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :username
      t.text :first_name
      t.text :last_name

      t.timestamps
      t.references :user_role
    end
  end
end
