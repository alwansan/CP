# مصادر CL — جرد 2026-11-17
المستودع alwansan/CL main للقراءة فقط. تحقق مباشرة كل جلسة. الفحص جرد ملفات لا تحليل محتوى ولا إثبات أن كل سجل من PATCH274.
- https://github.com/alwansan/CL/tree/main/log : downloads.log (4,857,092 B)، diagnostics.log (7,384,790 B)، .mkv_export.log (1,349,732 B)، ca1_batch.jsonl (1,153,320 B)، ui95.log (304,699 B)، mkv_identity.map، tree.txt وسجلات per-MKV. tree.txt فهرس.
- https://github.com/alwansan/CL/tree/main/data : cnm_recovery/، local-account/، mkv-proofs/، mkv_repair_pending.properties، ملفات library/episodes/watch ونسخ previous. لا تفك حساب أو بيانات شخصية بلا ضرورة وإذن؛ لا تعدلها.
- https://github.com/alwansan/CL/tree/main/Clog/CLog-20261117-191201-186 : cinemana-internal-00001.log (12,649,416 B)، metrics JSONL (396,501 B)، raft-20261117-191201-186-00001.log (21,418,524 B)، session-info.txt وsession-summary.json. لا تفترض اسم raft يعني سجل Cinemana؛ تحقق من package وprocess ووقت الجلسة.
- الوضع السابق 9 نوفمبر (غياب data/Clog) تغير. لا تعتمد عليه.
عند وصف العطل: طابق package/version ووقت بغداد/UTC، اقرأ الملخص أولاً ثم مقتطفات زمنية من السجل الكبير. لا تحمل كل السجلات إلى الذاكرة دفعة واحدة؛ استخرج first failure وتصنيفاً وtask/token منقحاً. لا تنشر روابط موقعة أو account.bin أو raw logs أو معلومات شخصية. لا تناقش محتوى ملفات البيانات دون ضرورة. سجّل المصدر وSHA/وقت رفعه والحدود.

## CLog الجديد — 2026-11-17
docs/CLOG_DIAGNOSTICS_HANDOFF_AR.md. raf/clog builds8/9 source and releases؛ /storage/emulated/0/Cinemana/work للقراءة فقط، /storage/emulated/0/Download/Games/cl/Clog للمخرجات؛ direct internal-*.raw وcinemana-logcat وmetrics وwork-audit وcoverage build9. Verify build/CP version and coverage before attributing incomplete events; no raw account/URL exposure.
