class OnlineStudentsController < ApplicationController
  # GET /online_students
  # GET /online_students.json
  def index
    @online_students = OnlineStudent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @online_students }
    end
  end

  # GET /online_students/1
  # GET /online_students/1.json
  def show
    @online_student = OnlineStudent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @online_student }
    end
  end

  # GET /online_students/new
  # GET /online_students/new.json
  def new
    @online_student = OnlineStudent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @online_student }
    end
  end

  # GET /online_students/1/edit
  def edit
    @online_student = OnlineStudent.find(params[:id])
  end

  # POST /online_students
  # POST /online_students.json
  def create
    @online_student = OnlineStudent.new(params[:online_student])

    respond_to do |format|
      if @online_student.save
        format.html { redirect_to @online_student, notice: 'Online student was successfully created.' }
        format.json { render json: @online_student, status: :created, location: @online_student }
      else
        format.html { render action: "new" }
        format.json { render json: @online_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /online_students/1
  # PUT /online_students/1.json
  def update
    @online_student = OnlineStudent.find(params[:id])

    respond_to do |format|
      if @online_student.update_attributes(params[:online_student])
        format.html { redirect_to @online_student, notice: 'Online student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @online_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /online_students/1
  # DELETE /online_students/1.json
  def destroy
    @online_student = OnlineStudent.find(params[:id])
    @online_student.destroy

    respond_to do |format|
      format.html { redirect_to online_students_url }
      format.json { head :no_content }
    end
  end
end
