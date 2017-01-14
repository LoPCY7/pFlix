class SubscribeController < ApplicationController
  before_filter :authenticate_user!
  before_action :check_user_subscription

  def index
    @stripe_list = Stripe::Plan.all
    @plans = @stripe_list[:data]
  end

  def new
  end

  def update
    token = params[:stripeToken]
    plan_id = params[:plan_id]
    plan = Stripe::Plan.retrieve(plan_id)
    customer = Stripe::Customer.create(
  source: token,
  plan: plan,
  email: current_user.email
)

    current_user.subscribed = true
    current_user.stripeid = customer.id
    current_user.planid = plan_id
    current_user.save

    redirect_to movies_path, notice: "Your subscription was successful!"
  end
end

def check_user_subscription
  if current_user.subscribed == true
    redirect_to movies_path
  end
end
