json.extract! product, :id, :Hauptartikelnr, :Artikelname, :Hersteller, :Beschreibung, :Materialangaben, :Geschlecht, :Produktart, :Ärmel, :Bein, :Kragen, :Herstellung, :Taschenart, :Grammatur, :Material, :Ursprungsland, :Bildname, :created_at, :updated_at
json.url product_url(product, format: :json)
