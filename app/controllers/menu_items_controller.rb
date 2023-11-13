class MenuItemsController < ApplicationController
    def index
        @menu_items = MenuItem.all
    end
    def show
        @menu_item = MenuItem.find(params[:id])
    end

    def new
        @menu_item = MenuItem.new
    end
  
    def create
        @menu_item = MenuItem.new(menu_item_params)

        if @menu_items.save
            redirect_to menu_items_path,
            notice: "Category <strong>#{@menu_items.name}</strong> has been successfully added."
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
      def menu_item_params
        params.require(:menu_item).permit(:name, :description, :quantity, :status, :price, :active_status, product_photos_attributes: [:id, :product_id, :image, :_destroy] )
      end

end
