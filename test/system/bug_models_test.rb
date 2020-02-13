require "application_system_test_case"

class BugModelsTest < ApplicationSystemTestCase
  setup do
    @bug_model = bug_models(:one)
  end

  test "visiting the index" do
    visit bug_models_url
    assert_selector "h1", text: "Bug Models"
  end

  test "creating a Bug model" do
    visit bug_models_url
    click_on "New Bug Model"

    fill_in "Description", with: @bug_model.description
    fill_in "Issue type", with: @bug_model.issue_type
    fill_in "Priority", with: @bug_model.priority
    fill_in "Status", with: @bug_model.status
    fill_in "Title", with: @bug_model.title
    click_on "Create Bug model"

    assert_text "Bug model was successfully created"
    click_on "Back"
  end

  test "updating a Bug model" do
    visit bug_models_url
    click_on "Edit", match: :first

    fill_in "Description", with: @bug_model.description
    fill_in "Issue type", with: @bug_model.issue_type
    fill_in "Priority", with: @bug_model.priority
    fill_in "Status", with: @bug_model.status
    fill_in "Title", with: @bug_model.title
    click_on "Update Bug model"

    assert_text "Bug model was successfully updated"
    click_on "Back"
  end

  test "destroying a Bug model" do
    visit bug_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bug model was successfully destroyed"
  end
end
