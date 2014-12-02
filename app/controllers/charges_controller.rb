class ChargesController < ApplicationController

  def new
  end


  def one_month
    # Amount in cents
    @amount = 999
    @amount_in_dollars = @amount.to_f / 100
    @description = "One Month"
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :card  => params[:stripeToken]
    )

    if Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => @description,
      :currency    => 'usd'
    )
      Payment.create(description: @description, amount: @amount, email: customer.email,created_at:Time.now, expiration_date: Time.now+3.months)
    end

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path
  end

end
