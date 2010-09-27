class WaresController < ApplicationController
  # GET /wares
  # GET /wares.xml
  def index
    @wares = Ware.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wares }
    end
  end

  # GET /wares/1
  # GET /wares/1.xml
  def show
    @ware = Ware.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ware }
    end
  end

  # GET /wares/new
  # GET /wares/new.xml
  def new
    @ware = Ware.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ware }
    end
  end

  # GET /wares/1/edit
  def edit
    @ware = Ware.find(params[:id])
  end

  # POST /wares
  # POST /wares.xml
  def create
    @ware = Ware.new(params[:ware])

    respond_to do |format|
      if @ware.save
        format.html { redirect_to(wares_path, :notice => 'Ware was successfully created.') }
        format.xml  { render :xml => @ware, :status => :created, :location => @ware }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ware.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wares/1
  # PUT /wares/1.xml
  def update
    @ware = Ware.find(params[:id])

    respond_to do |format|
      if @ware.update_attributes(params[:ware])
        format.html { redirect_to(wares_path, :notice => 'Ware was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ware.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wares/1
  # DELETE /wares/1.xml
  def destroy
    @ware = Ware.find(params[:id])
    @ware.destroy

    respond_to do |format|
      format.html { redirect_to(wares_url) }
      format.xml  { head :ok }
    end
  end
end
