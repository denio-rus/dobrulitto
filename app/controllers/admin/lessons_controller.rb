class Admin::LessonsController < Admin::BaseController
before_action :find_course, only: [:create, :new]

  def create
    @lesson = @course.lessons.new(lesson_params)
    if @lesson.save
      redirect_to admin_course_path(@lesson.course), notice: 'lesson saved successfuly.'
    else
      flash.now[:alert] = 'Got problems with saving'
      render :new
    end
  end

  def update
    if lesson.update(lesson_params)
      redirect_to admin_course_path(lesson.course)
    else
      @course = lesson.course
      render :edit
    end
  end

  def edit; end


  def destroy
    lesson.destroy
  end

  def new
    @lesson = @course.lessons.new
  end

  private

  def lesson
    @lesson ||= params[:id] ? Lesson.find(params[:id]) : Lesson.new
  end

  helper_method :lesson

  def lesson_params
    params.require(:lesson).permit(:title, :description, :preview)
  end

  def find_course
    @course = Course.find(params[:course_id])
  end
end
