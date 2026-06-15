# EUnion Website Deployment Guide

## 🚀 Snabbstart för att uppdatera eunion.cloud

### Alternativ 1: Manuell upload via GitHub webbgränssnitt (Enklast)

1. Gå till: https://github.com/mala57/eunion.cloud (eller ditt repo)
2. Klicka på "Add file" → "Upload files"
3. Dra och släpp alla filer från `/root/.openclaw/workspace/european-union.cloud/`
4. Skriv commit message: "Update to EUnion branding"
5. Klicka "Commit changes"

**Klart!** GitHub Pages uppdateras automatiskt inom 1-2 minuter.

---

### Alternativ 2: Via Git CLI

```bash
# Gå till rätt mapp
cd /root/.openclaw/workspace/european-union.cloud/

# Kör deployment-skriptet
bash deploy.sh
```

---

### Alternativ 3: SCP direkt till server (om inte GitHub Pages)

Om eunion.cloud hostas på en egen server (inte GitHub Pages):

```bash
# Använd deployment-skriptet för server
scp -r /root/.openclaw/workspace/european-union.cloud/* user@eunion.cloud:/var/www/html/
```

---

## 📋 Checklista före deployment

- [ ] Alla "Linux Sverige" är ändrade till "EUnion"
- [ ] Alla "linux-sverige" är ändrade till "eunion"
- [ ] Priser är i EUR (€5, €12, €25)
- [ ] Kontaktinfo är uppdaterad
- [ ] Alla länkar fungerar

---

## 🔍 Verifiering efter deployment

Testa följande URL:er:
- https://eunion.cloud/ (startsida)
- https://eunion.cloud/pricing.html (prissättning)
- https://eunion.cloud/contact.html (kontakt)
- https://eunion.cloud/features.html (funktioner)
- https://eunion.cloud/about.html (om oss)

---

## 🐛 Felsökning

**Problem: "Linux Sverige" visas fortfarande**
- Tvinga refresh: Ctrl+F5 (Windows) eller Cmd+Shift+R (Mac)
- Eller vänta 5 minuter på CDN-cache

**Problem: 404 på vissa sidor**
- Kontrollera att alla filer laddats upp
- Filnamn är case-sensitive på vissa servrar

**Problem: Styles saknas**
- Kontrollera att `styles.css` finns med i uploaden

---

## 📁 Filstruktur som ska laddas upp

```
eunion.cloud/
├── index.html          # Startsida (EN)
├── index-sv.html      # Startsida (SV)
├── pricing.html       # Prissättning
├── features.html      # Funktioner
├── about.html         # Om oss
├── contact.html       # Kontakt
└── styles.css         # Stilmall
```

---

Senast uppdaterad: 2026-06-15
