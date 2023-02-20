class ShopDashboardController < ApplicationController
    before_action :set_shop
    def index
        @products = @shop.products.all
    end

    def set_shop
        @shop = Shop.find(current_shop.id)
      end
end
