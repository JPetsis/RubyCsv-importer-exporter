require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Artikelname", with: @product.Artikelname
    fill_in "Bein", with: @product.Bein
    fill_in "Beschreibung", with: @product.Beschreibung
    fill_in "Bildname", with: @product.Bildname
    fill_in "Geschlecht", with: @product.Geschlecht
    fill_in "Grammatur", with: @product.Grammatur
    fill_in "Hauptartikelnr", with: @product.Hauptartikelnr
    fill_in "Hersteller", with: @product.Hersteller
    fill_in "Herstellung", with: @product.Herstellung
    fill_in "Kragen", with: @product.Kragen
    fill_in "Material", with: @product.Material
    fill_in "Materialangaben", with: @product.Materialangaben
    fill_in "Produktart", with: @product.Produktart
    fill_in "Taschenart", with: @product.Taschenart
    fill_in "Ursprungsland", with: @product.Ursprungsland
    fill_in "Ärmel", with: @product.Ärmel
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Artikelname", with: @product.Artikelname
    fill_in "Bein", with: @product.Bein
    fill_in "Beschreibung", with: @product.Beschreibung
    fill_in "Bildname", with: @product.Bildname
    fill_in "Geschlecht", with: @product.Geschlecht
    fill_in "Grammatur", with: @product.Grammatur
    fill_in "Hauptartikelnr", with: @product.Hauptartikelnr
    fill_in "Hersteller", with: @product.Hersteller
    fill_in "Herstellung", with: @product.Herstellung
    fill_in "Kragen", with: @product.Kragen
    fill_in "Material", with: @product.Material
    fill_in "Materialangaben", with: @product.Materialangaben
    fill_in "Produktart", with: @product.Produktart
    fill_in "Taschenart", with: @product.Taschenart
    fill_in "Ursprungsland", with: @product.Ursprungsland
    fill_in "Ärmel", with: @product.Ärmel
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
