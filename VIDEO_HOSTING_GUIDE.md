# 🎥 Hébergeurs Vidéo Gratuits - Solutions

## 🚀 Options d'hébergement vidéo GRATUITES

### Option 1: YouTube (Recommandé)
**Avantages**:
- 100% gratuit
- Lecteur intégré
- CDN mondial ultra-rapide
- Analytics inclus

**Étapes**:
1. Upload ta vidéo sur YouTube (privé/non listé)
2. Obtient le code d'intégration
3. Intègre dans ton HTML

**Code HTML**:
```html
<iframe width="100%" height="600" 
src="https://www.youtube.com/embed/VIDEO_ID" 
frameborder="0" 
allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
allowfullscreen>
</iframe>
```

### Option 2: Vimeo (Gratuit)
**Avantages**:
- Qualité professionnelle
- Pas de pub
- Lecteur élégant

**Limites**:
- 500MB par semaine
- 5GB total

**Code HTML**:
```html
<iframe src="https://player.vimeo.com/video/VIDEO_ID" 
width="100%" height="600" 
frameborder="0" 
allow="autoplay; fullscreen; picture-in-picture" 
allowfullscreen>
</iframe>
```

### Option 3: Dailymotion
**Avantages**:
- Gratuit
- Pas de limite de taille
- Lecteur responsive

**Code HTML**:
```html
<iframe frameborder="0" 
width="100%" height="600" 
src="https://www.dailymotion.com/embed/video/VIDEO_ID" 
allowfullscreen>
</iframe>
```

### Option 4: GitHub (Pour petits fichiers)
**Avantages**:
- Gratuit
- Lien direct
- Intégration simple

**Limites**:
- 100MB max par fichier
- Pas de lecteur vidéo optimisé

**Code HTML**:
```html
<video controls width="100%" height="600">
    <source src="https://raw.githubusercontent.com/USERNAME/repo/main/video.mp4" type="video/mp4">
</video>
```

## 🎯 Solution recommandée: YouTube

### Pourquoi YouTube?
- **Illimité** en taille et durée
- **Ultra-rapide** avec CDN mondial
- **Lecteur** optimisé pour tous les appareils
- **Analytics** pour voir qui regarde
- **Gratuit** à 100%

### Étapes rapides:
1. **Upload** sur YouTube (mode "Non listé")
2. **Copie** l'ID de la vidéo
3. **Remplace** `VIDEO_ID` dans le code
4. **Intègre** dans ton HTML

## 🔧 Mise à jour du HTML

Remplace la section vidéo dans `index.html`:

```html
<!-- Option YouTube -->
<div class="bg-white rounded-lg overflow-hidden card-shadow">
    <iframe width="100%" height="600" 
    src="https://www.youtube.com/embed/TA_VIDEO_ID" 
    frameborder="0" 
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
    allowfullscreen>
    </iframe>
    <div class="p-6">
        <h4 class="text-xl font-semibold mb-2">Toolbar Layout Demo</h4>
        <p class="text-gray-600">Watch how Toolbar Layout saves and restores your SketchUp toolbar positions with just one click.</p>
    </div>
</div>
```

## ⚡ Test rapide

Une fois uploadée sur YouTube:
1. **Vérifie** que la vidéo est bien "Non listée"
2. **Teste** le lecteur sur mobile
3. **Confirme** que ça fonctionne sur tous les navigateurs

**YouTube est la solution la plus fiable et professionnelle !**
