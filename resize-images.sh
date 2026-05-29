#!/bin/bash
set -e
GREEN='\033[0;32m'; BLUE='\033[0;34m'; RED='\033[0;31m'; NC='\033[0m'
echo -e "${BLUE}=== JOKER FC Image Optimizer (Sharp) ===${NC}"
mkdir -p assets/images/{desktop,mobile,logo}
node -e "
const sharp = require('sharp'), fs = require('fs'), path = require('path');
const O = 'assets/images/original', D = 'assets/images/desktop', M = 'assets/images/mobile';
const EXTS = ['.jpg','.jpeg','.png','.JPG','.JPEG','.PNG','.webp','.WEBP'];
const files = fs.readdirSync(O).filter(f => EXTS.includes(path.extname(f)));
async function run() {
  // Logo
  const logo = path.join(O,'joker_logo.png');
  if (fs.existsSync(logo)) {
    const m = await sharp(logo).metadata();
    const s = Math.max(m.width, m.height);
    await sharp(logo).resize(Math.min(s,512), Math.min(s,512), {fit:'inside',withoutEnlargement:true}).png({quality:95}).toFile('assets/images/logo/joker-fc-logo.png');
    console.log('\x1b[32mLogo → assets/images/logo/joker-fc-logo.png\x1b[0m');
  }
  for (const f of files) {
    const src = path.join(O,f), name = path.parse(f).name;
    if (name.includes('Zone')) continue;
    await sharp(src).resize(1600,900,{fit:'cover',position:'center'}).webp({quality:80}).toFile(path.join(D,name+'.webp'));
    const ds = (fs.statSync(path.join(D,name+'.webp')).size/1024).toFixed(0);
    await sharp(src).resize(800,450,{fit:'cover',position:'center'}).webp({quality:70}).toFile(path.join(M,name+'.webp'));
    const ms = (fs.statSync(path.join(M,name+'.webp')).size/1024).toFixed(0);
    console.log('\x1b[32m'+f+'\x1b[0m → \x1b[34m1600x900\x1b[0m('+ds+'K) \x1b[34m800x450\x1b[0m('+ms+'K)');
  }
  console.log('\x1b[32mDone! '+files.length+' images.\x1b[0m');
}
run().catch(e=>{console.error(e);process.exit(1);});
"
echo -e "${GREEN}✅ Complete — check assets/images/{desktop,mobile,logo}/${NC}"
