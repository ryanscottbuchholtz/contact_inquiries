class InquiriesController < ApplicationController
  before_action :set_inquiry, only: [:show, :edit, :update, :destroy]

  def index
    @inquiries = Inquiry.all
  end

  def new
    @inquiry = Inquiry.new
  end

  def show
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)

    respond_to do |format|
      if @inquiry.save
        format.html { redirect_to @inquiry, notice: 'Inquiry was successfully submitted.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def destroy
    @inquiry.destroy
    redirect_to inquiries_url
  end

private

  def inquiry_params
    params.require(:inquiry).permit(:email_address, :subject, :description, :first_name, :last_name)
  end

  def set_inquiry
    @inquiry = Inquiry.find(params[:id])
  end

end
