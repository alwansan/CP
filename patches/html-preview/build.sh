#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"
P=patches/html-preview
OUT="$RUNNER_TEMP/cp-html-preview"
mkdir -p "$OUT/assets/preview" "$OUT/mainclasses" "$OUT/testclasses" "$OUT/maindex" "$OUT/testdex"
T="$ANDROID_HOME/build-tools/35.0.0"
J="$ANDROID_HOME/platforms/android-35/android.jar"
cp docs/fixtures/html-shell-lab/{index.html,app.js,style.css,bridge-protocol.js} "$OUT/assets/preview/"
cp "$P/preview.js" "$OUT/assets/preview/"
python3 - "$OUT/assets/preview" <<'PY'
from pathlib import Path
import sys, hashlib, base64, html
root=Path(sys.argv[1])
s=(root/'index.html').read_text()
css=(root/'style.css').read_text()
scripts=[(root/n).read_text() for n in ('app.js','bridge-protocol.js','preview.js')]
assert all('</script' not in x.lower() for x in scripts)
assert '</style' not in css.lower()
hashes=' '.join("'sha256-"+base64.b64encode(hashlib.sha256(x.encode()).digest()).decode()+"'" for x in scripts)
csp="default-src 'none'; script-src "+hashes+"; style-src 'unsafe-inline'; img-src data:; connect-src 'none'; frame-src 'none'; child-src 'none'; object-src 'none'; base-uri 'none'; form-action 'none'; worker-src 'none'"
s=s.replace('<meta charset="utf-8">','<meta charset="utf-8"><meta http-equiv="Content-Security-Policy" content="'+html.escape(csp,quote=True)+'">')
assert '<link rel="stylesheet" href="style.css">' in s
s=s.replace('<link rel="stylesheet" href="style.css">','<style>'+css+'</style>')
assert '<script src="app.js"></script>' in s
s=s.replace('<script src="app.js"></script>',''.join('<script>'+x+'</script>' for x in scripts))
(root/'bundle.html').write_text(s)
PY
javac --release 8 -cp "$J" -d "$OUT/mainclasses" "$P/PreviewActivity.java" "$P/PreviewLoadService.java"
javac --release 8 -cp "$J" -d "$OUT/testclasses" "$P/PreviewTest.java"
"$T/d8" --min-api 23 --lib "$J" --output "$OUT/maindex" $(find "$OUT/mainclasses" -name '*.class')
"$T/d8" --min-api 23 --lib "$J" --output "$OUT/testdex" $(find "$OUT/testclasses" -name '*.class')
"$T/aapt2" link -I "$J" --manifest "$P/AndroidManifest.xml" -A "$OUT/assets" -o "$OUT/main-unsigned.apk"
"$T/aapt2" link -I "$J" --manifest "$P/TestManifest.xml" -o "$OUT/test-unsigned.apk"
(cd "$OUT/maindex"; zip -q -j "$OUT/main-unsigned.apk" classes.dex)
(cd "$OUT/testdex"; zip -q -j "$OUT/test-unsigned.apk" classes.dex)
for kind in main test; do
  "$T/zipalign" -f 4 "$OUT/$kind-unsigned.apk" "$OUT/$kind-aligned.apk"
  "$T/apksigner" sign --ks signing/checkpoint145-debug.keystore --ks-key-alias "$KEY_ALIAS" --ks-pass env:KEYSTORE_PASSWORD --key-pass env:KEY_PASSWORD --out "$OUT/$kind.apk" "$OUT/$kind-aligned.apk"
  "$T/apksigner" verify --verbose "$OUT/$kind.apk"
  "$T/zipalign" -c 4 "$OUT/$kind.apk"
done
"$T/aapt2" dump permissions "$OUT/main.apk" | tee "$OUT/permissions.txt"
! grep -q 'uses-permission' "$OUT/permissions.txt"
cp "$OUT/main.apk" "$OUT/Cinemana-HTML-Preview-0.1.apk"
(cd "$OUT"; sha256sum Cinemana-HTML-Preview-0.1.apk > SHA256SUMS.txt)
