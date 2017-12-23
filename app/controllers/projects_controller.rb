class ProjectsController < ApplicationController

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

	private
		def project_params
			params.require(:project).permit(:name, :vision)
			
		end

end