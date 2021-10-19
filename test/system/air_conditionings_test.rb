require "application_system_test_case"

class AirConditioningsTest < ApplicationSystemTestCase
  setup do
    @air_conditioning = air_conditionings(:one)
  end

  test "visiting the index" do
    visit air_conditionings_url
    assert_selector "h1", text: "Air Conditionings"
  end

  test "creating a Air conditioning" do
    visit air_conditionings_url
    click_on "New Air Conditioning"

    fill_in "Brand", with: @air_conditioning.brand
    fill_in "Capacity btu hour", with: @air_conditioning.capacity_btu_hour
    fill_in "Capacity kw", with: @air_conditioning.capacity_kw
    fill_in "Category", with: @air_conditioning.category
    fill_in "Consumption 127v", with: @air_conditioning.consumption_127v
    fill_in "Consumption 220v", with: @air_conditioning.consumption_220v
    fill_in "Consumption average brazil kwh per month", with: @air_conditioning.consumption_average_brazil_kwh_per_month
    fill_in "Consumption procel kwh per month", with: @air_conditioning.consumption_procel_kwh_per_month
    fill_in "Efficiency kw 127v", with: @air_conditioning.efficiency_kw_127v
    fill_in "Efficiency kw 220v", with: @air_conditioning.efficiency_kw_220v
    fill_in "Hours consumption per month", with: @air_conditioning.hours_consumption_per_month
    fill_in "Model extern", with: @air_conditioning.model_extern
    fill_in "Model intern", with: @air_conditioning.model_intern
    fill_in "Power kw", with: @air_conditioning.power_kw
    fill_in "Provider", with: @air_conditioning.provider
    fill_in "Version", with: @air_conditioning.version
    fill_in "Voltage", with: @air_conditioning.voltage
    click_on "Create Air conditioning"

    assert_text "Air conditioning was successfully created"
    click_on "Back"
  end

  test "updating a Air conditioning" do
    visit air_conditionings_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @air_conditioning.brand
    fill_in "Capacity btu hour", with: @air_conditioning.capacity_btu_hour
    fill_in "Capacity kw", with: @air_conditioning.capacity_kw
    fill_in "Category", with: @air_conditioning.category
    fill_in "Consumption 127v", with: @air_conditioning.consumption_127v
    fill_in "Consumption 220v", with: @air_conditioning.consumption_220v
    fill_in "Consumption average brazil kwh per month", with: @air_conditioning.consumption_average_brazil_kwh_per_month
    fill_in "Consumption procel kwh per month", with: @air_conditioning.consumption_procel_kwh_per_month
    fill_in "Efficiency kw 127v", with: @air_conditioning.efficiency_kw_127v
    fill_in "Efficiency kw 220v", with: @air_conditioning.efficiency_kw_220v
    fill_in "Hours consumption per month", with: @air_conditioning.hours_consumption_per_month
    fill_in "Model extern", with: @air_conditioning.model_extern
    fill_in "Model intern", with: @air_conditioning.model_intern
    fill_in "Power kw", with: @air_conditioning.power_kw
    fill_in "Provider", with: @air_conditioning.provider
    fill_in "Version", with: @air_conditioning.version
    fill_in "Voltage", with: @air_conditioning.voltage
    click_on "Update Air conditioning"

    assert_text "Air conditioning was successfully updated"
    click_on "Back"
  end

  test "destroying a Air conditioning" do
    visit air_conditionings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Air conditioning was successfully destroyed"
  end
end
