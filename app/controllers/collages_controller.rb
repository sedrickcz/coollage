class CollagesController < ApplicationController
  # GET /collages
  # GET /collages.json
  def index

    @collages = Collage.order(:created_at)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @collages }
    end
  end

  # GET /collages/1
  # GET /collages/1.json
  def show
    
    @collage = Collage.find(params[:id])

    respond_to do |format|
      format.html { render action: "show", layout: 'coollage' }
      format.json { render json: @collage }
    end
  end

  # GET /collages/new
  # GET /collages/new.json
  def new
    @collage = Collage.new
    @images = Image.order('created_at DESC')
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @collage }
    end
  end

  # POST /collages
  # POST /collages.json
  def create
    @collage = Collage.new(params[:collage])
    
    respond_to do |format|
      if @collage.save
        format.html { redirect_to collages_url, notice: 'Collage was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
end
