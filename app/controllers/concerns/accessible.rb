module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_shop
      flash.clear
      redirect_to(shop_dashboard_path) and return
    elsif current_customer
      flash.clear
      redirect_to(customer_dashboard_path) and return
    end
  end
end