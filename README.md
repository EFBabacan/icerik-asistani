# İçerik Asistanı

Instagram'da **ne paylaşacağını** bulan Türkçe Claude asistanı. Seni tanır,
bu haftanın özel günlerine, Türkiye gündemine ve güncel akımlara bakıp hazır
paylaşım fikirleri ve gün gün haftalık program çıkarır.

Instagram şifresi istemez, hesabına girmez, senin yerine paylaşmaz. Sadece
fikir verir; paylaşımı sen yaparsın.

📘 **Kılavuz (her şey burada):** https://claude.ai/artifact/5gwgYbyjMPo9hzAXnxM21Q
📱 **Telefon kurulumu (tek düğmeyle kopyala):** https://claude.ai/artifact/9y3nk16xhow5Yy4RLdSMDN

## Ne yapar?
- **plan**: bu hafta ne paylaşayım? Gün gün hazır program
- **hafta / ay**: özel günler (milli, dini, anma, dünya, ticari, eğlence)
- **gündem**: Türkiye'de şu an ne konuşuluyor, hangisine içerik yapılır
- **<konu>** (ör. `kahve`): gündem + özel gün + akım birleşimiyle 5 hazır fikir
- **📸 ekran görüntüsü**: profil, istatistik, kitle, Reels trendleri ekranından öğrenir
- **incele** (bilgisayar): giriş yaptığın Chrome'dan senin ve benzer hesapların neyle tuttuğunu bulur

İlk mesajda asistan önce seni tanır (kendini birkaç cümleyle yaz, ekran
görüntüsü at ya da soru-cevap).

## Kurulum

### 📱 Telefon (bilgisayar bilmeyenler için önerilen)
1. Claude uygulamasında **Projeler → Yeni proje** → adı: `İçerik Asistanı`
2. [Telefon kurulum sayfasında](https://claude.ai/artifact/9y3nk16xhow5Yy4RLdSMDN)
   **Talimatı kopyala** → projenin **Talimatlar** kısmına yapıştır → kaydet
   (aynı metin: [`telefon-surumu/proje-talimati.txt`](telefon-surumu/proje-talimati.txt))
3. Proje içinde yeni sohbet, **Web araması** açık, `merhaba` yaz
4. Tanışma sonunda verilen **HESABIM** yazısını Talimatlar'ın en altına yapıştır

### 💻 Bilgisayar, yol A: eklenti (en kolay, her oturumda çalışır)
Claude uygulamasında **Code** sekmesinde yeni bir oturum aç ve sırayla yaz:
```
/plugin marketplace add EFBabacan/icerik-asistani
```
```
/plugin install icerik@icerik-asistani
```
Sonra yeni bir oturum aç ve `merhaba` ya da `/icerik:icerik yardım` yaz
(`/ic` yazınca listede çıkar).

- **Güncelleme:** `/plugin marketplace update icerik-asistani`, ardından yeni oturum.
- **Hesap bilgilerin** eklentinin kendi bilgi klasöründe (`~/.claude/plugins/data/…`)
  durur; güncellemede silinmez.
- İnternette arama ve bilgi kaydetme için ilk seferlerde izin sorabilir:
  **"Evet, bir daha sorma"** de.

### 💻 Bilgisayar, yol B: klasör (sade menü ve hazır izinlerle)
```bash
git clone https://github.com/EFBabacan/icerik-asistani.git
```
Claude uygulamasında **Code** sekmesi → yeni oturum → klasör olarak
`icerik-asistani/Instagram` → `merhaba` yaz. Komutlar: `/icerik plan`,
`/icerik gündem`, `/icerik kahve`, `/icerik yardım`.

Asistan sadece `Instagram` klasöründe açılan oturumlarda çalışır. Bu klasörde
arama ve kaydetme izinleri hazırdır, gereksiz ek komutlar gizlenir.
Güncelleme: `git pull`.

> İkisini birden kurma: aynı asistan iki kez görünür.

## Güncelleme
- **Eklenti:** `/plugin marketplace update icerik-asistani`, sonra yeni oturum.
- **Klasör:** `git pull`. Hesap bilgilerin (`kitle.md`), inceleme
  sonuçların (`inceleme.md`) ve eklediğin günler (`takvim-ek.md`) repoda
  değildir, güncellemede silinmez.
- **Telefon:** yeni talimatı kopyala, projedeki eskisinin yerine yapıştır.
  En alttaki **HESABIM** kısmını önce bir kenara al, sonra geri ekle.

## Klasörler
| Yol | Ne |
| --- | --- |
| `Instagram/` | Bilgisayar sürümü (Code sekmesinde bu klasörü seç) |
| `Instagram/.claude/skills/icerik/SKILL.md` | Asistanın talimatları |
| `Instagram/.claude/skills/icerik/takvim.md` | Türkiye özel günler takvimi |
| `Instagram/.claude/skills/icerik/kitle-sablon.md` | Hesap bilgileri şablonu (asistan `kitle.md`'yi bundan oluşturur) |
| `Instagram/.claude/settings.json` | Bu klasöre özel izinler ve sade menü |
| `telefon-surumu/` | Claude projesine yapıştırılacak talimat ve kısa kurulum notu |
| `.claude-plugin/marketplace.json` | Eklenti pazarı tanımı (`/plugin marketplace add`) |
| `plugins/icerik/` | Eklenti; içindeki skill, `Instagram/.claude/skills/icerik`'in kopyasıdır |
| `scripts/esitle.sh` | Geliştirici için: değişiklikten sonra eklenti kopyasını eşitler |

**Geliştirici notu:** asıl kaynak `Instagram/.claude/skills/icerik`. Orada
değişiklik yaptıktan sonra `bash scripts/esitle.sh` çalıştır, ikisini birlikte
commit'le.

## Geri bildirim
Beğenmediğin, yanlış ya da eksik bir şey görürsen
[Issues](https://github.com/EFBabacan/icerik-asistani/issues) kısmına yaz:
ne yazdın, ne bekledin, ne geldi.

Sürüm notları: [CHANGELOG.md](CHANGELOG.md)
