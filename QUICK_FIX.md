# Solution Rapide DNS - 5 minutes

## 🚀 Option la plus simple : Domaine Netlify GRATUIT

1. **Netlify** → **Site settings**
2. **Change site name** en : `toolbar-layout-officiel`
3. Ton site sera : **toolbar-layout-officiel.netlify.app**
4. **Instantané** - Pas de DNS à configurer

## 🔧 Si tu veux TON domaine Namecheap

### Étape 1: Trouver les DNS Netlify
1. Netlify → **Domain settings**
2. Regarde dans **"DNS records"**
3. Netlify affiche les valeurs exactes à copier

### Étape 2: Configurer Namecheap
1. Namecheap → **Domain List** → **Manage**
2. **Advanced DNS**
3. Ajoute ces 2 enregistrements :

#### Record A (si Netlify donne une IP)
- Type: A
- Host: @
- Value: [IP_NETLIFY]
- TTL: Automatic

#### Record CNAME (plus courant)
- Type: CNAME
- Host: @  
- Value: [VALEUR_NETLIFY]
- TTL: Automatic

### Étape 3: Vérification
1. **Netlify** → **Verify DNS**
2. Attend la propagation (5-30 minutes)
3. Test avec [whatsmydns.net](https://whatsmydns.net)

## ⚡ Test immédiat

Pour vérifier si ça marche :
```bash
# Commande Windows
nslookup tondomaine.com

# Doit retourner les valeurs Netlify
```

## 📱 Alternative : GitHub Pages (GRATUIT)

1. Crée un repo GitHub
2. Upload `index_fixed.html`
3. Settings → Pages
4. Active GitHub Pages
5. URL : `https://TON_USERNAME.github.io/NOM_REPO`

## ✅ Recommandation

**Utilise le domaine Netlify gratuit** :
- toolbar-layout-officiel.netlify.app
- Pas de configuration DNS
- Immédiatement fonctionnel
- Professionnel

**Puis plus tard, quand tu maîtrises, configure ton domaine Namecheap.**
