class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def show
    find_survey
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.create(survey_params)
    respond_to do |format|
      format.html { redirect_to @survey }
      format.json { render json: @survey }
    end
  end

  def edit
    find_survey
    @survey.questions.build
  end

  def update
    find_survey
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to @survey }
        format.json { render json: @survey }
      else
        format.html { render action: "edit" }
        format.json { render json: @survey.errors }
      end
    end
  end

  def destroy
    find_survey
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to action: "index" }
    end
  end

  private

  def find_survey
    @survey = Survey.find(params[:id])
  end

  def survey_params
    params.require(:survey).permit(:name, questions_attributes: [:id, :name, :question_type, :survey_id, :_destroy, answers_attributes: [:id, :name, :_destroy]])
  end
end
