require 'test_helper'

class BugModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bug_model = bug_models(:one)
  end

  test "should get index" do
    get bug_models_url
    assert_response :success
  end

  test "should get new" do
    get new_bug_model_url
    assert_response :success
  end

  test "should create bug_model" do
    assert_difference('BugModel.count') do
      post bug_models_url, params: { bug_model: { description: @bug_model.description, issue_type: @bug_model.issue_type, priority: @bug_model.priority, status: @bug_model.status, title: @bug_model.title } }
    end

    assert_redirected_to bug_model_url(BugModel.last)
  end

  test "should show bug_model" do
    get bug_model_url(@bug_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_bug_model_url(@bug_model)
    assert_response :success
  end

  test "should update bug_model" do
    patch bug_model_url(@bug_model), params: { bug_model: { description: @bug_model.description, issue_type: @bug_model.issue_type, priority: @bug_model.priority, status: @bug_model.status, title: @bug_model.title } }
    assert_redirected_to bug_model_url(@bug_model)
  end

  test "should destroy bug_model" do
    assert_difference('BugModel.count', -1) do
      delete bug_model_url(@bug_model)
    end

    assert_redirected_to bug_models_url
  end
end
