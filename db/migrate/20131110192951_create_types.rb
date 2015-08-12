class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.text :name

      t.timestamps
      t.references :apr_report
    end
  end
end
