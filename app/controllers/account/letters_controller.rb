class Account::LettersController < ApplicationController

  before_action :authenticate_user!
  # 查找用户配置文件
  before_action :find_profile , only: [:index]

  def index
    # 建立profile
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
  # 邮件参数
  def letter_params
    params.require(:letter).permit(:content)
  end

  # 找profile
  def find_profile
    @heartbeats = Heartbeat.where(user_id: current_user)
    # 如果没有该用户配置文件就建立一个
    if @heartbeats.blank?
       @heartbeat = Heartbeat.new
       @heartbeat.user = current_user
       @heartbeat.save
    else
      @heartbeat = @heartbeats.first
    end
  end


end
