class EnrollmentsController < ApplicationController
  # POST /enrollments
  # POST /enrollments.json
  def create
    @course_class = CourseClass.find(params[:course_class_id])
    @enrollment = Enrollment.new()
    @enrollment.person_id = params[:id_person_enrollment]
    @enrollment.course_class = @course_class

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to @course_class, :notice => 'Enrollment was successfully created.' }
        format.json { render :json => @course_class, :status => :created, :location => @enrollment }
      else
        format.html { render :action => "new" }
        format.json { render :json => @enrollment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollments/1
  # DELETE /enrollments/1.json
  def destroy
    @enrollment = Enrollment.find(params[:id])
    @course_class = @enrollment.course_class
    @enrollment.destroy

    respond_to do |format|
      format.html { redirect_to @course_class }
      format.json { head :ok }
    end
  end
end
