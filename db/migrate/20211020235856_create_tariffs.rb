class CreateTariffs < ActiveRecord::Migration[6.1]
  def change
    create_table :tariffs do |t|
      t.string :distribution
      t.string :state
      t.string :aneel_number
      t.string :initial_validity
      t.string :final_validity
      t.string :subgroup
      t.float :tusd_application_reais_per_mwh
      t.float :te_application_reais_per_mwh
      t.float :total_fee_without_tax_reais_per_mwh
      t.float :pis_confis
      t.float :icms
      t.float :fee_with_tax_reais_per_mwh

      t.timestamps
    end
  end
end
