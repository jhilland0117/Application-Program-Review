class CreateAprReports < ActiveRecord::Migration
  def change
    create_table :apr_reports do |t|
      t.text :name

      t.timestamps
      t.references :unit
      t.references :milestone
      t.references :pdf
      t.references :section_data
      t.references :type
      	
    end
  end
end
