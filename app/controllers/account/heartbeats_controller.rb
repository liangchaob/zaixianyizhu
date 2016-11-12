class Account::HeartbeatsController < ApplicationController
  before_action :authenticate_user!

  def show
    # 先创建配置
    @user = current_user
    # 如果没有配置文件就建立一个
    if @user.heartbeat.blank?
      
    end
  end


end
