class Admin::CoursesController < Admin::BaseController
  def index
    @courses = Course.all
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to admin_courses_path, notice: "New course '#{@course.title}' added successfully"
    else 
      render :new
    end
  end

  def new; end

  def update
    if course.update_attributes(course_params)
      redirect_to admin_courses_path, notice: "The course '#{@course.title}' edited successfully"
    else
      flash.now.alert = 'Uncorrect edition!'
      render :new
    end
  end

  def destroy
    course.destroy
  end

  def edit; end

  def show
    @lessons = course.lessons
  end

  private

  def course
    @course ||= params[:id] ? Course.find(params[:id]) : Course.new
  end

  helper_method :course

  def course_params
    params.require(:course).permit(:title, :description, :discipline_id)
  end
end
