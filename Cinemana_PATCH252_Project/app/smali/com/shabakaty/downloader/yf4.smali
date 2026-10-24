.class public final Lcom/shabakaty/downloader/yf4;
.super Lcom/shabakaty/downloader/xk;
.source "SubscriptionsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/wf4;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Lcom/shabakaty/downloader/ox4;

.field public g:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ox4;)V
    .locals 1

    const-string v0, "userActionsUseCases"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yf4;->f:Lcom/shabakaty/downloader/ox4;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/mj;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/yf4;->g:Lcom/shabakaty/downloader/mj;

    return-void
.end method
