.class public abstract Lcom/shabakaty/downloader/ok6;
.super Lcom/shabakaty/downloader/tf7;
.source "com.google.mlkit:vision-common@@16.3.0"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final r:I

.field public s:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/tf7;-><init>()V

    if-ltz p2, :cond_0

    if-gt p2, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/ok6;->r:I

    iput p2, p0, Lcom/shabakaty/downloader/ok6;->s:I

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index"

    .line 4
    invoke-static {p2, p1, v1}, Lcom/shabakaty/downloader/ja6;->c(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/ok6;->s:I

    iget v1, p0, Lcom/shabakaty/downloader/ok6;->r:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/ok6;->s:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ok6;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ok6;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/ok6;->s:I

    .line 2
    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/m57;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/m57;->t:Lcom/shabakaty/downloader/la7;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/ok6;->s:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ok6;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ok6;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/ok6;->s:I

    .line 2
    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/m57;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/m57;->t:Lcom/shabakaty/downloader/la7;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/ok6;->s:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
