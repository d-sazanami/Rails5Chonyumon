class QuestionaryChoicesController < ApplicationController
  before_action :set_questionary_choice, only: %i[ show edit update destroy ]

  # GET /questionary_choices or /questionary_choices.json
  def index
    @questionary_choices = QuestionaryChoice.all
  end

  # GET /questionary_choices/1 or /questionary_choices/1.json
  def show
  end

  # GET /questionary_choices/new
  def new
    @questionary_choice = QuestionaryChoice.new
  end

  # GET /questionary_choices/1/edit
  def edit
  end

  # POST /questionary_choices or /questionary_choices.json
  def create
    @questionary_choice = QuestionaryChoice.new(questionary_choice_params)

    respond_to do |format|
      if @questionary_choice.save
        format.html { redirect_to @questionary_choice, notice: "Questionary choice was successfully created." }
        format.json { render :show, status: :created, location: @questionary_choice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @questionary_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionary_choices/1 or /questionary_choices/1.json
  def update
    respond_to do |format|
      if @questionary_choice.update(questionary_choice_params)
        format.html { redirect_to @questionary_choice, notice: "Questionary choice was successfully updated." }
        format.json { render :show, status: :ok, location: @questionary_choice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @questionary_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionary_choices/1 or /questionary_choices/1.json
  def destroy
    @questionary_choice.destroy
    respond_to do |format|
      format.html { redirect_to questionary_choices_url, notice: "Questionary choice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionary_choice
      @questionary_choice = QuestionaryChoice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def questionary_choice_params
      params.require(:questionary_choice).permit(:content, :value, :questionary_item_id)
    end
end
