class VerifiesController < ApplicationController
  # GET /verifies
  # GET /verifies.json
  def index
    @verifies = Verify.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @verifies }
    end
  end

  # GET /verifies/1
  # GET /verifies/1.json
  def show
    @verify = Verify.where(registration_number: params[:registration_number])

    @data = "#{params[:callback]}(#{@verify.to_json});"

    if @verify.blank?
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @data }
      end
    else
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @data }
      end
    end
  end

  # GET /verifies/new
  # GET /verifies/new.json
  def new
    @verify = Verify.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @verify }
    end
  end

  # GET /verifies/1/edit
  def edit
    @verify = Verify.find(params[:id])
  end

  # POST /verifies
  # POST /verifies.json
  def create
    @verify = Verify.new(params[:verify])

    respond_to do |format|
      if @verify.save
        format.html { redirect_to @verify, notice: 'Verify was successfully created.' }
        format.json { render json: @verify, status: :created, location: @verify }
      else
        format.html { render action: "new" }
        format.json { render json: @verify.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /verifies/1
  # PUT /verifies/1.json
  def update
    @verify = Verify.find(params[:id])

    respond_to do |format|
      if @verify.update_attributes(params[:verify])
        format.html { redirect_to @verify, notice: 'Verify was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @verify.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verifies/1
  # DELETE /verifies/1.json
  def destroy
    @verify = Verify.find(params[:id])
    @verify.destroy

    respond_to do |format|
      format.html { redirect_to verifies_url }
      format.json { head :no_content }
    end
  end
end
