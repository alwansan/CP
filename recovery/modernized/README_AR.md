# أول وحدة Java نظيفة ومستقلة من سينمانا

أُنشئت وحدة `core-video` بمشروع Gradle Java، وهي **ليست** تطبيق سينمانا كاملاً، ولا تحتاج Android runtime لتجربة المنطق.

تم عزل منطق `isHigh10` من `com.shabakaty.cinemana.player.H26410SoftwareRenderer` المستخرج بواسطة REA/JADX، واستبدال اعتماديات الصنف المشوّه `wh1` بواجهة Java واضحة تستقبل MIME وCodecs وبيانات SPS.

## الاختبار

```bash
bash recovery/modernized/test-core-video.sh
```

اختبارات Java مستقلة؛ لا تعتمد على JUnit أو Maven، حتى يمكن تشغيلها في GitHub Actions بدون تنزيل مكتبات إضافية. يمكن لاحقاً استدعاء الوحدة من مشروع Android Gradle حقيقي بعد بناء adapter لصيغة Media3.

**لا توصل هذا الكود مباشرة بمشغل النسخة الحالية دون اختبار تكامل:** فهو نموذج معاد تنظيمه، وليس استعادة مطابقة لكل سلوك المشغل، ولا يعالج تحديث الـSurface أو FFmpeg أو الترجمة.
