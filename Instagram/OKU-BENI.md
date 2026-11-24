# İçerik Asistanı — Kullanım Kılavuzu

Instagram'da **ne paylaşacağını** bulan bir yardımcı. Claude'a kısa bir komut
yazarsın, o da internete bakıp sana hazır fikirler getirir.

## Ne yapar?
- **Bu hafta hangi özel günler var?** Bayramlar, anma günleri, dünya günleri,
  Türkiye'ye özel günler. Hangisi için paylaşım yapmaya değer, söyler.
- **Şu an ne konuşuluyor?** Türkiye gündemini getirir, hangisine içerik
  yapılır hangisine dokunulmaz, işaretler.
- **Bu hafta ne paylaşayım?** Gün gün hazır program verir: hangi gün,
  hangi format, ne paylaşacaksın.
- **Bir konu için fikir.** "Kahve" yazarsın; gündem, özel gün ve akımları
  birleştirip Reels, gönderi ve hikaye fikirleri çıkarır. Nasıl çekileceğini,
  açıklama metnini bile yazar.

## Komutlar
Claude'un yazı kutusuna `/` ile başlayarak yaz:

| Yaz | Ne olur |
| --- | --- |
| `/icerik yardım` | Bu menüyü gösterir |
| `/icerik kitle` | Birkaç soru sorar, hesabını tanır (**ilk iş bunu yap**) |
| `/icerik plan` | Bu hafta ne paylaşayım? Gün gün hazır program |
| `/icerik hafta` | Bu haftanın özel günleri |
| `/icerik ay` | Önümüzdeki 30 günün özel günleri |
| `/icerik gündem` | Türkiye'de şu an ne konuşuluyor |
| `/icerik gündem kahve` | Gündemde kahveyle ilgili ne var |
| `/icerik kahve` | Kahve için hazır içerik fikirleri |
| `/icerik hafta kahve` | Bu haftanın özel günleri + kahve fikirleri |
| `/icerik incele` | Hesabını ve benzer hesapları inceler (giriş yaptığın Chrome üzerinden) |
| `/icerik karne` | Ekran görüntülerinden hesap karnesi: en iyi saat, ne tuttu, ne yapmalı |

"kahve" yerine kendi konunu yaz: ürün, yemek, mekan, araba, her şey.

**Kısa yol:** Instagram'daki profil, istatistik ya da Reels trendleri
ekranının görüntüsünü sohbete at; asistan bilgileri kendisi çıkarır.

## Kurulum (bir kere)
1. **Claude masaüstü uygulamasını** indir ve giriş yap.
2. Zip'i **Masaüstü**'ne çıkar. Masaüstünde `Instagram` klasörü oluşur.
3. Uygulamada **Code** sekmesini aç, yeni oturum başlatırken klasör olarak
   **Masaüstü → Instagram**'ı seç.
4. **merhaba** yaz. Asistan önce seni tanır; üç yoldan birini seçersin:
   kendini birkaç cümleyle yaz (hesabın, kitlen, ne istediğin, neleri asla
   yapmadığın), Instagram ekran görüntüsü at ya da soru-cevap. Bir kere
   yapılır.
5. Sonra komutlara geç: `/ic` yazıp çıkanı seç ya da `/icerik plan` yaz.

Asistan **sadece bu klasörde** açılan oturumlarda çalışır. Bu klasörde
işine yaramayan ek komutlar da gizlenir, menü sade kalır. Her seferinde
yeni oturumu yine `Instagram` klasöründe aç.

`/` yazmak zorunda değilsin: "bu hafta ne var", "gündemde ne var",
"kahve için ne paylaşsam" gibi normal cümleler de çalışır.

## Bilmen gerekenler
- Instagram şifreni **istemez**, hesabına girmez, senin yerine paylaşım
  yapmaz. Sadece fikir verir; paylaşımı sen yaparsın.
- İnternetten bulduğu her bilginin linkini verir. Bulamadığını uydurmaz,
  "doğrulanamadı" der.
- Anma günlerinde (10 Kasım, 18 Mart, 6 Şubat) eğlence içeriği önermez.
- Dini günlerin tarihini her seferinde kontrol eder.
- `/icerik incele`, senin **zaten Instagram'a giriş yaptığın Chrome**'u
  (Claude in Chrome eklentisi) kullanarak hesabını ve seçtiğin 5-10 benzer
  hesabı okur. Giriş yapmaz, beğeni/takip/yorum yapmaz, az ve yavaş okur;
  ayda bir yeterli. Chrome bağlı değilse ekran görüntüsü ister.

## Klasördeki dosyalar
| Dosya | Ne işe yarar | Dokunmalı mısın? |
| --- | --- | --- |
| `SKILL.md` | Asistanın talimatları | Hayır |
| `kitle-sablon.md` | Hesap bilgileri için boş şablon | Hayır |
| `kitle.md` | Senin hesabının bilgileri (ilk tanışmada oluşur, güncellemelerde silinmez) | `/icerik kitle` doldurur |
| `takvim.md` | Özel günler listesi | İstersen gün ekleyebilirsin |
| `inceleme.md` | Son hesap incelemesinin bulguları | `/icerik incele` doldurur |
| `README.md` | Bu kılavuz | Hayır |

## Sürüm
- 1.2.1: ikinci test sonrası küçük düzeltmeler
- 1.2: ilk test sonrası düzeltmeler (menüde karne, net soru sınırları, kandiller, ciddi günler, bulunamayan gündem)
- 1.1: seçimli fikir akışı, hesap karnesi (/icerik karne), plana en iyi saat
- 1.0: eklenti olarak kurulum (/plugin install icerik@icerik-asistani), ayrı bilgi klasörü
- 0.9: "tam hazırla" (aramasız), limit dostu kurallar, kullanıcı adı, küçük düzeltmeler
- 0.8: önce tanışma (serbest yazı / ekran görüntüsü / soru-cevap), hedef ve "asla yapmam" listesi
- 0.7: ekran görüntüsünden öğrenme, hesap inceleme (`/icerik incele`)
- 0.6: haftalık paylaşım planı (`/icerik plan`), içerik sütunları, güçlü akım kaynakları
- 0.5: tek klasör kurulumu (Instagram), sade menü
- 0.4: yardım menüsü, sohbetle hesap tanıtma (`/icerik kitle`), sade dil
- 0.3: gündem
- 0.2: tüm formatlar, haftalık takvim
- 0.1: video fikirleri
