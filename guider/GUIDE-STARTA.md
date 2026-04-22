# 🐧 Kom igång med Linux - Guide för Svenskar

## Inledning

Du har bestämt dig för att prova Linux. Grattis! Du är på väg att ta kontroll över din dator och dina data.

Denna guide hjälper dig att:
- Välja rätt Linux-distribution
- Installera Linux
- Komma igång med grundläggande användning
- Hitta alternativ till Windows-program

---

## Steg 1: Välj distribution

### För nybörjare (Windows-liknande)

#### **Linux Mint** ⭐ Rekommenderat!
- **Varför:** Ser ut som Windows, enkelt att använda
- **Nedladdning:** [linuxmint.com](https://linuxmint.com)
- **Svenska:** Fullständigt stöd
- **Hårdvara:** Fungerar på de flesta datorer

#### **Zorin OS**
- **Varför:** Vackert, mycket Windows-liknande
- **Nedladdning:** [zorin.com/os](https://zorin.com/os)
- **Svenska:** Fullständigt stöd
- **Hårdvara:** Lite högre krav

#### **Ubuntu**
- **Varför:** Största community, mest support
- **Nedladdning:** [ubuntu.com](https://ubuntu.com)
- **Svenska:** Fullständigt stöd
- **Hårdvara:** Måttliga krav

### För säkerhetsfokuserade

#### **Fedora**
- **Varför:** Senaste tekniken, säkerhet
- **Nedladdning:** [fedoraproject.org](https://fedoraproject.org)
- **Svenska:** Fullständigt stöd

#### **Tails**
- **Varför:** Total anonymitet, integritet
- **Nedladdning:** [tails.net](https://tails.net)
- **Svenska:** Begränsat stöd

### För äldre datorer

#### **Xubuntu**
- **Varför:** Lättvikt, fungerar på gamla datorer
- **Nedladdning:** [xubuntu.org](https://xubuntu.org)
- **Svenska:** Fullständigt stöd

#### **Linux Lite**
- **Varför:** Extremt lätt, Windows-XP-liknande
- **Nedladdning:** [linuxliteos.com](https://www.linuxliteos.com)
- **Svenska:** Begränsat stöd

---

## Steg 2: Testa utan installation

### Live USB
Du kan testa Linux utan att installera det!

1. Ladda ner ISO-filen
2. Skriv till USB-minne (minst 8 GB)
3. Starta från USB
4. Välj "Try Linux without installing"

### Verktyg för USB
- **Windows:** [Rufus](https://rufus.ie) eller [BalenaEtcher](https://www.balena.io/etcher)
- **macOS:** BalenaEtcher
- **Linux:** BalenaEtcher eller `dd`

---

## Steg 3: Installera Linux

### Innan du börjar
- **Backup:** Spara allt viktigt på extern disk
- **Utrymme:** Minst 50 GB ledigt (100 GB rekommenderat)
- **UEFI:** Inaktivera "Secure Boot" om problem uppstår

### Steg-för-steg (Linux Mint exempel)

1. **Starta från USB**
   - Sätt i USB-minnet
   - Starta datorn
   - Tryck F12/F2/Del för boot-menu (varierar)
   - Välj USB-minnet

2. **Välj "Install Linux Mint"**
   - Välj språk: Svenska
   - Välj tangentbordslayout: Swedish

3. **Installationstyp**
   - **Dual boot:** Installera bredvid Windows (rekommenderat)
   - **Erase disk:** Ta bort allt och installera Linux (avancerat)

4. **Användarkonto**
   - Namn: Ditt namn
   - Användarnamn: Ditt namn (gemen)
   - Lösenord: Starkt lösenord

5. **Vänta**
   - Installationen tar 10-20 minuter
   - Datorn startar om

---

## Steg 4: Efter installation

### Första stegen
1. **Uppdatera systemet**
   ```bash
   sudo apt update && sudo apt upgrade -y
   ```

2. **Installera Svenska språk**
   - Öppna "Language Settings"
   - Välj Svenska
   - Starta om

3. **Installera codecs**
   ```bash
   sudo apt install ubuntu-restricted-extras -y
   ```

4. **Installera program**
   - Öppna "Software Manager"
   - Sök efter program
   - Klicka "Install"

---

## Steg 5: Alternativ till Windows-program

### Webbläsare
| Windows | Linux Alternativ |
|---------|------------------|
| Chrome | Chrome, Chromium, Firefox |
| Edge | Firefox, Chromium |
| Internet Explorer | Ej nödvändigt |

### Office
| Windows | Linux Alternativ |
|---------|------------------|
| Microsoft Office | LibreOffice, OnlyOffice |
| Excel | LibreOffice Calc |
| Word | LibreOffice Writer |
| PowerPoint | LibreOffice Impress |

### Kommunikation
| Windows | Linux Alternativ |
|---------|------------------|
| Outlook | Thunderbird, Evolution |
| Skype | Skype (finns), Discord |
| Teams | Teams (webb), Discord |

### Media
| Windows | Linux Alternativ |
|---------|------------------|
| Windows Media Player | VLC, MPV |
| iTunes | Clementine, Rhythmbox |
| Spotify | Spotify (finns) |

### Grafik
| Windows | Linux Alternativ |
|---------|------------------|
| Photoshop | GIMP, Krita |
| Illustrator | Inkscape |
| Lightroom | Darktable |

### Video
| Windows | Linux Alternativ |
|---------|------------------|
| Premiere Pro | Kdenlive, DaVinci Resolve |
| Windows Movie Maker | OpenShot, Shotcut |

### Utveckling
| Windows | Linux Alternativ |
|---------|------------------|
| Visual Studio | VS Code, JetBrains |
| PowerShell | Bash, Zsh, Fish |
| Git Bash | Git (inbyggt) |

### Spel
| Windows | Linux Alternativ |
|---------|------------------|
| Windows-spel | Steam (Proton), Lutris |
| Epic Games | Heroic Games Launcher |

---

## Steg 6: Vanliga kommandon

### Filhantering
```bash
ls              # Lista filer
cd Dokument    # Gå till katalog
pwd             # Visa aktuell katalog
mkdir NyMapp    # Skapa katalog
rm fil.txt      # Ta bort fil
cp fil1 fil2    # Kopiera fil
mv fil1 fil2    # Flytta/döp om fil
```

### System
```bash
sudo apt update           # Uppdatera paketlista
sudo apt upgrade          # Uppdatera systemet
sudo apt install paket    # Installera program
sudo apt remove paket     # Avinstallera program
sudo apt autoremove       # Ta bort onödiga paket
```

### Diskanvändning
```bash
df -h           # Visa diskutrymme
du -sh *        # Visa storlek på kataloger
free -h         # Visa minnesanvändning
```

---

## Steg 7: Felsökning

### Problem: Datorn startar inte från USB
**Lösning:**
- Inaktivera "Secure Boot" i BIOS
- Aktivera "Legacy Boot" om UEFI-problem

### Problem: WiFi fungerar inte
**Lösning:**
```bash
sudo apt install linux-firmware
sudo modprobe -r iwlwifi
sudo modprobe iwlwifi
```

### Problem: Skärm upplösning fel
**Lösning:**
- Öppna "Display Settings"
- Välj rätt upplösning
- Installera proprietära drivrutiner om nödvändigt

### Problem: Ljud fungerar inte
**Lösning:**
```bash
sudo apt install pulseaudio
pulseaudio --start
```

### Problem: Windows startar inte (dual boot)
**Lösning:**
```bash
sudo os-prober
sudo update-grub
```

---

## Steg 8: Community och hjälp

### Svenska resurser
- **linux.se** - Svensk Linux-community
- **Ubuntu-se.org** - Svenskt Ubuntu-forum
- **Diskord/Telegram** - Linux Sverige-grupper

### Internationella resurser
- **Ask Ubuntu** -问答社区
- **Reddit r/linux** - Nyheter och diskussion
- **Stack Overflow** - Tekniska frågor

---

## Steg 9: Nästa steg

### Lär dig mer
1. **Terminalen** - Lär dig grundläggande kommandon
2. **Bash-script** - Automatisera uppgifter
3. **Systemadministration** - Hantera Linux-system
4. **Programmering** - Python, Node.js, etc.

### Gå djupare
1. **Filosofi** - Läs om fri programvara
2. **Säkerhet** - Hårdning av Linux
3. **Server** - Kör din egen server
4. **Bidra** - Hjälp till med öppen källkod

---

## Checklista för nybörjare

- [ ] Testa Live USB utan installation
- [ ] Välj distribution (rekommenderat: Linux Mint)
- [ ] Backup viktiga filer
- [ ] Installera Linux
- [ ] Uppdatera systemet
- [ ] Installera Svenska språk
- [ ] Installera nödvändiga program
- [ ] Lär dig grundläggande terminal-kommandon
- [ ] Gå med i community

---

## Vanliga frågor (FAQ)

### F: Kan jag köra Windows-program på Linux?
**S:** Ja, med Wine eller virtuella maskiner. Men försök hitta Linux-alternativ först.

### F: Hur är det med spel?
**S:** Steam Proton stöder många Windows-spel. Native Linux-spel växer också.

### F: Behöver jag antivirus?
**S:** Linux är säkrare än Windows, men antivirus finns (ClamAV, Sophos).

### F: Kan jag ha Windows och Linux samtidigt?
**S:** Ja! Det kallas "dual boot". Du väljer OS vid start.

### F: Vad kostar Linux?
**S:** Gratis! De flesta distributioner är helt kostnadsfria.

### F: Vem hjälper mig om jag har problem?
**S:** Communityt! Forum, Discord, Stack Overflow. Du är inte ensam.

---

*Denna guide uppdateras löpande.*

*Senast uppdaterad: 2026-04-19*