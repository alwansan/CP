.class public Lcom/shabakaty/downloader/o6;
.super Ljava/lang/Object;
.source "AnalyticsDeferredProxy.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/np0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/np0<",
            "Lcom/shabakaty/downloader/l6;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Lcom/shabakaty/downloader/p6;

.field public volatile c:Lcom/shabakaty/downloader/vn;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/un;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/np0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/np0<",
            "Lcom/shabakaty/downloader/l6;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/nt0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nt0;-><init>()V

    new-instance v1, Lcom/shabakaty/downloader/wt2;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/wt2;-><init>(I)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/o6;->a:Lcom/shabakaty/downloader/np0;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/o6;->c:Lcom/shabakaty/downloader/vn;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/o6;->d:Ljava/util/List;

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/o6;->b:Lcom/shabakaty/downloader/p6;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/n6;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/n6;-><init>(Lcom/shabakaty/downloader/o6;I)V

    check-cast p1, Lcom/shabakaty/downloader/h83;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/h83;->a(Lcom/shabakaty/downloader/np0$a;)V

    return-void
.end method
