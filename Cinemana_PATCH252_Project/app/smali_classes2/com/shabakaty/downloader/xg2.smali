.class public final Lcom/shabakaty/downloader/xg2;
.super Lcom/shabakaty/downloader/af2;
.source "SpecialTypes.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ve2;

.field public final synthetic s:Lcom/shabakaty/downloader/yg2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ve2;Lcom/shabakaty/downloader/yg2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xg2;->r:Lcom/shabakaty/downloader/ve2;

    iput-object p2, p0, Lcom/shabakaty/downloader/xg2;->s:Lcom/shabakaty/downloader/yg2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xg2;->r:Lcom/shabakaty/downloader/ve2;

    iget-object v1, p0, Lcom/shabakaty/downloader/xg2;->s:Lcom/shabakaty/downloader/yg2;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/yg2;->t:Lcom/shabakaty/downloader/rm1;

    .line 3
    invoke-interface {v1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/te2;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ve2;->h(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    return-object v0
.end method
