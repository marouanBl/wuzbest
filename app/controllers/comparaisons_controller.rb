class ComparaisonsController < ApplicationController
  # GET /comparaisons
  # GET /comparaisons.json
  def index
    @comparaisons = Comparaison.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comparaisons }
    end
  end

  # GET /comparaisons/1
  # GET /comparaisons/1.json
  def show
    @comparaison = Comparaison.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comparaison }
    end
  end

  # GET /comparaisons/new
  # GET /comparaisons/new.json
  def new
    @comparaison = Comparaison.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comparaison }
    end
  end

  # GET /comparaisons/1/edit
  def edit
    @comparaison = Comparaison.find(params[:id])
  end

  # POST /comparaisons
  # POST /comparaisons.json
  def create
    @comparaison = Comparaison.new(params[:comparaison])

    respond_to do |format|
      if @comparaison.save
        format.html { redirect_to @comparaison, notice: 'Comparaison was successfully created.' }
        format.json { render json: @comparaison, status: :created, location: @comparaison }
      else
        format.html { render action: "new" }
        format.json { render json: @comparaison.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comparaisons/1
  # PUT /comparaisons/1.json
  def update
    @comparaison = Comparaison.find(params[:id])

    respond_to do |format|
      if @comparaison.update_attributes(params[:comparaison])
        format.html { redirect_to @comparaison, notice: 'Comparaison was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comparaison.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comparaisons/1
  # DELETE /comparaisons/1.json
  def destroy
    @comparaison = Comparaison.find(params[:id])
    @comparaison.destroy

    respond_to do |format|
      format.html { redirect_to comparaisons_url }
      format.json { head :no_content }
    end
  end
end
