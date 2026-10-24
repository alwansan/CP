.class public Lcom/shabakaty/downloader/ax2;
.super Lcom/shabakaty/downloader/zw2;
.source "NavGraphBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/zw2<",
        "Landroidx/navigation/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/c;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroidx/navigation/i;

.field public i:I


# direct methods
.method public constructor <init>(Landroidx/navigation/i;II)V
    .locals 1

    .line 1
    const-class v0, Landroidx/navigation/e;

    .line 2
    invoke-virtual {p1, v0}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/shabakaty/downloader/zw2;-><init>(Landroidx/navigation/h;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    iput p3, p0, Lcom/shabakaty/downloader/ax2;->i:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ax2;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/navigation/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ax2;->d()Landroidx/navigation/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroidx/navigation/d;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/zw2;->c()Landroidx/navigation/c;

    move-result-object v0

    check-cast v0, Landroidx/navigation/d;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ax2;->g:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/c;

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/navigation/d;->q(Landroidx/navigation/c;)V

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/ax2;->i:I

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroidx/navigation/d;->y(I)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set a startDestination"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Lcom/shabakaty/downloader/zw2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Landroidx/navigation/c;",
            ">(",
            "Lcom/shabakaty/downloader/zw2<",
            "+TD;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ax2;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zw2;->c()Landroidx/navigation/c;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
