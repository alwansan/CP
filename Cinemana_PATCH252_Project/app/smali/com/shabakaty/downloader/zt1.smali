.class public final synthetic Lcom/shabakaty/downloader/zt1;
.super Lcom/shabakaty/downloader/co1;
.source "HomeMainAdapter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/co1;",
        "Lcom/shabakaty/downloader/hn1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        ">;",
        "Ljava/lang/String;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shabakaty/downloader/wt1;

    const/4 v1, 0x2

    const-string v4, "onSeeMoreVideosClicked"

    const-string v5, "onSeeMoreVideosClicked(Ljava/util/List;Ljava/lang/String;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/wt1;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/qk;->s0(Ljava/util/List;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
