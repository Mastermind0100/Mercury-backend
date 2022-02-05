module Api
    module V1
        class ItemsController < ApplicationController
            def index
                @items = Item.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Loaded items', data: @items}, status: :ok
            end

            def show
                item = Item.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded item', data: item}, status: :ok
            end

            def create
                item = Item.new(item_params)
                if item.save
                    render json: {status: 'SUCCESS', message: 'Item Saved', data: item}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Item not saved', data: item.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                item = Item.find(params[:id])
                item.destroy
                render json: {status: 'SUCCESS', message: 'Deleted item', data: item}, status: :ok
            end

            def update
                item = Item.find(params[:id])
                if item.update(item_params)
                    render json: {status: 'SUCCESS', message: 'Item updated', data: item}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Item not updated', data: item.errors}, status: :unprocessable_entity
                end
            end

            private

            def item_params
                params.permit(:title, :url)
            end
        end
    end
end