class ImagesController < ApplicationController
  # GET /collages
  # GET /collages.json
  def index
    @images = Image.order('created_at DESC').page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @images }
    end
  end

  # GET /images/new
  # GET /images/new.json
  def new
    @image = Image.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image }
    end
  end


  # POST /images
  # POST /images.json
  def create
    @image = Image.create(params[:image])
  end


  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to images_url }
      format.js
    end
  end
end
