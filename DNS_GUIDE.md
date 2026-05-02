# Guide DNS - Namecheap + Netlify

## 🔧 Problème DNS courant

Le domaine Namecheap ne pointe pas vers Netlify = site inaccessible.

## 📋 Étapes pour configurer DNS

### Étape 1: DNS Namecheap
1. Connecte-toi sur **namecheap.com**
2. Va dans **Domain List** → clique sur ton domaine
3. Clique sur **Manage** à côté de ton domaine
4. Va dans **Advanced DNS**
5. **Supprime** tous les enregistrements existants (sauf ceux essentiels)

### Étape 2: Ajouter les enregistrements Netlify
Ajoute ces enregistrements :

#### Record 1 (Principal)
- **Type**: CNAME
- **Host**: @ (ou vide)
- **Value**: ton-site-netlify.netlify.app
- **TTL**: Automatic

#### Record 2 (WWW)
- **Type**: CNAME  
- **Host**: www
- **Value**: ton-site-netlify.netlify.app
- **TTL**: Automatic

### Étape 3: Netlify DNS
1. Va sur **netlify.com** → **Site overview**
2. Sélectionne ton site
3. Va dans **Domain settings** → **Add custom domain**
4. Entre ton domaine (ex: tondomaine.com)
5. Netlify te donnera les valeurs DNS exactes
6. **Vérifie** que Netlify confirme la connexion

## ⏱️ Temps de propagation

- **Attends 24-48h** pour la propagation DNS
- **Vérifie** avec [whatsmydns.net](https://whatsmydns.net)
- **Teste** plusieurs fois

## 🔍 Vérification

### Commandes pour vérifier
```bash
# Windows
nslookup tondomaine.com

# Mac/Linux  
dig tondomaine.com
```

### En ligne
- [DNSChecker.org](https://dnschecker.org)
- [WhatsMyDNS.net](https://whatsmydns.net)

## 🚨 Si ça ne marche toujours pas

### Option 1: Netlify Nameservers
Remplace les nameservers Namecheap par ceux de Netlify :
- **dns1.p01.nsone.net**
- **dns2.p01.nsone.net**
- **dns3.p01.nsone.net**
- **dns4.p01.nsone.net**

### Option 2: Domaine Netlify
Utilise un sous-domaine Netlify :
- `toolbarlayout.netlify.app` (gratuit et instantané)

## 📞 Support

- **Namecheap**: 24/7 Live Chat
- **Netlify**: help@netlify.com

## ✅ Test final

Une fois propagé, teste :
1. `http://tondomaine.com`
2. `https://tondomaine.com`
3. `www.tondomaine.com`

**Le plus simple : utiliser le domaine Netlify gratuit !** 🎯
