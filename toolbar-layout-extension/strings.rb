# Toolbar Layout - Internationalization
# Support for 16 languages

module ToolbarLayoutSaver
  
  # Language detection
  def self.current_language
    lang = Sketchup.get_locale rescue 'en'
    
    locale_map = {
      'en-US' => 'en', 'en-GB' => 'en',
      'cs' => 'cs', 'de' => 'de', 'es' => 'es', 'fr' => 'fr',
      'it' => 'it', 'nl' => 'nl', 'pl' => 'pl', 'pt' => 'pt',
      'sv' => 'sv', 'tr' => 'tr', 'ru' => 'ru', 'ja' => 'ja',
      'ko' => 'ko', 'zh-CN' => 'zh-CN', 'zh-TW' => 'zh-TW'
    }
    
    locale_map[lang] || 'en'
  end
  
  # Translation function
  def self.t(key)
    lang = current_language
    strings = TRANSLATIONS[lang] || TRANSLATIONS['en']
    strings[key] || TRANSLATIONS['en'][key] || key.to_s
  end
  
  # Translations
  TRANSLATIONS = {
    
    # ENGLISH
    'en' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Save Layout",
      :restore_layout => "Restore Layout",
      :menu_title => "Toolbar Layout",
      :save_success => "Toolbar layout saved!",
      :restore_success => "Toolbar layout restored!",
      :save_item => "Save Layout",
      :restore_item => "Restore Layout"
    },
    
    # CZECH
    'cs' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Uložit rozložení",
      :restore_layout => "Obnovit rozložení",
      :menu_title => "Toolbar Layout",
      :save_success => "Rozložení panelů uloženo!",
      :restore_success => "Rozložení panelů obnoveno!",
      :save_item => "Uložit rozložení",
      :restore_item => "Obnovit rozložení"
    },
    
    # GERMAN
    'de' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Layout speichern",
      :restore_layout => "Layout wiederherstellen",
      :menu_title => "Toolbar Layout",
      :save_success => "Toolbar-Layout gespeichert!",
      :restore_success => "Toolbar-Layout wiederhergestellt!",
      :save_item => "Layout speichern",
      :restore_item => "Layout wiederherstellen"
    },
    
    # SPANISH
    'es' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Guardar diseño",
      :restore_layout => "Restaurar diseño",
      :menu_title => "Toolbar Layout",
      :save_success => "¡Diseño de barras guardado!",
      :restore_success => "¡Diseño de barras restaurado!",
      :save_item => "Guardar diseño",
      :restore_item => "Restaurar diseño"
    },
    
    # FRENCH
    'fr' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Sauvegarder la disposition",
      :restore_layout => "Restaurer la disposition",
      :menu_title => "Toolbar Layout",
      :save_success => "Disposition des toolbars sauvegardée !",
      :restore_success => "Disposition des toolbars restaurée !",
      :save_item => "Sauvegarder la disposition",
      :restore_item => "Restaurer la disposition"
    },
    
    # ITALIAN
    'it' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Salva layout",
      :restore_layout => "Ripristina layout",
      :menu_title => "Toolbar Layout",
      :save_success => "Layout delle barre salvato!",
      :restore_success => "Layout delle barre ripristinato!",
      :save_item => "Salva layout",
      :restore_item => "Ripristina layout"
    },
    
    # DUTCH
    'nl' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Layout opslaan",
      :restore_layout => "Layout herstellen",
      :menu_title => "Toolbar Layout",
      :save_success => "Werkbalk-layout opgeslagen!",
      :restore_success => "Werkbalk-layout hersteld!",
      :save_item => "Layout opslaan",
      :restore_item => "Layout herstellen"
    },
    
    # POLISH
    'pl' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Zapisz układ",
      :restore_layout => "Przywróć układ",
      :menu_title => "Toolbar Layout",
      :save_success => "Układ pasków zapisany!",
      :restore_success => "Układ pasków przywrócony!",
      :save_item => "Zapisz układ",
      :restore_item => "Przywróć układ"
    },
    
    # PORTUGUESE
    'pt' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Salvar layout",
      :restore_layout => "Restaurar layout",
      :menu_title => "Toolbar Layout",
      :save_success => "Layout de barras salvo!",
      :restore_success => "Layout de barras restaurado!",
      :save_item => "Salvar layout",
      :restore_item => "Restaurar layout"
    },
    
    # SWEDISH
    'sv' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Spara layout",
      :restore_layout => "Återställ layout",
      :menu_title => "Toolbar Layout",
      :save_success => "Verktygsfält-layout sparat!",
      :restore_success => "Verktygsfält-layout återställt!",
      :save_item => "Spara layout",
      :restore_item => "Återställ layout"
    },
    
    # TURKISH
    'tr' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Düzeni kaydet",
      :restore_layout => "Düzeni geri yükle",
      :menu_title => "Toolbar Layout",
      :save_success => "Araç çubuğu düzeni kaydedildi!",
      :restore_success => "Araç çubuğu düzeni geri yüklendi!",
      :save_item => "Düzeni kaydet",
      :restore_item => "Düzeni geri yükle"
    },
    
    # RUSSIAN
    'ru' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "Сохранить макет",
      :restore_layout => "Восстановить макет",
      :menu_title => "Toolbar Layout",
      :save_success => "Макет панелей сохранен!",
      :restore_success => "Макет панелей восстановлен!",
      :save_item => "Сохранить макет",
      :restore_item => "Восстановить макет"
    },
    
    # JAPANESE
    'ja' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "レイアウトを保存",
      :restore_layout => "レイアウトを復元",
      :menu_title => "Toolbar Layout",
      :save_success => "ツールバーのレイアウトを保存しました！",
      :restore_success => "ツールバーのレイアウトを復元しました！",
      :save_item => "レイアウトを保存",
      :restore_item => "レイアウトを復元"
    },
    
    # KOREAN
    'ko' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "레이아웃 저장",
      :restore_layout => "레이아웃 복원",
      :menu_title => "Toolbar Layout",
      :save_success => "툴바 레이아웃이 저장되었습니다!",
      :restore_success => "툴바 레이아웃이 복원되었습니다!",
      :save_item => "레이아웃 저장",
      :restore_item => "레이아웃 복원"
    },
    
    # SIMPLIFIED CHINESE
    'zh-CN' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "保存布局",
      :restore_layout => "恢复布局",
      :menu_title => "Toolbar Layout",
      :save_success => "工具栏布局已保存！",
      :restore_success => "工具栏布局已恢复！",
      :save_item => "保存布局",
      :restore_item => "恢复布局"
    },
    
    # TRADITIONAL CHINESE
    'zh-TW' => {
      :plugin_name => "Toolbar Layout",
      :save_layout => "儲存配置",
      :restore_layout => "恢復配置",
      :menu_title => "Toolbar Layout",
      :save_success => "工具列配置已儲存！",
      :restore_success => "工具列配置已恢復！",
      :save_item => "儲存配置",
      :restore_item => "恢復配置"
    }
    
  }
  
end
