class CreateAirConditionings < ActiveRecord::Migration[6.1]
  def change
    create_table :air_conditionings do |t|
      t.string :category
      t.string :provider
      t.string :brand
      t.string :model_intern
      t.string :model_extern
      t.string :version
      t.float :capacity_btu_hour
      t.float :capacity_kw
      t.float :power_kw
      t.float :efficiency_kw_127v
      t.float :efficiency_kw_220v
      t.float :consumption_127v
      t.float :consumption_220v
      t.string :voltage
      t.float :consumption_procel_kwh_per_month
      t.float :consumption_average_brazil_kwh_per_month
      t.float :hours_consumption_per_month

      t.timestamps
    end
  end
end
