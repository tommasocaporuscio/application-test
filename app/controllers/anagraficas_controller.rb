class AnagraficasController < ApplicationController
  # GET /anagraficas
  # GET /anagraficas.json
  def index
    @anagraficas = Anagrafica.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anagraficas }
    end
  end

  # GET /anagraficas/1
  # GET /anagraficas/1.json
  def show
    @anagrafica = Anagrafica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anagrafica }
    end
  end

  # GET /anagraficas/new
  # GET /anagraficas/new.json
  def new
    @anagrafica = Anagrafica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anagrafica }
    end
  end

  # GET /anagraficas/1/edit
  def edit
    @anagrafica = Anagrafica.find(params[:id])
  end

  # POST /anagraficas
  # POST /anagraficas.json
  def create
    @anagrafica = Anagrafica.new(params[:anagrafica])

    respond_to do |format|
      if @anagrafica.save
        UserMailer.welcome_email(@anagrafica).deliver
        format.html { redirect_to @anagrafica, notice: 'Anagrafica was successfully created.' }
        format.json { render json: @anagrafica, status: :created, location: @anagrafica }
      else
        format.html { render action: "new" }
        format.json { render json: @anagrafica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anagraficas/1
  # PUT /anagraficas/1.json
  def update
    @anagrafica = Anagrafica.find(params[:id])

    respond_to do |format|
      if @anagrafica.update_attributes(params[:anagrafica])
        format.html { redirect_to @anagrafica, notice: 'Anagrafica was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @anagrafica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anagraficas/1
  # DELETE /anagraficas/1.json
  def destroy
    @anagrafica = Anagrafica.find(params[:id])
    @anagrafica.destroy

    respond_to do |format|
      format.html { redirect_to anagraficas_url }
      format.json { head :ok }
    end
  end
end
