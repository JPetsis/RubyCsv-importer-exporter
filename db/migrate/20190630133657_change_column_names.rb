class ChangeColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :Hauptartikelnr, :hauptartikelnr
    rename_column :products, :Artikelname, :artikelname
    rename_column :products, :Hersteller, :hersteller
    rename_column :products, :Beschreibung, :beschreibung
    rename_column :products, :Materialangaben, :materialangaben
    rename_column :products, :Geschlecht, :geschlecht
    rename_column :products, :Produktart, :produktart
    rename_column :products, :Aermel, :aermel
    rename_column :products, :Bein, :bein
    rename_column :products, :Kragen, :kragen
    rename_column :products, :Herstellung, :herstellung
    rename_column :products, :Taschenart, :taschenart
    rename_column :products, :Grammatur, :grammatur
    rename_column :products, :Material, :material
    rename_column :products, :Ursprungsland, :ursprungsland
    rename_column :products, :Bildname, :bildname
  end
end
