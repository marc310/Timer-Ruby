require 'test_helper'

class FaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fatura = faturas(:one)
  end

  test "should get index" do
    get faturas_url
    assert_response :success
  end

  test "should get new" do
    get new_fatura_url
    assert_response :success
  end

  test "should create fatura" do
    assert_difference('Fatura.count') do
      post faturas_url, params: { fatura: { emissao: @fatura.emissao, pago: @fatura.pago, totalFatura: @fatura.totalFatura, vencimento: @fatura.vencimento } }
    end

    assert_redirected_to fatura_url(Fatura.last)
  end

  test "should show fatura" do
    get fatura_url(@fatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_fatura_url(@fatura)
    assert_response :success
  end

  test "should update fatura" do
    patch fatura_url(@fatura), params: { fatura: { emissao: @fatura.emissao, pago: @fatura.pago, totalFatura: @fatura.totalFatura, vencimento: @fatura.vencimento } }
    assert_redirected_to fatura_url(@fatura)
  end

  test "should destroy fatura" do
    assert_difference('Fatura.count', -1) do
      delete fatura_url(@fatura)
    end

    assert_redirected_to faturas_url
  end
end
