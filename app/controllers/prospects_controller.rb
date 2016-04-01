class ProspectsController < ApplicationController
  def new
    @prospect = current_user.prospects.build
  end

  def create
    prospect = current_user.prospects.build(prospect_params)

    if prospect.save
      flash[:notice] =  "New Prospect created!"
    else
      flash[:notice] =  "New Prospect NOT created!"
    end

    redirect_to request.referer
  end

  private

    def prospect_params
      params.required(:prospect).permit(:name, :phone)
    end
end
