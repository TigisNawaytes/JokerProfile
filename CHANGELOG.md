# Changelog

Semua perubahan penting pada proposal interaktif Tim JOKER FC.

## [v1] — 2025-05-28 — Initial Release

### Added
- **Cover screen** — gate overlay dengan geometric shapes, logo shield, dedikasi ke ComRel PLTU, tombol CTA rounded-full
- **Snap-scroll navigation** — 7 section full-viewport (`scroll-snap-type: y mandatory`)
- **Vertical nav dots** — indikator posisi di sisi kanan, klik untuk lompat section
- **Section arrows** — panah atas/bawah di setiap section
- **Horizontal sub-pages** — Timeline (2 halaman) dengan text-link "Selanjutnya →" / "← Sebelumnya"
- **Hero section** — headline, statistik (2+ tahun, 30+ anggota, 15+ turnamen)
- **Latar Belakang** — side-by-side image + narasi sejarah Tim JOKER
- **Komposisi Tim** — infografik 3-stat: 70% Pemuda Lokal, 100% Pekerja PLTU, 30 Personil
- **Nilai Strategis** — 3 card: Social License, Community Dev, Well-being (border-top accent, rounded-xl, shadow-md)
- **Kronologi Prestasi** — 5 milestone timeline, horizontal pagination
- **Man Behind The Team** — 4 profil: Jumadi (Pembina), Juli S (Manajer), Komar (Kesehatan), Rudy S (Admin)
- **Footer** — lokasi, credit "Created & Designed by Setyawan90"
- **Tombol kembali ke cover** — ikon home di pojok kanan atas
- **Frame overlay** — double-border dekoratif fixed
- **Card hover effects** — lift + shadow + border-color transition
- **Print styles** — `@media print`: hide overlays, grayscale, A4
- **AGENTS.md** — project knowledge base

### Design System
- **Palet**: slate-50/100 base, blue-600 accent, gold-500 highlights
- **Font**: Barlow Condensed (headers), Inter (body)
- **Responsive**: Tailwind `sm:` `md:` `lg:` breakpoints

### Technical
- Single-file `index.html` — HTML + Tailwind CDN + FontAwesome 6.4 + KaTeX 0.16.8
- Zero JS frameworks — plain `var`/`function`/event delegation
- **Removed**: audio player (per user request)
- **Removed**: evaluation form + localStorage (diganti Man Behind The Team)
- **Removed**: KaTeX formula rendering (diganti plain HTML numbers — 70%, 100%, 30)

### Known Limitations
- Belum ada foto asli tim — menggunakan placeholder Unsplash
- GitHub Pages belum dikonfigurasi
