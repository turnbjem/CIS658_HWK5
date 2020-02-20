class HomeController < ApplicationController
  def index
    @bug_models = BugModel.take(3)
  end
end
