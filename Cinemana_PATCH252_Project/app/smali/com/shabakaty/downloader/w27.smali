.class public final Lcom/shabakaty/downloader/w27;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public r:I

.field public s:Z

.field public t:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic u:Lcom/shabakaty/downloader/g37;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/g37;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/w27;->u:Lcom/shabakaty/downloader/g37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/shabakaty/downloader/w27;->r:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/w27;->t:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/w27;->u:Lcom/shabakaty/downloader/g37;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/g37;->t:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/w27;->t:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/w27;->t:Ljava/util/Iterator;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/w27;->r:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/shabakaty/downloader/w27;->u:Lcom/shabakaty/downloader/g37;

    .line 1
    iget-object v2, v2, Lcom/shabakaty/downloader/g37;->s:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/w27;->u:Lcom/shabakaty/downloader/g37;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/g37;->t:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/w27;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/downloader/w27;->s:Z

    iget v1, p0, Lcom/shabakaty/downloader/w27;->r:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/shabakaty/downloader/w27;->r:I

    iget-object v0, p0, Lcom/shabakaty/downloader/w27;->u:Lcom/shabakaty/downloader/g37;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/g37;->s:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/w27;->u:Lcom/shabakaty/downloader/g37;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/g37;->s:Ljava/util/List;

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/w27;->r:I

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/w27;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/shabakaty/downloader/w27;->s:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/w27;->s:Z

    iget-object v0, p0, Lcom/shabakaty/downloader/w27;->u:Lcom/shabakaty/downloader/g37;

    .line 2
    sget v1, Lcom/shabakaty/downloader/g37;->x:I

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/g37;->i()V

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/w27;->r:I

    iget-object v1, p0, Lcom/shabakaty/downloader/w27;->u:Lcom/shabakaty/downloader/g37;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/g37;->s:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/w27;->u:Lcom/shabakaty/downloader/g37;

    iget v1, p0, Lcom/shabakaty/downloader/w27;->r:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/shabakaty/downloader/w27;->r:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/g37;->f(I)Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/w27;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
