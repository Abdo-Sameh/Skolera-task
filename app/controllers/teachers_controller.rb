class TeachersController < ApplicationController
  before_action :authenticate_user!
  def create
    teacher = Teacher.new(teacher_params)

    if teacher.save
      teacher = TeacherSerializer.new(teacher).serialized_json
      render json: teacher
      # render json: { status: 'Success', message: 'Teacher saved successfully!', data: teacher }, status: :ok
    else
      render json: { errors: teacher.errors, message: 'Teacher not saved!' }, status: :unprocessable_entity
    end
  end

  def teaches
    teaching = Teaching.new(teaching_params)
    if teaching.save
      teaching = TeachingSerializer.new(teaching).serialized_json
      render json: teaching
      # render json: { status: 'Success', message: 'Course added to teacher successfully', data: teaching }, status: :ok
    else
      render json: { errors: teaching.errors, message: 'Adding course to teacher failed' }, status: :unprocessable_entity
    end
  end

  def update
    teacher = Teacher.find(params[:id])
    if teacher.update(teacher_params)
      teacher = TeacherSerializer.new(teacher).serialized_json
      render json: teacher
      # render json: { status: 'Success', message: 'Teacher data updated successfully', data: teacher }, status: :ok
    else
      render json: { errors: teacher.errors, message: 'Failed to update data!' }, status: :unprocessable_entity
    end
  end

  private

  def teacher_params
    params.permit(:name)
  end

  def teaching_params
    params.permit(:teacher_id, :course_id)
  end

end