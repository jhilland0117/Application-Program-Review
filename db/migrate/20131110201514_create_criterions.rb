class CreateCriterions < ActiveRecord::Migration
  def change
    create_table :criterions do |t|
      t.text :name

      t.timestamps
      t.references :section
    end
  end
end
