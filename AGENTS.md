# JOKER FC — Interactive Proposal

**Single-page** corporate proposal website for Tim JOKER FC (PLTU Cirebon football club).  
Stack: vanilla HTML + Tailwind CDN + FontAwesome CDN. No build step.

## STRUCTURE
```
./
├── index.html   # Everything: HTML, CSS, JS, all 7 sections
└── PRD.md       # Product requirements (reference only)
```

## WHERE TO LOOK
| Task | Location | Notes |
|------|----------|-------|
| Cover screen | `#cover` + `#btn-open` handler | Gate overlay, fade-out on click |
| Snap navigation | `#snap-container` CSS `scroll-snap-type: y mandatory` | 7 sections, each `min-h-screen` |
| Nav dots | `#nav-dots` (JS-built) | Right side, click to jump section |
| Section arrows | `.section-arrows` buttons `[data-dir]` | Up/down between sections |
| Timeline h-pages | `#timeline-pages` + `[data-hdir]` links | Horizontal scroll, inline text nav |
| Back-to-cover | `#btn-back-cover` | Fixed top-right, resets gate |
| Print styles | `@media print` block in `<style>` | Hides overlays, grayscale, A4 |

## CONVENTIONS
- **Single-file only** — all HTML, Tailwind, custom CSS, JS in `index.html`  
- **CDN deps**: Tailwind (cdn.tailwindcss.com), FontAwesome 6.4, KaTeX 0.16.8 (loaded but unused after v3)  
- **No JS frameworks** — plain `var`, `function`, event delegation  
- **Colors**: slate-50/900 base, blue-600 accent, gold-500 highlights  
- **Fonts**: Barlow Condensed (headers), Inter (body) — Google Fonts  
- **Responsive**: Tailwind `sm:` `md:` `lg:` prefixes throughout

## UNIQUE PATTERNS
- `.snap-section` elements use `scroll-snap-align: start` with `min-height: 100dvh`  
- `.h-pages` / `.h-page` for horizontal sub-pages within vertical snap sections  
- `.reveal` + IntersectionObserver for scroll-triggered fade-in (not used in current snap layout)  
- `.card-hover` — lift+shadow on hover  
- `.frame-overlay` — fixed double-border decorative frame, `pointer-events: none`

## COMMANDS
```bash
# Serve locally
npx serve .            # or any static server
python3 -m http.server 5500

# Deploy — single file, drop anywhere
# GitHub Pages: enable from repo settings, root folder
```

## NOTES
- KaTeX CDN still loaded but `renderKatex()` is now a no-op (v3 switched to plain HTML numbers)  
- Evaluation form + localStorage removed in v3 — replaced by "Man Behind The Team" profiles  
- Audio feature (FR-2) deliberately excluded per user request  
- Cover pulse animation: `@keyframes coverPulse` + `.cover-pulse` class
