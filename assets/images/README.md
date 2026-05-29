# Image Assets — JOKER FC Proposal

## Struktur Folder

```
images/
├── original/          # Foto mentah (any size, any format)
├── desktop/           # Output optimized 1600×900 WebP
├── mobile/            # Output optimized 800×450 WebP
└── logo/              # Logo JOKER FC PNG transparan
```

## Daftar Gambar yang Dibutuhkan

| Filename | Section | Dimensi Target | Mood |
|----------|---------|----------------|------|
| `hero-team-photo` | Cover/Landing | 1600×900 (16:9) | Profesional, energik, inspiring |
| `strategic-field` | Strategic Value | 1600×900 (16:9) | Clean, modern, subtle |
| `squad-composition` | Komposisi Tim | 1600×900 (16:9) | Team spirit, unity |
| `timeline-stadium` | Timeline | 1600×900 (16:9) | Achievement, progress |
| `budget-meeting` | Anggaran | 1600×900 (16:9) | Trust, transparency |
| `coaching-scenes` | Man Behind Team | 1600×900 (16:9) | Leadership, dedication |
| `fans-celebration` | Credits | 1600×900 (16:9) | Community, gratitude |
| `joker-fc-logo.png` | Logo (global) | 512×512 (square) | Brand identity |

**Note**: Minimal 3-4 foto unique, sisanya bisa mix-match dengan overlay berbeda.

## Workflow

### 1. Taruh Foto Mentah
```bash
# Copy semua foto original ke folder ini
cp /path/to/photos/*.jpg assets/images/original/
```

### 2. Auto Resize & Convert
```bash
# Jalankan script resize otomatis
./resize-images.sh
```

### 3. Verify Output
```bash
# Check hasil di desktop/ dan mobile/
ls -lh assets/images/desktop/
ls -lh assets/images/mobile/
```

## Spesifikasi Teknis

### Desktop Images
- **Dimensi**: 1600×900 px
- **Aspect Ratio**: 16:9
- **Format**: WebP
- **Quality**: 80%
- **Use case**: Desktop/tablet viewport

### Mobile Images
- **Dimensi**: 800×450 px
- **Aspect Ratio**: 16:9
- **Format**: WebP
- **Quality**: 70%
- **Use case**: Mobile viewport (<768px)

### Logo
- **Dimensi**: 512×512 px (atau preserve ratio)
- **Format**: PNG dengan transparency
- **Background**: Transparent
- **Use case**: Header, cover, footer

## Cropping Guide

Jika foto original tidak 16:9, crop manual dengan tools:
- **Online**: [Photopea](https://photopea.com) (gratis, mirip Photoshop)
- **Desktop**: GIMP, Photoshop
- **Batch**: XnConvert

**Rule of Thirds**: Posisikan subjek utama di 1/3 area, hindari center-crop membosankan.

## Enhancement (Opsional)

Gunakan Gemini AI untuk enhance foto sebelum resize:
- Lihat prompt di `/PANDUAN-GAMBAR.md` (jika ada)
- Upload ke Gemini → paste prompt → download hasil
- Taruh di `original/` → run resize script

## Status Checklist

- [ ] Folder structure created
- [ ] Original photos uploaded to `original/`
- [ ] Logo PNG ready in `logo/`
- [ ] Run resize script
- [ ] Verify output quality
- [ ] Ready for implementation

---

Last updated: 2026-05-29
