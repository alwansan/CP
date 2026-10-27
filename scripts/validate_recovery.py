#!/usr/bin/env python3
"""Check recovery DEX linkage, access, and register encodings before assembling.

apktool accepts missing static callees and package-private cross-package calls;
ART rejects them at runtime. This check is intentionally independent of assembly.
It is not an ART type verifier or an Android device test.
"""
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1] / 'Cinemana_PATCH252_Project/app'
classes = {}
for path in ROOT.glob('smali*/com/shabakaty/**/*.smali'):
    source = path.read_text()
    cls = re.search(r'^\.class .* (L[^;]+;)', source, re.M)
    if cls:
        methods = {m[2]: m[1].split() for m in re.finditer(r'^\.method (.*?) ([^\s]+\([^\n]+)', source, re.M)}
        classes[cls[1]] = (path, source, methods)

names = {'MkvReconciler', 'MkvExporter', 'MkvExporter$Recovered',
         'MkvRepairLedger', 'MkvRepairStartup', 'MkvReconciler$2',
         'MkvReconciler$Audit', 'EpisodeSidecarCleanup', 'DownloadRepair129',
         'RecoveryCapsule', 'Delete94', 'kw0$l', 'Dismiss109', 'Continue106', 'i42', 'n54', 'WideVerticalVideosView'}
errors = []
for cls, (path, source, methods) in classes.items():
    if path.stem not in names and not path.stem.startswith(('ContinueActions262','MkvCancel262')):
        continue
    for target, sig in set(re.findall(r'invoke-static[^\n]*, (L[^;]+;)->([^\s]+)', source)):
        if target not in classes:
            continue
        target_path, _, definitions = classes[target]
        if sig not in definitions:
            errors.append(f'{path.stem}: missing {target_path.stem}.{sig}')
        elif cls != target:
            access = definitions[sig]
            if 'private' in access or ('public' not in access and cls.rsplit('/', 1)[0] != target.rsplit('/', 1)[0]):
                errors.append(f'{path.stem}: inaccessible {target_path.stem}.{sig}')
    # Field access is also checked: the deletion crash involved a package-private field.
    for target, signature in set(re.findall(r'(?:sget|sput|iget|iput)[^\n]*, (L[^;]+;)->([^\s]+)', source)):
        if target not in classes or target == cls:
            continue
        target_path, target_source, _ = classes[target]
        field = re.search(r'^\.field (.*?) ' + re.escape(signature) + r'(?: =[^\n]*)?$', target_source, re.M)
        if field:
            access=field[1].split()
            if 'private' in access or ('public' not in access and cls.rsplit('/',1)[0]!=target.rsplit('/',1)[0]):
                errors.append(f'{path.stem}: inaccessible field {target_path.stem}.{signature}')
    for method in re.finditer(r'^\.method ([^\n]+)\n(.*?)^\.end method', source, re.M | re.S):
        header, body = method.groups()
        labels = set(re.findall(r'^\s*(:\w+)', body, re.M))
        refs = set(re.findall(r'(?<![\w"])(:\w+)', re.sub(r'"[^"\n]*"|#[^\n]*', '', body)))
        for label in refs - labels:
            errors.append(f'{path.stem}.{header}: undefined {label}')
        local = re.search(r'\.locals (\d+)', body)
        if not local:
            continue
        count = int(local[1])
        # Non-range invoke instructions have four-bit register operands (v0..v15).
        for line in body.splitlines():
            if re.match(r'\s*(invoke-\S+|filled-new-array)\s+\{', line) and '/range' not in line:
                args = re.search(r'\{([^}]+)\}', line)
                if args:
                    regs = [(int(n) + (count if kind == 'p' else 0)) for kind, n in re.findall(r'([vp])(\d+)', args[1])]
                    if any(n > 15 for n in regs):
                        errors.append(f'{path.stem}.{header}: non-range high register: {line.strip()}')

# A button press must use the common ordered work pass, without replaying every saved request/log.
repair = next(v[1] for k,v in classes.items() if k.endswith('/DownloadRepair129;'))
execute = re.search(r'\.method public static execute\(.*?\.end method', repair, re.S)[0]
for forbidden in ('->scanInventory', '->inspectLogs', 'Queue110;->scan', 'Dependencies112;->scan', 'RecoveryCapsule;->recoverPending'):
    if forbidden in execute:
        errors.append(f'button performs global scan: {forbidden}')
reconciler = next(v[1] for k,v in classes.items() if k.endswith('/MkvReconciler;'))
if 'scheduleWithFixedDelay' in reconciler:
    errors.append('unconditional idle polling remains')
observer = next(v[1] for k,v in classes.items() if k.endswith('/MkvReconciler$2;'))
if '->reconcileToken' in observer or '->reconcileAll' in observer:
    errors.append('FileObserver does synchronous repair I/O')
for err in errors:
    print(err, file=sys.stderr)
if errors:
    sys.exit(1)
print('Recovery linkage/access, labels, invoke registers, scoped button and idle scheduling checks passed.')
