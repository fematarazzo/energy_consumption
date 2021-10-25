class AirConditioning < ApplicationRecord
    require 'csv'
    require 'activerecord-import/base'
    require 'activerecord-import/active_record/adapters/postgresql_adapter'

    has_and_belongs_to_many :tariffs

    def self.my_import(file)
        air_conditionings = []
        CSV.foreach(file.path, headers: true) do |row|
            air_conditionings << AirConditioning.new(row.to_h)
        end
        AirConditioning.import air_conditionings, recursive: true
    end
end
