class CreateUnitsUsers < ActiveRecord::Migration
  def change
    create_table :units_users do |t|
	t.references :unit
        t.references :user
    end
  end
end
