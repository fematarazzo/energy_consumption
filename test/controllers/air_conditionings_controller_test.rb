require "test_helper"

class AirConditioningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @air_conditioning = air_conditionings(:one)
  end

  test "should get index" do
    get air_conditionings_url
    assert_response :success
  end

  test "should get new" do
    get new_air_conditioning_url
    assert_response :success
  end

  test "should create air_conditioning" do
    assert_difference('AirConditioning.count') do
      post air_conditionings_url, params: { air_conditioning: { brand: @air_conditioning.brand, capacity_btu_hour: @air_conditioning.capacity_btu_hour, capacity_kw: @air_conditioning.capacity_kw, category: @air_conditioning.category, consumption_127v: @air_conditioning.consumption_127v, consumption_220v: @air_conditioning.consumption_220v, consumption_average_brazil_kwh_per_month: @air_conditioning.consumption_average_brazil_kwh_per_month, consumption_procel_kwh_per_month: @air_conditioning.consumption_procel_kwh_per_month, efficiency_kw_127v: @air_conditioning.efficiency_kw_127v, efficiency_kw_220v: @air_conditioning.efficiency_kw_220v, hours_consumption_per_month: @air_conditioning.hours_consumption_per_month, model_extern: @air_conditioning.model_extern, model_intern: @air_conditioning.model_intern, power_kw: @air_conditioning.power_kw, provider: @air_conditioning.provider, version: @air_conditioning.version, voltage: @air_conditioning.voltage } }
    end

    assert_redirected_to air_conditioning_url(AirConditioning.last)
  end

  test "should show air_conditioning" do
    get air_conditioning_url(@air_conditioning)
    assert_response :success
  end

  test "should get edit" do
    get edit_air_conditioning_url(@air_conditioning)
    assert_response :success
  end

  test "should update air_conditioning" do
    patch air_conditioning_url(@air_conditioning), params: { air_conditioning: { brand: @air_conditioning.brand, capacity_btu_hour: @air_conditioning.capacity_btu_hour, capacity_kw: @air_conditioning.capacity_kw, category: @air_conditioning.category, consumption_127v: @air_conditioning.consumption_127v, consumption_220v: @air_conditioning.consumption_220v, consumption_average_brazil_kwh_per_month: @air_conditioning.consumption_average_brazil_kwh_per_month, consumption_procel_kwh_per_month: @air_conditioning.consumption_procel_kwh_per_month, efficiency_kw_127v: @air_conditioning.efficiency_kw_127v, efficiency_kw_220v: @air_conditioning.efficiency_kw_220v, hours_consumption_per_month: @air_conditioning.hours_consumption_per_month, model_extern: @air_conditioning.model_extern, model_intern: @air_conditioning.model_intern, power_kw: @air_conditioning.power_kw, provider: @air_conditioning.provider, version: @air_conditioning.version, voltage: @air_conditioning.voltage } }
    assert_redirected_to air_conditioning_url(@air_conditioning)
  end

  test "should destroy air_conditioning" do
    assert_difference('AirConditioning.count', -1) do
      delete air_conditioning_url(@air_conditioning)
    end

    assert_redirected_to air_conditionings_url
  end
end
