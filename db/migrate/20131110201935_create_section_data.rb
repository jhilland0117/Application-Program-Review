class CreateSectionData < ActiveRecord::Migration
  def change
    create_table :section_data do |t|
      t.text :data

      t.timestamps
      t.references :apr_report
      t.references :section
    end
  end
end
