class ProjectsController < ApplicationController

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
			flash[:notice] = "project was successfully created"
			redirect_to project_path(@project)
		else 
			render 'new'
		end
		# @project.save
		# redirect_to project_path(@project)
	end

	def show
		@project = Project.find(params[:id])
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		flash[:notice] = "project was successfully destroyed"
		redirect_to projects_path
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		if @project.update(project_params)
			flash[:notice] = "project was successfully updated"
			redirect_to project_path(@project)
		else 
			render 'edit'
		end
	end

	private
		def project_params
			params.require(:project).permit(:name, :vision)
			
		end

end