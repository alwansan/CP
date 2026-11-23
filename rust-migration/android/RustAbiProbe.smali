.class public final Lcom/shabakaty/cinemana/local/RustAbiProbe;
.super Ljava/lang/Object;
.source "RustAbiProbe.java"

# R1 read-only JNI handshake, not called by normal app runtime.

.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static version()I
    .locals 1
    const-string v0, "cp_rust_core"
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    invoke-static {}, Lcom/shabakaty/cinemana/local/RustAbiProbe;->nativeVersion()I
    move-result v0
    return v0
.end method

.method private static native nativeVersion()I
.end method

# R2 diagnostic JNI only. Operates on synthetic opaque integer IDs.
# No storage, file download or DB access; never invoked by app lifecycle.
.method public static shadowAudit([I[I)J
    .locals 2
    invoke-static {}, Lcom/shabakaty/cinemana/local/RustAbiProbe;->version()I
    move-result v0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/local/RustAbiProbe;->nativeShadowAudit([I[I)J
    move-result-wide v0
    return-wide v0
.end method

.method private static native nativeShadowAudit([I[I)J
.end method
