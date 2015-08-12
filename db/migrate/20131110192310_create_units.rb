class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.text :unit_name

      t.timestamps
      t.references :apr_report
    end
  end
end
