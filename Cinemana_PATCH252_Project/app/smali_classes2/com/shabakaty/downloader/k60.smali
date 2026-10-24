.class public Lcom/shabakaty/downloader/k60;
.super Ljava/lang/Object;
.source "CombinedMiddleware.java"

# interfaces
.implements Lcom/shabakaty/downloader/gt2;


# instance fields
.field public final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/gt2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/gt2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/k60;->a:Ljava/util/Collection;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/k60;->a:Ljava/util/Collection;

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/i2;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;Lcom/shabakaty/downloader/vd0;Ljava/util/Iterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/i2<",
            "*>;",
            "Lcom/shabakaty/downloader/zp1;",
            "Lcom/shabakaty/downloader/eu0;",
            "Lcom/shabakaty/downloader/vd0;",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/gt2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gt2;

    .line 3
    new-instance v7, Lcom/shabakaty/downloader/k60$a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/k60$a;-><init>(Lcom/shabakaty/downloader/k60;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;Lcom/shabakaty/downloader/vd0;Ljava/util/Iterator;)V

    invoke-interface {v0, p1, p2, p3, v7}, Lcom/shabakaty/downloader/gt2;->onAction(Lcom/shabakaty/downloader/i2;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;Lcom/shabakaty/downloader/vd0;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p4, p1}, Lcom/shabakaty/downloader/vd0;->a(Lcom/shabakaty/downloader/i2;)V

    :goto_0
    return-void
.end method

.method public onAction(Lcom/shabakaty/downloader/i2;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;Lcom/shabakaty/downloader/vd0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/i2<",
            "*>;",
            "Lcom/shabakaty/downloader/zp1;",
            "Lcom/shabakaty/downloader/eu0;",
            "Lcom/shabakaty/downloader/vd0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k60;->a:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/k60;->a(Lcom/shabakaty/downloader/i2;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;Lcom/shabakaty/downloader/vd0;Ljava/util/Iterator;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p4, p1}, Lcom/shabakaty/downloader/vd0;->a(Lcom/shabakaty/downloader/i2;)V

    :goto_0
    return-void
.end method
