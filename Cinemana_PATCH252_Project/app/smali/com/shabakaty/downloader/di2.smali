.class public final Lcom/shabakaty/downloader/di2;
.super Lcom/shabakaty/downloader/xk;
.source "ListBottomSheetViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gn;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/xv2;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/di2;->f:Lcom/shabakaty/downloader/xv2;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/xv2;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/di2;->g:Lcom/shabakaty/downloader/xv2;

    return-void
.end method
