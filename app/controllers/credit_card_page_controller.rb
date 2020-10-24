class CreditCardPageController < ApplicationController
  def index
    @user = current_user
  end

  def show
    @card = current_user.credit_card
  end

  def new
    @card = CreditCard.new
    @user = current_user
  end

  def create
    @card = CreditCard.new(card_params)
    @card.user_id = current_user.id

    if @card.save
      redirect_to credit_card_page_index_path
    end
  end

  def edit
    @card = CreditCard.find(params[:id])
    @user = current_user
  end

  def update
    @card = CreditCard.find(params[:id])
    @card.update(card_params)
    redirect_to credit_card_page_index_path
  end

  def destroy
    @card = CreditCard.find(params[:id])
    @card.destroy
    redirect_to credit_card_page_index_path
  end

  def confirmation
    @card = CreditCard.new(card_params)
    #render :new if @card.invalid?
  end

  private

  def card_params
    params.require(:credit_card).permit(:number)
  end

end
