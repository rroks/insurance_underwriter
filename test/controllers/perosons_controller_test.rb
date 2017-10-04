require 'test_helper'

class PerosonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peroson = perosons(:one)
  end

  test "should get index" do
    get perosons_url
    assert_response :success
  end

  test "should get new" do
    get new_peroson_url
    assert_response :success
  end

  test "should create peroson" do
    assert_difference('Peroson.count') do
      post perosons_url, params: { peroson: { city: @peroson.city, county: @peroson.county, date_of_birth: @peroson.date_of_birth, email: @peroson.email, forename: @peroson.forename, license_period: @peroson.license_period, license_type: @peroson.license_type, occupation: @peroson.occupation, postcode: @peroson.postcode, street: @peroson.street, surname: @peroson.surname, telephone_number: @peroson.telephone_number, title: @peroson.title } }
    end

    assert_redirected_to peroson_url(Peroson.last)
  end

  test "should show peroson" do
    get peroson_url(@peroson)
    assert_response :success
  end

  test "should get edit" do
    get edit_peroson_url(@peroson)
    assert_response :success
  end

  test "should update peroson" do
    patch peroson_url(@peroson), params: { peroson: { city: @peroson.city, county: @peroson.county, date_of_birth: @peroson.date_of_birth, email: @peroson.email, forename: @peroson.forename, license_period: @peroson.license_period, license_type: @peroson.license_type, occupation: @peroson.occupation, postcode: @peroson.postcode, street: @peroson.street, surname: @peroson.surname, telephone_number: @peroson.telephone_number, title: @peroson.title } }
    assert_redirected_to peroson_url(@peroson)
  end

  test "should destroy peroson" do
    assert_difference('Peroson.count', -1) do
      delete peroson_url(@peroson)
    end

    assert_redirected_to perosons_url
  end
end
