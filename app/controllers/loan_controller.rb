class LoanController < ApplicationController
  
  def index
    loans = Loan.all
    render json: loans
  end
  
  def create_loan
    loan = Loan.create(amount: params[:amount], valid_until: Date.new(params[:valid_until]), additional_details: params[:additional_details])
    render json: loan
  end
  
  def test_email
    user = User.first
    UserMailer.with(user: user).welcome_email.deliver_now
  end
end
