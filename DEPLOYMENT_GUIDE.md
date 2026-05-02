# Guide de déploiement - Site web Toolbar Layout

## 📧 Problème de l'email

L'adresse `support@toolbarlayout.com` est fictive. Voici les solutions :

### Option 1: Utiliser ton email personnel
Modifie le fichier `index.html` et remplace :
```javascript
const mailtoLink = `mailto:TON_EMAIL@DOMAIN.com?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(body)}`;
```

### Option 2: Créer une adresse email gratuite
- Gmail : `toolbarlayout@gmail.com`
- Outlook : `toolbarlayout@outlook.com`
- ProtonMail : `toolbarlayout@protonmail.com`

### Option 3: Services d'email gratuits
- Zoho Mail : `support@toolbarlayout.zohomail.com`
- GMX : `toolbarlayout@gmx.com`

## 🌐 Déploiement du site web

### Option 1: GitHub Pages (GRATUIT)
1. Crée un compte GitHub
2. Crée un nouveau repo : `toolbar-layout-website`
3. Upload le fichier `index.html`
4. Dans Settings → Pages, active GitHub Pages
5. Ton site sera accessible : `https://TON_USERNAME.github.io/toolbar-layout-website`

### Option 2: Netlify (GRATUIT)
1. Va sur netlify.com
2. Drag & drop le fichier `index.html`
3. Ton site sera instantanément en ligne avec une URL aléatoire
4. Tu peux personnaliser le domaine gratuitement

### Option 3: Vercel (GRATUIT)
1. Va sur vercel.com
2. Importe ton projet GitHub
3. Déploie automatiquement
4. Domaine gratuit inclus

### Option 4: Firebase Hosting (GRATUIT)
1. Va sur console.firebase.google.com
2. Crée un nouveau projet
3. Utilise Firebase Hosting
4. Upload le fichier `index.html`

## 📝 Modifications nécessaires

### 1. Remplace l'email dans index.html
```javascript
// Ligne ~200, remplace :
const mailtoLink = `mailto:TON_EMAIL@DOMAIN.com?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(body)}`;

// Et aussi :
<a href="mailto:TON_EMAIL@DOMAIN.com" class="text-blue-600 font-semibold">TON_EMAIL@DOMAIN.com</a>
```

### 2. Ajoute tes liens de don
Remplace les boutons de don avec tes vrais liens :
- PayPal : `https://paypal.me/TON_PSEUDO`
- Buy Me a Coffee : `https://buymeacoffee.com/TON_PSEUDO`
- Crypto : Ton adresse crypto

## 🚀 Étapes rapides

1. **Choisis un email gratuit** (Gmail recommandé)
2. **Modifie index.html** avec ton email
3. **Choisis une plateforme** (GitHub Pages ou Netlify)
4. **Upload le fichier**
5. **Teste le formulaire de contact**

## 📱 Test local

Pour tester en local :
1. Ouvre `index.html` dans ton navigateur
2. Le formulaire utilisera ton email client
3. Les liens de don fonctionneront

## 🔗 URL finale

Une fois déployé, ton site aura une URL comme :
- `https://toolbarlayout.netlify.app`
- `https://TON_USERNAME.github.io/toolbar-layout`
- `https://toolbarlayout.vercel.app`

**Le plus rapide : Netlify (drag & drop, 2 minutes !)** 🚀
