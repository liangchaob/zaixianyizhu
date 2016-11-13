class Account::HeartbeatsController < ApplicationController
  before_action :authenticate_user!
  # 查找用户配置文件
  before_action :find_profile

  # 实际是修改配置的edit原型，为了路由看起来合理所以用了index
  def index
    
  end


  def show
    @heartbeats = Heartbeat.where(user_id: current_user)
    @heartbeat = @heartbeats.first
  end


  private

  # 找profile
  def find_profile
    @heartbeats = Heartbeat.where(user_id: current_user)
    # 如果没有该用户配置文件就建立一个
    if @heartbeats.blank?
       @heartbeat = Heartbeat.new
       @heartbeat.user = current_user
       @heartbeat.save
    else
      return @heartbeat = @heartbeats.first
    end
  end

end
