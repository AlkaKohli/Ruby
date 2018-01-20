require 'test_helper'

class Idea1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idea1 = idea1s(:one)
  end

  test "should get index" do
    get idea1s_url
    assert_response :success
  end

  test "should get new" do
    get new_idea1_url
    assert_response :success
  end

  test "should create idea1" do
    assert_difference('Idea1.count') do
      post idea1s_url, params: { idea1: { age: @idea1.age, description: @idea1.description, name: @idea1.name, picture: @idea1.picture } }
    end

    assert_redirected_to idea1_url(Idea1.last)
  end

  test "should show idea1" do
    get idea1_url(@idea1)
    assert_response :success
  end

  test "should get edit" do
    get edit_idea1_url(@idea1)
    assert_response :success
  end

  test "should update idea1" do
    patch idea1_url(@idea1), params: { idea1: { age: @idea1.age, description: @idea1.description, name: @idea1.name, picture: @idea1.picture } }
    assert_redirected_to idea1_url(@idea1)
  end

  test "should destroy idea1" do
    assert_difference('Idea1.count', -1) do
      delete idea1_url(@idea1)
    end

    assert_redirected_to idea1s_url
  end
end
