class Item < ActiveRecord::Base
     belongs_to :category
     belongs_to :statuses
     belongs_to :types

     def self.search(params)
       items = Item.where(params[:listing])
       items = items.where(" name like ? ","%#{params[:search]}%") if params[:search].present?
     end

     def searc
     end


end



