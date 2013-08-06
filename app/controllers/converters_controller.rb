class ConvertersController < ApplicationController
  include ActiveModel::MassAssignmentSecurity
  include ActionController::MimeResponds
  include ActionController::Helpers
  include ActionController::Cookies
  include ActionController::ImplicitRender
  attr_accessible :text

  # GET /converters
  # GET /converters.json
  def index
    @converters = Converter.all

    render json: @converters
  end

  # GET /converters/1
  # GET /converters/1.json
  def show
    @converter = Converter.find(params[:id])

    render json: @converter
  end

  # POST /converters
  # POST /converters.json
  def create
    @converter = Converter.new(params[:converter])
    puts @converter
    if @converter.save
      render json: @converter, status: :created, location: @converter
    else
      render json: @converter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /converters/1
  # PATCH/PUT /converters/1.json
  def update
    @converter = Converter.find(params[:id])

    if @converter.update(params[:converter])
      head :no_content
    else
      render json: @converter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /converters/1
  # DELETE /converters/1.json
  def destroy
    @converter = Converter.find(params[:id])
    @converter.destroy

    head :no_content
  end

  private
end
