class Admin::DisciplinesController < Admin::BaseController
  before_action :find_discipline, except: [:index, :create]
  before_action :set_disciplines

  def index
    @discipline = Discipline.new
  end

  def create
    @discipline = Discipline.new(discipline_params)
    if @discipline.save
      redirect_to admin_disciplines_path, notice: "New discipline '#{@discipline.title}' was created"
    else 
      flash.now[:alert] = "discipline was NOT created. Got errors!"
      render :index
    end
  end

  def update
    if @discipline.update(discipline_params)
      redirect_to admin_disciplines_path, notice: "discipline was updated"
    else
      flash.now[:alert] = "discipline was NOT updated"
      render :index
    end
  end

  def destroy
    @discipline.destroy
    redirect_to admin_disciplines_path, alert: "discipline '#{@discipline.title}' was deleted"
  end

  private

  def discipline_params
    params.require(:discipline).permit(:title)
  end

  def find_discipline
    @discipline = Discipline.find(params[:id])
  end

  def set_disciplines
    @disciplines = Discipline.all
  end
end
