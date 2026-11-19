# Feasibility ONLY. R8 may preserve public/reflective/platform-facing names.
# Do not weaken library consumer rules or use -ignorewarnings.
-repackageclasses com.alwansan.cinemana.uiisolated
# Do not shrink resource access or alter original Cinemana. This is a standalone APK.
-keepattributes *Annotation*,Signature,InnerClasses,EnclosingMethod
