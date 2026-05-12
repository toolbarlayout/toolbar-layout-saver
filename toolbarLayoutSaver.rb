module ToolbarLayoutSaver
  
  # Saves the position and visibility of custom toolbars
  def self.save_layout
    toolbars = ["Lattice Maker", "Pipe Along Path", "Cycle Selection", "Field of View"]
    layout = {}
    
    toolbars.each do |name|
      begin
        toolbar = UI.toolbar(name)
        if toolbar
          layout[name] = {
            'visible' => toolbar.visible?,
            'floating' => toolbar.floating?,
            'position' => toolbar.position?
          }
        end
      rescue
      end
    end
    
    # Save to SketchUp preferences
    layout.each do |name, data|
      data.each do |key, value|
        Sketchup.write_default('ToolbarLayout', "#{name}_#{key}", value.to_s)
      end
    end
    
    UI.messagebox("Toolbar layout saved!", MB_OK, "Toolbar Layout Saver")
  end
  
  # Restores the saved layout
  def self.restore_layout
    toolbars = ["Lattice Maker", "Pipe Along Path", "Cycle Selection", "Field of View"]
    
    toolbars.each do |name|
      begin
        toolbar = UI.toolbar(name)
        next unless toolbar
        
        visible = Sketchup.read_default('ToolbarLayout', "#{name}_visible")
        
        if visible == "true"
          toolbar.show unless toolbar.visible?
        elsif visible == "false"
          toolbar.close if toolbar.visible?
        end
      rescue
      end
    end
    
    UI.messagebox("Toolbar layout restored!", MB_OK, "Toolbar Layout Saver")
  end
  
  # Creates a menu for easy access to functions
  def self.create_menu
    menu = UI.menu("View")
    submenu = menu.add_submenu("Toolbar Layout")
    submenu.add_item("Save Layout") { save_layout }
    submenu.add_item("Restore Layout") { restore_layout }
  end
  
  create_menu
end