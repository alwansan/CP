.class public final Lcom/shabakaty/downloader/cb4;
.super Ljava/lang/Object;
.source "ChannelFlow.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ud0;
.implements Lcom/shabakaty/downloader/ue0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ud0<",
        "TT;>;",
        "Lcom/shabakaty/downloader/ue0;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ud0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ud0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/me0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/me0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cb4;->r:Lcom/shabakaty/downloader/ud0;

    iput-object p2, p0, Lcom/shabakaty/downloader/cb4;->s:Lcom/shabakaty/downloader/me0;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/me0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cb4;->s:Lcom/shabakaty/downloader/me0;

    return-object v0
.end method

.method public h()Lcom/shabakaty/downloader/ue0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cb4;->r:Lcom/shabakaty/downloader/ud0;

    instance-of v1, v0, Lcom/shabakaty/downloader/ue0;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/ue0;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cb4;->r:Lcom/shabakaty/downloader/ud0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    return-void
.end method
