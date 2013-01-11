ActiveAdmin.register DinningRoom do
  
  menu :label => 'Restaurants'
  
  controller do
    def new
      @dinning_room = DinningRoom.new
      @dinning_room.room_zones.build
      @dinning_room.cuisines.build
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :address
      f.input :city
      f.input :zipcode
    end
    
      f.has_many :room_zones do |s|
        if !s.object.nil?
          s.input :_destroy, :as => :boolean, :label => "Destroy?"
        end
        s.input :name
      end
    
      f.has_many :cuisines do |s|
        if !s.object.nil?
          s.input :_destroy, :as => :boolean, :label => "Destroy?"
        end
        s.input :name
      end
  
    
    f.buttons
  end

  
end
