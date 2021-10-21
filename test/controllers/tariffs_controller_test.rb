require "test_helper"

class TariffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tariff = tariffs(:one)
  end

  test "should get index" do
    get tariffs_url
    assert_response :success
  end

  test "should get new" do
    get new_tariff_url
    assert_response :success
  end

  test "should create tariff" do
    assert_difference('Tariff.count') do
      post tariffs_url, params: { tariff: { aneel_number: @tariff.aneel_number, distribution: @tariff.distribution, fee_with_tax_reais_per_mwh: @tariff.fee_with_tax_reais_per_mwh, final_validity: @tariff.final_validity, icms: @tariff.icms, initial_validity: @tariff.initial_validity, pis_confis: @tariff.pis_confis, state: @tariff.state, subgroup: @tariff.subgroup, te_application_reais_per_mwh: @tariff.te_application_reais_per_mwh, total_fee_without_tax_reais_pew_mwh: @tariff.total_fee_without_tax_reais_pew_mwh, tusd_application_reais_per_mwh: @tariff.tusd_application_reais_per_mwh } }
    end

    assert_redirected_to tariff_url(Tariff.last)
  end

  test "should show tariff" do
    get tariff_url(@tariff)
    assert_response :success
  end

  test "should get edit" do
    get edit_tariff_url(@tariff)
    assert_response :success
  end

  test "should update tariff" do
    patch tariff_url(@tariff), params: { tariff: { aneel_number: @tariff.aneel_number, distribution: @tariff.distribution, fee_with_tax_reais_per_mwh: @tariff.fee_with_tax_reais_per_mwh, final_validity: @tariff.final_validity, icms: @tariff.icms, initial_validity: @tariff.initial_validity, pis_confis: @tariff.pis_confis, state: @tariff.state, subgroup: @tariff.subgroup, te_application_reais_per_mwh: @tariff.te_application_reais_per_mwh, total_fee_without_tax_reais_pew_mwh: @tariff.total_fee_without_tax_reais_pew_mwh, tusd_application_reais_per_mwh: @tariff.tusd_application_reais_per_mwh } }
    assert_redirected_to tariff_url(@tariff)
  end

  test "should destroy tariff" do
    assert_difference('Tariff.count', -1) do
      delete tariff_url(@tariff)
    end

    assert_redirected_to tariffs_url
  end
end
