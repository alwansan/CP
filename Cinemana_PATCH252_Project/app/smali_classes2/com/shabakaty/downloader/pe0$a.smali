.class public final Lcom/shabakaty/downloader/pe0$a;
.super Lcom/shabakaty/downloader/w;
.source "CoroutineDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pe0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/w<",
        "Lcom/shabakaty/downloader/yd0;",
        "Lcom/shabakaty/downloader/pe0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 1

    .line 1
    sget p1, Lcom/shabakaty/downloader/yd0;->e:I

    sget-object p1, Lcom/shabakaty/downloader/yd0$a;->r:Lcom/shabakaty/downloader/yd0$a;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/oe0;->r:Lcom/shabakaty/downloader/oe0;

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/w;-><init>(Lcom/shabakaty/downloader/me0$c;Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method
