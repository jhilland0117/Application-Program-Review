class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.text :name
      t.date :deadline

      t.timestamps
      t.references :apr_report
    end
  end
end
