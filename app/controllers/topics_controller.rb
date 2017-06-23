class TopicsController < ApplicationController

	def index
		@topics = Topic.all
	end

	def new
		@topic = Topic.new
		respond_to do |format|
	    format.html
	    #format.json { render json: @topic }
		end
	end

	def create
		@topic = Topic.new(topic_params)
		respond_to do |format|
	    if @topic.save
	    	format.html { redirect_to topics_path, notice: 'topic was successfully created.' }
	    end
		end
	end

	private

	def topic_params
		params.require(:topic).permit(
			:name, 
			:description
		)
	end

end
