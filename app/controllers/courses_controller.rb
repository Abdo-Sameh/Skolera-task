class CoursesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    course = Course.new(course_params)
    if course.save
      course = CourseSerializer.new(course).serialized_json
      render json: course
      # render json: { status: 'Success', message: 'Course saved successfully!', data: course }, status: :ok
    else
      render json: { errors: course.errors, message: 'Course not saved!' }, status: :unprocessable_entity
    end

  end

  private
  def course_params
    params.permit(:name)
  end

end