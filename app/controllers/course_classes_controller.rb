class CourseClassesController < ApplicationController
  # GET /course_classes/1
  # GET /course_classes/1.json
  def show
    @course_class = CourseClass.find(params[:id])
    @course = @course_class.course
    @enrollment = Enrollment.new
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @course_class }
    end
  end

  # GET /course_classes/new
  # GET /course_classes/new.json
  def new
    @course = Course.find(params[:course_id])
    @course_class = CourseClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @course_class }
    end
  end

  # GET /course_classes/1/edit
  def edit
    @course_class = CourseClass.find(params[:id])
  end

  # POST /course_classes
  # POST /course_classes.json
  def create
    course = Course.find(params[:course_id])
    @course_class = CourseClass.new(params[:course_class])
    @course_class.course = course

    respond_to do |format|
      if @course_class.save
        format.html { redirect_to @course_class, :notice => 'Course class was successfully created.' }
        format.json { render :json => @course_class, :status => :created, :location => @course_class }
      else
        format.html { render :action => "new" }
        format.json { render :json => @course_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /course_classes/1
  # PUT /course_classes/1.json
  def update
    @course_class = CourseClass.find(params[:id])

    respond_to do |format|
      if @course_class.update_attributes(params[:course_class])
        format.html { redirect_to @course_class, :notice => 'Course class was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @course_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /course_classes/1
  # DELETE /course_classes/1.json
  def destroy
    @course_class = CourseClass.find(params[:id])
    @course = @course_class.course
    @course_class.destroy

    respond_to do |format|
      format.html { redirect_to @course }
      format.json { head :ok }
    end
  end
end
