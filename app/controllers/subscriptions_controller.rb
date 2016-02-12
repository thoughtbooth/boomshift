class SubscriptionsController < ApplicationController
before_action :authenticate_user!

  def new
  end

  def create
    # Amount in cents
    customer = Stripe::Customer.create email: params[:stripeEmail], plan: params[:stripePlan], source: params[:stripeToken]
    charge = Stripe::Charge.create customer: customer.id, amount: params[:amount], description: 'Boomshift customer', currency: 'usd'

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
