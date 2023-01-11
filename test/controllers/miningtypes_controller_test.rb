require 'test_helper'

class MiningtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @miningtype = miningtypes(:one)
  end

  test "should get index" do
    get miningtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_miningtype_url
    assert_response :success
  end

  test "should create miningtype" do
    assert_difference('Miningtype.count') do
      post miningtypes_url, params: { miningtype: { acronym: @miningtype.acronym, description: @miningtype.description, string: @miningtype.string } }
    end

    assert_redirected_to miningtype_url(Miningtype.last)
  end

  test "should show miningtype" do
    get miningtype_url(@miningtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_miningtype_url(@miningtype)
    assert_response :success
  end

  test "should update miningtype" do
    patch miningtype_url(@miningtype), params: { miningtype: { acronym: @miningtype.acronym, description: @miningtype.description, string: @miningtype.string } }
    assert_redirected_to miningtype_url(@miningtype)
  end

  test "should destroy miningtype" do
    assert_difference('Miningtype.count', -1) do
      delete miningtype_url(@miningtype)
    end

    assert_redirected_to miningtypes_url
  end
end
