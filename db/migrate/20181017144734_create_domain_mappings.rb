class CreateDomainMappings < ActiveRecord::Migration[5.2]
  def change
    create_table :domain_mappings do |t|
      t.string :subdomain
      t.string :cohort_name

      t.timestamps
    end
  end
end
