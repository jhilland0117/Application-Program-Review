class EditSectionsAndCriterion < ActiveRecord::Migration
  def change
  	change_table :criterions do |t|
	  t.string :criterion_number
	  t.string :description

	  t.index :criterion_number
	  t.index :description
	end

  	remove_column :sections, :name	



  end
end
