# تطبيق فحص مستقل — ليس تطبيق سينمانا

هذا APK تجريبي فقط لاختبار إمكانية دمج `android-bridge` و`legacy-native` في تطبيق Android قابل للبناء والتثبيت. 
يحمل **package مختلفاً** هو `com.shabakaty.cinemana.recovery.smoke` حتى لا يستبدل تطبيق سينمانا الحقيقي أو يمس بياناته.

يعرض نتيجة فحص H264 High10 عبر AndroidX Media3، ويحزم المكتبات الأصلية عند تكوين APK.

لا يحتوي شاشة سينمانا الرئيسية أو نظام الحساب أو التنزيلات. لا يثبت جاهزية التطبيق الحقيقي من السورس الجديد.

```bash
cd recovery/modernized
gradle :android-smoke:assembleDebug
```
