require 'test_helper'

class AssignmentprojsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignmentproj = assignmentprojs(:one)
  end

  test "should get index" do
    get assignmentprojs_url
    assert_response :success
  end

  test "should get new" do
    get new_assignmentproj_url
    assert_response :success
  end

  test "should create assignmentproj" do
    assert_difference('Assignmentproj.count') do
      post assignmentprojs_url, params: { assignmentproj: { description: @assignmentproj.description, name: @assignmentproj.name, realized: @assignmentproj.realized } }
    end

    assert_redirected_to assignmentproj_url(Assignmentproj.last)
  end

  test "should show assignmentproj" do
    get assignmentproj_url(@assignmentproj)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignmentproj_url(@assignmentproj)
    assert_response :success
  end

  test "should update assignmentproj" do
    patch assignmentproj_url(@assignmentproj), params: { assignmentproj: { description: @assignmentproj.description, name: @assignmentproj.name, realized: @assignmentproj.realized } }
    assert_redirected_to assignmentproj_url(@assignmentproj)
  end

  test "should destroy assignmentproj" do
    assert_difference('Assignmentproj.count', -1) do
      delete assignmentproj_url(@assignmentproj)
    end

    assert_redirected_to assignmentprojs_url
  end
end
