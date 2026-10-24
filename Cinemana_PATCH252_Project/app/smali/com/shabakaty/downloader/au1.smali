.class public final synthetic Lcom/shabakaty/downloader/au1;
.super Lcom/shabakaty/downloader/co1;
.source "HomeMainAdapter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/co1;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shabakaty/downloader/wt1;

    const/4 v1, 0x0

    const-string v4, "onSeeMoreFranchisesClicked"

    const-string v5, "onSeeMoreFranchisesClicked()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/wt1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/wt1;->x1()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
