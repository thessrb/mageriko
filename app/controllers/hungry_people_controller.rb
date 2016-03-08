class HungryPeopleController < ApplicationController
  before_action :set_hungry_person, only: [:show, :edit, :update, :destroy]

  # GET /hungry_people
  # GET /hungry_people.json
  def index
    @hungry_people = HungryPerson.all
  end

  # GET /hungry_people/1
  # GET /hungry_people/1.json
  def show
  end

  # GET /hungry_people/new
  def new
    @hungry_person = HungryPerson.new
  end

  # GET /hungry_people/1/edit
  def edit
  end

  # POST /hungry_people
  # POST /hungry_people.json
  def create
    @hungry_person = HungryPerson.new(hungry_person_params)

    respond_to do |format|
      if @hungry_person.save
        format.html { redirect_to @hungry_person, notice: 'Hungry person was successfully created.' }
        format.json { render :show, status: :created, location: @hungry_person }
      else
        format.html { render :new }
        format.json { render json: @hungry_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hungry_people/1
  # PATCH/PUT /hungry_people/1.json
  def update
    respond_to do |format|
      if @hungry_person.update(hungry_person_params)
        format.html { redirect_to @hungry_person, notice: 'Hungry person was successfully updated.' }
        format.json { render :show, status: :ok, location: @hungry_person }
      else
        format.html { render :edit }
        format.json { render json: @hungry_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hungry_people/1
  # DELETE /hungry_people/1.json
  def destroy
    @hungry_person.destroy
    respond_to do |format|
      format.html { redirect_to hungry_people_url, notice: 'Hungry person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hungry_person
      @hungry_person = HungryPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hungry_person_params
      params.require(:hungry_person).permit(:name)
    end
end
