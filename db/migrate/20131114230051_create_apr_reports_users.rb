class CreateAprReportsUsers < ActiveRecord::Migration
  def change
    create_table :apr_reports_users do |t|
	t.references :user
	t.references :apr_report
    end
  end
end
