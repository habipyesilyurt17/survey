class Api::V1::SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  def index
    @surveys = Survey.order('created_at DESC');
    render json: @surveys.to_json(include: { questions: { include: :answers } })
  end

  def show
    render json: @survey.to_json(include: { questions: { include: :answers } })
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      render json: @survey
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  private

  def set_survey
    @survey = Survey.find(params[:id]);
  end

  def survey_params
    params.require(:survey).permit(:name, questions_attributes: [:id, :name, :question_type, :survey_id, :_destroy, answers_attributes: [:id, :name, :_destroy]])
  end
end