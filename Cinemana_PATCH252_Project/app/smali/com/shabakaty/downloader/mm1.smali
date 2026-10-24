.class public final Lcom/shabakaty/downloader/mm1;
.super Lcom/shabakaty/downloader/xk;
.source "FranchisesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/dm1;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/mj;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/mm1;->f:Lcom/shabakaty/downloader/mj;

    return-void
.end method
