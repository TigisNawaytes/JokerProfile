Product Requirement Document (PRD)

Project Name: JOKER FC Interactive Digital Proposal

Target Audience: Corporate Community Relations (ComRel) & PLTU Management

Primary Goal: Showcasing community integration and organic worker wellbeing without sounding pushy or demanding.

1. Executive Summary & Background

1.1 Context

This digital proposal acts as an elite, high-end "Executive Briefcase" for Tim JOKER, an organic, self-organized football club comprising contract workers (gardeners, office boys, and operational field team members) at the PLTU Cirebon site.
Historically, these workers initiated local play after hours to build camaraderie. Over time, they recruited highly skilled local ex-players who are now also working at the plant, naming the collective "Tim JOKER". They have gained traction in Cirebon as an elite local team, showing positive social and athletic discipline.

1.2 Strategic Communication Goal (ComRel Appeal)

Instead of a direct financial pitch, this web-profile aims to capture the hearts and minds of the ComRel division. It portrays the team as a goldmine for Social License to Operate (SLO), Local Community Development (70% local engagement), and Employee Well-being (Physical & Mental health).

The Tone: Dignified, highly professional, athletic, and humble.

The Style: "Macho Memonika" — utilizing the interactive elements of digital invitations (Memonika style) but rebuilt with a muscular, high-octane athletic visual hierarchy (slate carbons, amber gold, sharp frames).

2. Functional Requirements (FR)

FR-1: Interactive Gate Screen (Cover Phase)

Objective: Establish a sense of prestige and exclusivity when the page first loads.

Details:

Full-screen landing overlay (Midnight Obsidian background).

Clear, ultra-bold title: JOKER FC.

Dedication card indicating who the proposal is addressed to: "Kepada Yth. Manajemen & Divisi ComRel PLTU Cirebon".

A prominent "Buka Profil Tim JOKER" CTA button that triggers a smooth fade-out of the cover screen and reveals the main content.

Activates background music smoothly upon entry.

FR-2: Ambient Audio Integration

Objective: Create an immersive, calming yet focused atmosphere for reading.

Details:

Loopable background audio playing low-tempo instrumental beats or lofi tracks.

Floating playback controller in the bottom-right corner.

Playback icon with smooth spinning animation during play state.

Fully accessible touch-to-toggle audio state (On/Off).

FR-3: Framing & Layout Architecture

Objective: Give the layout an physical, high-end look.

Details:

A fixed double-line frame overlay (border styling) with sharp, solid bevel elements, colored in amber gold at low opacity (rgba(245, 158, 11, 0.15)).

Clean layout containing deep, dark visual containers (#131B2E) nested inside a pitch-black background (#050811) to preserve the athletic dark theme.

FR-4: Side-by-Side Demographic Presentation

Objective: Present social integration data objectively without boring the reader.

Details:

Two parallel card grids (inspired by wedding profile grids but rebuilt with athletic imagery):

Pilar Kiri (Pemuda Lokal): Focuses on local representation with a LaTeX math percentage renderer displaying $\approx 70\%$.

Pilar Kanan (Pilar Operasional): Focuses on internal worker dedication with a LaTeX math representation of $100\%$ worker-based composition.

Smooth hover-scale effects on card borders using custom transitions.

FR-5: Chronological Athletic Timeline

Objective: Exhibit competitive consistency and community presence.

Details:

Clean vertical timeline featuring prominent icons (trophy, handshake, group).

Showcases verified milestones: Runner-Up at local tournaments, exhibition matches with government agencies, and persistent community engagement in Cirebon district.

FR-6: Interactive Management Evaluation Board (RSVP Guestbook Style)

Objective: Allow ComRel managers to instantly leave positive feedback, notes, or reviews that display on the page in real-time.

Details:

Custom feedback form containing:

Name & Designation (e.g., "Syarifudin - ComRel Officer").

Evaluation Status (Sangat Mendukung / Mendukung / Meninjau).

Feedback / Evaluation Notes text area.

Live local storage array rendering submissions dynamically in a beautifully styled scrolling dashboard.

Pre-populated default reviews from internal employees to show realistic context.

FR-7: Print & PDF Engine Optimization

Objective: Ensure the web proposal outputs clean A4 paper formats when saved as PDF or printed physically.

Details:

Standard CSS @media print directives that hide floating players, cover screens, custom backgrounds, and adjust colors to clean grayscale and pure white.

3. UI/UX & Design Guidelines (Macho Memonika Vibe)

3.1 Design Tokens & Colors

Main Background: Midnight Obsidian (#050811)

Card/Container Background: Slate Carbon (#131B2E)

Accents & Highlights: Championship Gold/Amber (#F59E0B)

Borders & Separators: Muted Gray/Carbon (#1e293b)

Text Primary: Titanium White (#E2E8F0)

Text Secondary/Muted: Muted Slate (#94A3B8)

3.2 Typography

Header Font: Bebas Neue (Loaded from Google Fonts). Highly athletic, vertical, bold, and modern.

Body Font: Plus Jakarta Sans or Montserrat. High legibility, crisp rendering, masculine yet friendly.

3.3 Aesthetic Details

Sharp corners on page frames, with subtle rounded corners (12px - rounded-xl) on main content blocks.

Geometric block construction mirroring structural safety grids and stadium lines.

No playful emojis. Instead, use sharp FontAwesome icons (fas fa-trophy, fas fa-handshake, etc.) to convey authority.

4. Technical Specifications

4.1 Architecture

Single-File Execution: All HTML, Tailwind styles, custom CSS, JS scripts, and mathematical engines MUST live inside a single index.html file.

CDN Dependecies:

Tailwind CSS: https://cdn.tailwindcss.com

FontAwesome: https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css

KaTeX (Fast LaTeX renderer): https://cdn.jsdelivr.net/npm/katex@0.16.8/

4.2 Accessibility & Interactions

Smooth scrolling behaviors using CSS scroll-smooth.

Fast transition layers between Cover Screen state and Main Screen state using standard DOM class manipulations.

Dynamic responsive grids using tailwind's responsive prefixes (sm:, md:, lg:) to guarantee pristine mobile layouts (one column, centered buttons, large tap targets) and wide desktop layouts (two columns, neat borders).

4.3 Content Assets (Placeholders)

Use high-quality, relevant sports and corporate images from Unsplash:

Football training action.

Teamwork and field workers.

Group community engagement.

Fail-safes inside image elements using standard onerror handlers pointing to lightweight custom-styled placeholder cards.

5. Development Steps for CLI Agent

Bootstrap Project Frame: Load CDN scripts, setup Bebas Neue font configurations inside Tailwind extended theme config, and establish the dual-state overlay mechanism.

Design Cover (The Gate Page): Center-align a massive sports-oriented headline layout, custom receiver block directed to ComRel management, and an entrance action handler.

Draft Audio Core: Build simple HTML5 audio playback engine running looping instrumentals with seamless play/pause state synchronization on the icon button.

Layout Main Sections: Put together Latar Belakang timeline, demographic cards using KaTeX formulas, and the interactive comment block.

Implement LocalStorage Support: Build script ensuring user reviews are appended seamlessly to local storage and mapped dynamically to the dashboard block.

Deploy & Print Optimization: Double check mobile responsive breakpoints and compile robust CSS @media print rules.