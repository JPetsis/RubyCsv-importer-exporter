require 'csv'
class Product < ApplicationRecord
  def self.to_csv(fields = column_names, options = {})
    CSV.generate(options) do |csv|
      csv << fields
      all.each do |product|
        csv << product.attributes.values_at(*fields)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      product_hash = row.to_hash
      product = find_or_create_by!(
        artikelname: product_hash['artikelname'],
        hersteller: product_hash['hersteller'],
        beschreibung: product_hash['beschreibung'],
        materialangaben: product_hash['materialangaben'],
        geschlecht: product_hash['geschlecht'],
        produktart: product_hash['produktart'],
        aermel: product_hash['aermel'],
        bein: product_hash['bein'],
        kragen: product_hash['kragen'],
        herstellung: product_hash['herstellung'],
        taschenart: product_hash['taschenart'],
        grammatur: product_hash['grammatur'],
        material: product_hash['material'],
        ursprungsland: product_hash['ursprungsland'],
        bildname: product_hash['bildname']
      )
    end
  end
end
