# 🚨 Erreur Extension Warehouse - Solutions

## 📋 Quelles erreurs tu rencontres ?

Pour t'aider, j'ai besoin de savoir :
- **Message d'erreur exact** ?
- **À quelle étape** ça bloque ?
- **Quel fichier** cause le problème ?

## 🔍 Erreurs courantes et solutions

### Erreur 1: "Invalid .rbz file"
**Cause** : Structure incorrecte du fichier .rbz
**Solution** :
```
1. Sélectionne TOUS les fichiers (pas seulement le .rbz)
2. ZIP le dossier complet
3. Renomme en .rbz
```

### Erreur 2: "Missing manifest.rb"
**Cause** : Fichier manifest manquant
**Solution** : Ajoute un fichier `manifest.rb` avec :
```ruby
SketchupExtension.new('Toolbar Layout', 'toolbar_layout.rb')
```

### Erreur 3: "Invalid Ruby syntax"
**Cause** : Erreur de code Ruby
**Solution** : Vérifie la syntaxe dans tous les fichiers .rb

### Erreur 4: "File too large"
**Cause** : Fichier .rbz > 50MB
**Solution** : Réduis la taille des images/icons

### Erreur 5: "Missing metadata"
**Cause** : Informations manquantes
**Solution** : Complète tous les champs requis

## 📝 Structure correcte du .rbz

```
toolbar_layout.rbz (ZIP renommé)
├── toolbar_layout.rb      ← Point d'entrée
├── loader.rb             ← Logique principale
├── strings.rb            ← Traductions
├── README.md             ← Documentation
├── manifest.rb           ← Métadonnées (si requis)
└── icons/
    ├── logo_tl_16.png
    ├── logo_tl_24.png
    └── logo_tl_32.png
```

## 🔧 Étapes de création .rbz

1. **Crée un dossier** : `toolbar_layout_package`
2. **Copie TOUS les fichiers** dedans
3. **ZIP le dossier** (clic droit → Envoyer vers → Dossier compressé)
4. **Renomme** : `toolbar_layout.zip` → `toolbar_layout.rbz`

## 📞 Si ça ne marche toujours pas

### Information à fournir :
- **Capture d'écran** de l'erreur
- **Message d'erreur exact**
- **Taille du fichier** .rbz
- **Contenu du dossier** zippé

### Support Extension Warehouse :
- Email : extensions@sketchup.com
- Forum : SketchUp Community

## ⚡ Test rapide

Avant d'uploader :
1. **Teste localement** : Installe le .rbz dans SketchUp
2. **Vérifie** que tout fonctionne
3. **Upload** seulement si le test est OK

**Envoie-moi le message d'erreur exact pour une solution précise !**
