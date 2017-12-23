class ProjectsController < ApplicationController
	before_action :set_project, only: [:edit, :update, :show, :destroy]

	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		#render plain: params[:project].inspect
		@project = Project.new(project_params)
		if @project.save
			flash[:success] = "project was successfully created"
			redirect_to project_path(@project)
		else 
			render 'new'
		end
		# @project.save
		# redirect_to project_path(@project)
	end

	def show
	end

	def destroy
		@project.destroy
		flash[:danger] = "project was successfully destroyed"
		redirect_to projects_path
	end

	def edit
	end

	def update
		if @project.update(project_params)
			flash[:success] = "project was successfully updated"
			redirect_to project_path(@project)
		else 
			render 'edit'
		end
	end

	private
		def set_project
			@project = Project.find(params[:id])
		end

		def project_params
			params.require(:project).permit(:name, :vision)
			
		end

end