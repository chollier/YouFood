ActiveAdmin.register FoodMenu do
  
  scope :all, :default => true
  scope :active
  scope :inactive
  
  controller do
    def new
      @food_menu = FoodMenu.new
      @food_menu.starters.build
      @food_menu.dishes.build
      @food_menu.deserts.build
    end
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :image, :as => :file, :hint => (!f.object.new_record? ? f.template.image_tag(f.object.image.url(:medium)) : 'The menu image'  )
      f.input :is_active, :label => "Active ?"
    end
    
    # f.inputs "Starters" do
      f.has_many :starters do |s|
        if !s.object.nil?
          # show the destroy checkbox only if it is an existing appointment
          # else, there's already dynamic JS to add / remove new appointments
          s.input :_destroy, :as => :boolean, :label => "Destroy?"
        end
        s.input :name
        s.input :food_type
        s.input :description
        s.input :price
        s.input :image, :as => :file, :hint => (!s.object.new_record? ? s.template.image_tag(s.object.image.url(:medium)) : 'The starter image'  )
      end
    # end
    
    # f.inputs "Dish" do
      f.has_many :dishes do |s|
        if !s.object.nil?
          # show the destroy checkbox only if it is an existing appointment
          # else, there's already dynamic JS to add / remove new appointments
          s.input :_destroy, :as => :boolean, :label => "Destroy?"
        end
        s.input :name
        s.input :food_type
        s.input :description
        s.input :price
        s.input :image, :as => :file, :hint => (!s.object.new_record? ? s.template.image_tag(s.object.image.url(:medium)) : 'The dish image'  )
      end
    # end
    
    # f.inputs "Desert" do
      f.has_many :deserts do |s|
          if !s.object.nil?
            # show the destroy checkbox only if it is an existing appointment
            # else, there's already dynamic JS to add / remove new appointments
            s.input :_destroy, :as => :boolean, :label => "Destroy?"
          end
        s.input :name
        s.input :food_type
        s.input :description
        s.input :price
        s.input :image, :as => :file, :hint => (!s.object.new_record? ? s.template.image_tag(s.object.image.url(:medium)) : 'The desert image'  )
      end
    # end
    
    f.buttons
  end
  
  # index :as => :grid do |food_menu|
  #    "#{link_to(image_tag(food_menu.image.url(:medium)), admin_food_menu_path(food_menu))} <br />#{food_menu.name}".html_safe
  #  end
  
  index do
    column :name
    # column "Price" do |food_menu|
    #   "#{food_menu.price}&euro;".html_safe
    # end
    column "Image" do |food_menu|
      image_tag(food_menu.image.url(:thumb))
    end
    column :created_at
    column :is_active
    default_actions
  end
  
end
