class StudentsController < ApplicationController

	def index
    @students = Student.all

  end

  def edit
  	@student = Student.friendly.find(params[:id])
	end

	def show
    @student = Student.friendly.find(params[:id])
  end

	def new
		@student = Student.new
  end
#   def create
#   render plain: params[:student].inspect
# end
	def create
  	@student = Student.new(student_params)
 
  	if @student.save
  		redirect_to @student
		else
			render 'new'
  	end
	end

	def update
  	@student = Student.find(params[:id])
 
  	if @student.update(student_params)
    	redirect_to @student
  	else
    	render 'edit'
  	end
	end

	def destroy
  	@student = Student.find(params[:id])
  	@student.destroy
 		redirect_to students_path
	end

	private
  def student_params
    params.require(:student).permit(:stud_id, :name, :email, :address, :course)
  end
end
