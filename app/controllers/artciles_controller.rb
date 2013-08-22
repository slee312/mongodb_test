class ArtcilesController < ApplicationController
  # GET /artciles
  # GET /artciles.json
  def index
    @artciles = Artcile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artciles }
    end
  end

  # GET /artciles/1
  # GET /artciles/1.json
  def show
    @artcile = Artcile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artcile }
    end
  end

  # GET /artciles/new
  # GET /artciles/new.json
  def new
    @artcile = Artcile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artcile }
    end
  end

  # GET /artciles/1/edit
  def edit
    @artcile = Artcile.find(params[:id])
  end

  # POST /artciles
  # POST /artciles.json
  def create
    @artcile = Artcile.new(params[:artcile])

    respond_to do |format|
      if @artcile.save
        format.html { redirect_to @artcile, notice: 'Artcile was successfully created.' }
        format.json { render json: @artcile, status: :created, location: @artcile }
      else
        format.html { render action: "new" }
        format.json { render json: @artcile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artciles/1
  # PUT /artciles/1.json
  def update
    @artcile = Artcile.find(params[:id])

    respond_to do |format|
      if @artcile.update_attributes(params[:artcile])
        format.html { redirect_to @artcile, notice: 'Artcile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artcile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artciles/1
  # DELETE /artciles/1.json
  def destroy
    @artcile = Artcile.find(params[:id])
    @artcile.destroy

    respond_to do |format|
      format.html { redirect_to artciles_url }
      format.json { head :no_content }
    end
  end
end
