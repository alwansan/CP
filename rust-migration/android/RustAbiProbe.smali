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
