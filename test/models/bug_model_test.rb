require 'test_helper'

class BugModelTest < ActiveSupport::TestCase

  def setup
    @bug_model = BugModel.create(title:"a testt case", description:"This is a description of what the type and behavior of the bug", issue_type: 1, priority: 0, status:0)
  end

  test "bug must be valid" do
    assert @bug_model.valid?
  end

  test "title must be present" do
    @bug_model.title = ""
    assert_not @bug_model.valid?
  end

  test "title must not be too short" do
    @bug_model.title = "aa"
    assert_not @bug_model.valid?
  end

  test "title must not be too long" do
    @bug_model.title = "a" * 16
    assert_not @bug_model.valid?
  end

  test "description must be present" do
    @bug_model.description = ""
    assert_not @bug_model.valid?
  end

  test "description must not be too short" do
    @bug_model.description = "aa"
    assert_not @bug_model.valid?
  end

  test "issue_type must be valid" do
    valid_issue_types = [:issue, :enhancement, :feature]
    valid_issue_types.each do |is|
      begin
        @bug_model.issue_type = is
        assert true
      rescue
        assert false, "#{is} should be invalid"
      end
    end
  end

  test "priority must be valid" do
    valid_priorities = [:low, :medium, :high]
    valid_priorities.each do |is|
      begin
        @bug_model.priority = is
        assert true
      rescue
        assert false, "#{is} should be invalid"
      end
    end
  end

  test "status must be valid" do
    valid_statuses = [:open, :closed, :monitor]
    valid_statuses.each do |is|
      begin
        @bug_model.status = is
        assert true
      rescue
        assert false, "#{is} should be invalid"
      end
    end
  end




  # test "the truth" do
  #   assert true
  # end
end
