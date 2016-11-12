class Account::LettersController < ApplicationController

  before_action :authenticate_user!

  def index
    @letters = Letter.where(user_id: current_user)
  end

  def new
    @letter = Letter.new
  end

  def create
    @letter = Letter.new(letter_params)
    @letter.user = current_user
    if @letter.save
      redirect_to account_letters_path
    else
      redirect_to :back
    end
  end

  def show
    # layout "preview"
    @letter = Letter.find(params[:id])
  end

  def edit
    @letter = Letter.find(params[:id])
  end


  def update
    @letter = Letter.find(params[:id])

    if @letter.update(letter_params)
      redirect_to account_letters_path
    else
      redirect_to :back
    end    
  end

  def destroy
    @letter = Letter.find(params[:id])

    if @letter.destroy
      redirect_to :back
    end
  end


  private
  # 参数
  def letter_params
    params.require(:letter).permit(:content)
  end

end
