class CampaignsController < ApplicationController
  def index
    @campaigns = current_user.campaigns
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user = current_user
    if @campaign.save
        redirect_to campaign_path(@campaign)
    else
      render :new
    end
  end


  def campaign_params
    params.require(:campaign).permit(:name, :budget, :start_date, :end_date)
  end
end
