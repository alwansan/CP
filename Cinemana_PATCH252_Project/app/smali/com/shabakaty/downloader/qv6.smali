.class public Lcom/shabakaty/downloader/qv6;
.super Lcom/google/android/gms/measurement/internal/e;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# instance fields
.field public final b:Lcom/shabakaty/downloader/uw6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uw6;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/e;-><init>(Lcom/google/android/gms/measurement/internal/d;I)V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    return-void
.end method
