require "application_system_test_case"

class TariffsTest < ApplicationSystemTestCase
  setup do
    @tariff = tariffs(:one)
  end

  test "visiting the index" do
    visit tariffs_url
    assert_selector "h1", text: "Tariffs"
  end

  test "creating a Tariff" do
    visit tariffs_url
    click_on "New Tariff"

    fill_in "Aneel number", with: @tariff.aneel_number
    fill_in "Distribution", with: @tariff.distribution
    fill_in "Fee with tax reais per mwh", with: @tariff.fee_with_tax_reais_per_mwh
    fill_in "Final validity", with: @tariff.final_validity
    fill_in "Icms", with: @tariff.icms
    fill_in "Initial validity", with: @tariff.initial_validity
    fill_in "Pis confis", with: @tariff.pis_confis
    fill_in "State", with: @tariff.state
    fill_in "Subgroup", with: @tariff.subgroup
    fill_in "Te application reais per mwh", with: @tariff.te_application_reais_per_mwh
    fill_in "Total fee without tax reais pew mwh", with: @tariff.total_fee_without_tax_reais_pew_mwh
    fill_in "Tusd application reais per mwh", with: @tariff.tusd_application_reais_per_mwh
    click_on "Create Tariff"

    assert_text "Tariff was successfully created"
    click_on "Back"
  end

  test "updating a Tariff" do
    visit tariffs_url
    click_on "Edit", match: :first

    fill_in "Aneel number", with: @tariff.aneel_number
    fill_in "Distribution", with: @tariff.distribution
    fill_in "Fee with tax reais per mwh", with: @tariff.fee_with_tax_reais_per_mwh
    fill_in "Final validity", with: @tariff.final_validity
    fill_in "Icms", with: @tariff.icms
    fill_in "Initial validity", with: @tariff.initial_validity
    fill_in "Pis confis", with: @tariff.pis_confis
    fill_in "State", with: @tariff.state
    fill_in "Subgroup", with: @tariff.subgroup
    fill_in "Te application reais per mwh", with: @tariff.te_application_reais_per_mwh
    fill_in "Total fee without tax reais pew mwh", with: @tariff.total_fee_without_tax_reais_pew_mwh
    fill_in "Tusd application reais per mwh", with: @tariff.tusd_application_reais_per_mwh
    click_on "Update Tariff"

    assert_text "Tariff was successfully updated"
    click_on "Back"
  end

  test "destroying a Tariff" do
    visit tariffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tariff was successfully destroyed"
  end
end
