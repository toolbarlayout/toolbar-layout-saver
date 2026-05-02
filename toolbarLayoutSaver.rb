module ToolbarLayoutSaver
  
  # Sauvegarde la position et visibilité des toolbars personnalisées
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
    
    # Sauvegarde dans les préférences SketchUp
    layout.each do |name, data|
      data.each do |key, value|
        Sketchup.write_default('ToolbarLayout', "#{name}_#{key}", value.to_s)
      end
    end
    
    UI.messagebox("Disposition des toolbars sauvegardée !", MB_OK, "Toolbar Layout Saver")
  end
  
  # Restaure la disposition sauvegardée
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
    
    UI.messagebox("Disposition des toolbars restaurée !", MB_OK, "Toolbar Layout Saver")
  end
  
  # Crée un menu pour accéder facilement aux fonctions
  def self.create_menu
    menu = UI.menu("View")
    submenu = menu.add_submenu("Toolbar Layout")
    submenu.add_item("Sauvegarder la disposition") { save_layout }
    submenu.add_item("Restaurer la disposition") { restore_layout }
  end
  
  create_menu
end
