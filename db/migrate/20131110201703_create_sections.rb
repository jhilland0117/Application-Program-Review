class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :name
      t.text :section_number
      t.text :description

      t.timestamps
      t.references :section_datum
      t.references :criterion
    end
  end
end
