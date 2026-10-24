.class public final Lcom/shabakaty/downloader/iw0;
.super Ljava/lang/Object;
.source "DownloadCollectionsUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/jw0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jw0;)V
    .locals 1

    const-string v0, "downloadsDao"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/iw0;->a:Lcom/shabakaty/downloader/jw0;

    return-void
.end method
