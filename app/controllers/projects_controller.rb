class ProjectsController < ApplicationController

	def new
		@project = Project.new
	end

	def create
		#render plain: params[:project].inspect
		@project = Project.new(project_params)
		@project.save
		redirect_to projects_show(@project)
	end

	private
		def project_params
			params.require(:project).permit(:name, :vision)
			
		end

end