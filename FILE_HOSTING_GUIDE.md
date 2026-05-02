# 📁 Guide Hébergement de Fichiers - Solution pour .rbz

## 🎯 Problème identifié
Netlify ne peut pas héberger de fichiers .rbz → il faut un hébergeur de fichiers gratuit.

## 🚀 Solutions d'hébergement GRATUITES

### Option 1: GitHub (Recommandé)
1. Crée un repo GitHub : `toolbar-layout-extension`
2. Upload ton `toolbar_layout_saver.rbz`
3. Lien direct : 
   ```
   https://raw.githubusercontent.com/TON_USERNAME/toolbar-layout-extension/main/toolbar_layout_saver.rbz
   ```

### Option 2: Google Drive
1. Upload le fichier sur Google Drive
2. Partage avec "Anyone with the link"
3. Convertit le lien en lien direct
4. Format : `https://drive.google.com/uc?export=download&id=FILE_ID`

### Option 3: Dropbox
1. Upload sur Dropbox
2. Crée un lien de partage
3. Change `dl=0` en `dl=1`
4. Format : `https://www.dropbox.com/s/PATH/toolbar_layout_saver.rbz?dl=1`

### Option 4: WeTransfer
1. Upload sur WeTransfer
2. Obtiens un lien de téléchargement
3. Valide 7 jours (renouvelable)

## 📝 Étapes rapides avec GitHub

### Étape 1: Créer le repo
1. Va sur github.com
2. "New repository" → `toolbar-layout-extension`
3. "Public" (pour les liens directs)

### Étape 2: Upload le fichier
1. "Add file" → "Upload files"
2. Sélectionne `toolbar_layout_saver.rbz`
3. "Commit changes"

### Étape 3: Obtenir le lien
1. Clique sur le fichier
2. Bouton "Raw"
3. Copie l'URL dans la barre d'adresse

## 🔧 Mettre à jour le HTML

Remplace les liens de téléchargement :
```html
<!-- Ancien -->
<a href="toolbar_layout_saver.rbz" download>

<!-- Nouveau -->
<a href="https://raw.githubusercontent.com/TON_USERNAME/toolbar-layout-extension/main/toolbar_layout_saver.rbz" download>
```

## ✅ Avantages de GitHub
- **Gratuit** et illimité
- **Liens permanents**
- **Version control**
- **CDN GitHub** (rapide)
- **HTTPS sécurisé**

## 📱 Test sur smartphone
Une fois le lien GitHub ajouté :
- Le fichier se téléchargera correctement
- Extension `.rbz` préservée
- Pas de problème `.html`

**GitHub est la solution la plus fiable !**
