.class public final Lcom/shabakaty/downloader/am6;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"

# interfaces
.implements Lcom/shabakaty/downloader/om6;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/om6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/xl6;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/am6;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/xl6;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/shabakaty/downloader/qn6;

    .line 3
    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/qn6;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/xl6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/xl6;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/wm6;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/wm6;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ag6;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/am6;->a:Ljava/util/List;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/om6;

    .line 2
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/om6;->a(Lcom/shabakaty/downloader/ag6;)V

    goto :goto_0

    :cond_0
    return-void
.end method
