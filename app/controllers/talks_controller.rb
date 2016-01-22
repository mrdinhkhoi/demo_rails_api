class TalksController < ApplicationController
  before_action :set_talk, only: [:show, :update, :destroy]
  

  # GET /talks
  # GET /talks.json
  def index
    @talks = Talk.all

    render json: @talks
  end

  # GET /talks/1
  # GET /talks/1.json
  def show
    render json: @talk
  end

  # POST /talks
  # POST /talks.json
  def create
    @talk = Talk.new(talk_params)

    if @talk.save
      render json: @talk, status: :created, location: @talk
    else
      render json: @talk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /talks/1
  # PATCH/PUT /talks/1.json
  def update
    @talk = Talk.find(params[:id])

    if @talk.update(talk_params)
      head :no_content
    else
      render json: @talk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /talks/1
  # DELETE /talks/1.json
  def destroy
    @talk.destroy

    head :no_content
  end

  private

    def set_talk
      @talk = Talk.find(params[:id])
    end

    def talk_params
      params.require(:talk).permit(:name)
    end
end
