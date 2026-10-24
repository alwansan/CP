.class public final Lcom/shabakaty/downloader/z95;
.super Lcom/shabakaty/downloader/ra5;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public final synthetic b:Lcom/shabakaty/downloader/aa5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aa5;Lcom/shabakaty/downloader/na5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/z95;->b:Lcom/shabakaty/downloader/aa5;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/ra5;-><init>(Lcom/shabakaty/downloader/na5;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z95;->b:Lcom/shabakaty/downloader/aa5;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/aa5;->a:Lcom/google/android/gms/common/api/internal/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/j;->g(Lcom/shabakaty/downloader/gb0;)V

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/aa5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->n:Lcom/shabakaty/downloader/ua5;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/shabakaty/downloader/ua5;->a(IZ)V

    return-void
.end method
