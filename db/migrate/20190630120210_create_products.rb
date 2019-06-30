class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :Hauptartikelnr
      t.string :Artikelname
      t.string :Hersteller
      t.text :Beschreibung
      t.text :Materialangaben
      t.string :Geschlecht
      t.string :Produktart
      t.string :Ärmel
      t.string :Bein
      t.string :Kragen
      t.string :Herstellung
      t.string :Taschenart
      t.string :Grammatur
      t.string :Material
      t.string :Ursprungsland
      t.string :Bildname

      t.timestamps
    end
  end
end
