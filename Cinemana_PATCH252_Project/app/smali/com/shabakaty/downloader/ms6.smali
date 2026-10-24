.class public final Lcom/shabakaty/downloader/ms6;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Lcom/shabakaty/downloader/yr6;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lq1;

    const-string v1, "ClearcutTransport"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/lq1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FIREBASE_ML_SDK"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/o30;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/shabakaty/downloader/o30;

    return-void
.end method
