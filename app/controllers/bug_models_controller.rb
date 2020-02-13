class BugModelsController < ApplicationController
  before_action :set_bug_model, only: [:show, :edit, :update, :destroy]
  before_action :set_issue_types
  before_action :set_priorities
  before_action :set_statuses
  # GET /bug_models
  # GET /bug_models.json
  def index
    @bug_models = BugModel.all
  end

  # GET /bug_models/1
  # GET /bug_models/1.json
  def show
  end

  # GET /bug_models/new
  def new
    @bug_model = BugModel.new
  end

  # GET /bug_models/1/edit
  def edit
  end

  # POST /bug_models
  # POST /bug_models.json
  def create
    @bug_model = BugModel.new(bug_model_params)

    respond_to do |format|
      if @bug_model.save
        format.html { redirect_to @bug_model, notice: 'Bug model was successfully created.' }
        format.json { render :show, status: :created, location: @bug_model }
      else
        format.html { render :new }
        format.json { render json: @bug_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bug_models/1
  # PATCH/PUT /bug_models/1.json
  def update
    respond_to do |format|
      if @bug_model.update(bug_model_params)
        format.html { redirect_to @bug_model, notice: 'Bug model was successfully updated.' }
        format.json { render :show, status: :ok, location: @bug_model }
      else
        format.html { render :edit }
        format.json { render json: @bug_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bug_models/1
  # DELETE /bug_models/1.json
  def destroy
    @bug_model.destroy
    respond_to do |format|
      format.html { redirect_to bug_models_url, notice: 'Bug model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bug_model
      @bug_model = BugModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bug_model_params
      params.require(:bug_model).permit(:title, :description, :issue_type, :priority, :status)
    end

    def set_issue_types
      @issues = BugModel.issue_types
    end

    def set_priorities
      @priorities = BugModel.priorities
    end

    def set_statuses
      @statuses = BugModel.statuses
    end
end





