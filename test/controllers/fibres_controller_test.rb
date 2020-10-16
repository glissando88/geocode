require 'test_helper'

class FibresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fibre = fibres(:one)
  end

  test "should get index" do
    get fibres_url
    assert_response :success
  end

  test "should get new" do
    get new_fibre_url
    assert_response :success
  end

  test "should create fibre" do
    assert_difference('Fibre.count') do
      post fibres_url, params: { fibre: { address: @fibre.address, serviceid: @fibre.serviceid } }
    end

    assert_redirected_to fibre_url(Fibre.last)
  end

  test "should show fibre" do
    get fibre_url(@fibre)
    assert_response :success
  end

  test "should get edit" do
    get edit_fibre_url(@fibre)
    assert_response :success
  end

  test "should update fibre" do
    patch fibre_url(@fibre), params: { fibre: { address: @fibre.address, serviceid: @fibre.serviceid } }
    assert_redirected_to fibre_url(@fibre)
  end

  test "should destroy fibre" do
    assert_difference('Fibre.count', -1) do
      delete fibre_url(@fibre)
    end

    assert_redirected_to fibres_url
  end
end
