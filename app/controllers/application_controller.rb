class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_profile

  def current_profile
    @current_profile ||= find_profile
  end

  private

  def find_profile
    # 进场先找是否已经有了购物车
    @profile = Profile.find_by(user_id: current_user)
    # 如果没有则新建一个
    if @profile.blank?
      @profile = Profile.create
    end
    # 获取sessionid
    session[:cart_id] = @profile.id
    return @profile
  end




end
