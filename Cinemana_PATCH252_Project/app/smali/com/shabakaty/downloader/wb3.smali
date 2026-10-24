.class public final Lcom/shabakaty/downloader/wb3;
.super Lcom/shabakaty/downloader/a85;
.source "PeriodicWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wb3$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wb3$a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/a85$a;->a:Ljava/util/UUID;

    iget-object v1, p1, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    iget-object p1, p1, Lcom/shabakaty/downloader/a85$a;->c:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Lcom/shabakaty/downloader/a85;-><init>(Ljava/util/UUID;Lcom/shabakaty/downloader/d85;Ljava/util/Set;)V

    return-void
.end method
