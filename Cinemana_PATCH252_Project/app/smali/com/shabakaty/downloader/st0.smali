.class public final Lcom/shabakaty/downloader/st0;
.super Lcom/shabakaty/downloader/xk;
.source "DiscoverMoreFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/rt0;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/Boolean;",
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

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/st0;->f:Lcom/shabakaty/downloader/xv2;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/xv2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/st0;->g:Lcom/shabakaty/downloader/xv2;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/xv2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/st0;->h:Lcom/shabakaty/downloader/xv2;

    return-void
.end method
