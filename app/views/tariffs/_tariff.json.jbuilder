json.extract! tariff, :id, :distribution, :state, :aneel_number, :initial_validity, :final_validity, :subgroup, :tusd_application_reais_per_mwh, :te_application_reais_per_mwh, :total_fee_without_tax_reais_pew_mwh, :pis_confis, :icms, :fee_with_tax_reais_per_mwh, :created_at, :updated_at
json.url tariff_url(tariff, format: :json)
