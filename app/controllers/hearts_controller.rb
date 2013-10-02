class HeartsController < ApplicationController
	def create
		 @heart = Heart.new(heart_params)

    if @heart.save
      redirect_to @heart.post, notice: 'Hearted that post!'   
    else 
      redirects_to root_url, notice: 'had an issue creating that heart.'
    end
  end

private
   def heart_params
      params.require(:heart).permit(:post_id)
    end	
end
