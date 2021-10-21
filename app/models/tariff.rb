class Tariff < ApplicationRecord
    require 'csv'
    require 'activerecord-import/base'
    require 'activerecord-import/active_record/adapters/postgresql_adapter'

    def self.my_import(file)
        tariffs = []
        CSV.foreach(file.path, headers: true) do |row|
            tariffs << Tariff.new(row.to_h)
        end
        Tariff.import tariffs, recursive: true
    end
end
