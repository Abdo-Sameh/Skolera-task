class StudentsController < ApplicationController
  # before_action :authenticate_user!
  def create
    student = Student.new(student_params)

    if student.save
      student = StudentSerializer.new(student).serialized_json
      render json: student
    else
      render json: { errors: student.errors, message: 'Student not saved!' }, status: :unprocessable_entity
    end
  end

  def enrol
    enrolment = Enrolment.new(enrolment_params)
    if enrolment.save
      enrolment = EnrolmentSerializer.new(enrolment).serialized_json
      render json: enrolment
      # render json: { status: 'Success', message: 'Enrolment success!', data: enrolment }, status: :ok
    else
      render json: { errors: enrolment.errors, message: 'Enrolment failure!' }, status: :unprocessable_entity
    end
  end

  def update
    student = Student.find(params[:id])
    if student.update(student_params)
      student = StudentSerializer.new(student).serialized_json
      render json: student
      # render json: { status: 'Success', message: 'Student data updated successfully', data: student }, status: :ok
    else
      render json: { errors: student.errors, message: 'Failed to update data!' }, status: :unprocessable_entity
    end
  end

  private

  def student_params
    params.permit(:name)
  end

  def enrolment_params
    params.permit(:student_id, :course_id)
  end

end