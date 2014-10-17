class CreateCompanyOwners < ActiveRecord::Migration
  def change
    create_table :company_owners do |t|
      t.references :company, index: true
      t.references :user, index: true
      t.timestamps
    end
  end
end
