class CreditCardPageController < ApplicationController
  def index
    @user = current_user
  end

  def show
    @card = current_user.credit_card
  end

  def new
    @card = CreditCard.new
  end

  def create
    @card = CreditCard.new(card_params)
    @card.user_id = current_user.id

    if @card.save
      redirect_to credit_card_page_index_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def card_params
    params.require(:credit_card).permit(:number)
  end

end
