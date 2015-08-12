class CreatePdfs < ActiveRecord::Migration
  def change
    create_table :pdfs do |t|
      t.text :url
      t.text :temp_url

      t.timestamps
      t.references :apr_report
    end
  end
end
