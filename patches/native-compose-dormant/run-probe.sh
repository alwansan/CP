#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-dormant"
MIN="$RUNNER_TEMP/cp-minified-combined"
RES="$RUNNER_TEMP/cp-resource-coexistence"
BT="$ANDROID_HOME/build-tools/35.0.0"
ORIG=Cinemana_PATCH252_Project/output/Cinemana_PATCH252_unsigned.apk
P=patches/native-compose-dormant
mkdir -p "$OUT/report"
python3 "$P/combine_dormant.py" --original "$ORIG" --resources "$RES/candidate-res.apk" --lab "$MIN/combined-minified.apk" --output "$OUT/unsigned.apk" --aapt2 "$BT/aapt2" --report "$OUT/report"
"$BT/zipalign" -f -p 4 "$OUT/unsigned.apk" "$OUT/aligned.apk"
"$BT/apksigner" sign --ks signing/checkpoint145-debug.keystore --ks-key-alias "$KEY_ALIAS" --ks-pass env:KEYSTORE_PASSWORD --key-pass env:KEY_PASSWORD --out "$OUT/signed.apk" "$OUT/aligned.apk"
"$BT/apksigner" verify --verbose "$OUT/signed.apk" > "$OUT/report/signature.txt"
"$BT/zipalign" -c -p 4 "$OUT/signed.apk"
# Verify signing did not alter any non-signature entry payload.
python3 - "$OUT/unsigned.apk" "$OUT/signed.apk" <<'PY'
import sys,zipfile,re
s=re.compile(r"META-INF/(?:MANIFEST\.MF|[^/]+\.(?:SF|RSA|DSA|EC))$",re.I)
with zipfile.ZipFile(sys.argv[1]) as a,zipfile.ZipFile(sys.argv[2]) as b:
    aa={x for x in a.namelist() if not s.fullmatch(x)}
    bb={x for x in b.namelist() if not s.fullmatch(x)}
    assert aa==bb and all(a.read(x)==b.read(x) for x in aa)
print("CP_DORMANT_SIGNED_PAYLOAD_PASS")
PY
sha256sum "$OUT/signed.apk" > "$OUT/report/apk-sha256.txt"
