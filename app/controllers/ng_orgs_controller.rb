class NgOrgsController < ApplicationController
  # GET /domains
  # GET /domains.json
  def index
    @ng_orgs = NgOrg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ng_orgs }
    end
  end

  # GET /domains/sector/:domain

  def find_ngos_by_domain
    @ng_orgs = NgOrg.where("domain like ? ", "#{params[:domain]}")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ng_orgs }
    end
  end

  # GET /domains/1
  # GET /domains/1.json
  def show
    @ng_org = NgOrg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ng_org }
    end
  end

  # GET /domains/new
  # GET /domains/new.json
  def new
    @ng_org = NgOrg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ng_org }
    end
  end

  # GET /domains/1/edit
  def edit
    @ng_org = NgOrg.find(params[:id])
  end

  # POST /domains
  # POST /domains.json
  def create
    @ng_org = NgOrg.new(params[:domain])

    respond_to do |format|
      if @ng_org.save
        format.html { redirect_to @ng_org, notice: 'Domain was successfully created.' }
        format.json { render json: @ng_org, status: :created, location: @ng_org }
      else
        format.html { render action: "new" }
        format.json { render json: @ng_org.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /domains/1
  # PUT /domains/1.json
  def update
    @ng_org = NgOrg.find(params[:id])

    respond_to do |format|
      if @ng_org.update_attributes(params[:domain])
        format.html { redirect_to @ng_org, notice: 'NgOrg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ng_org.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /domains/1
  # DELETE /domains/1.json
  def destroy
    @domain = NgOrg.find(params[:id])
    @domain.destroy

    respond_to do |format|
      format.html { redirect_to domains_url }
      format.json { head :no_content }
    end
  end
end

