.class public final Lcom/shabakaty/downloader/fi2$a;
.super Ljava/lang/Object;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lcom/shabakaty/downloader/uc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fi2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/fi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/fi2<",
            "TE;>;"
        }
    .end annotation
.end field

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fi2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fi2<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fi2$a;->r:Lcom/shabakaty/downloader/fi2;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/fi2$a;->t:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2$a;->r:Lcom/shabakaty/downloader/fi2;

    iget v1, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/fi2;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/fi2$a;->t:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    iget-object v1, p0, Lcom/shabakaty/downloader/fi2$a;->r:Lcom/shabakaty/downloader/fi2;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/fi2;->t:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    iget-object v1, p0, Lcom/shabakaty/downloader/fi2$a;->r:Lcom/shabakaty/downloader/fi2;

    .line 2
    iget v2, v1, Lcom/shabakaty/downloader/fi2;->t:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 3
    iput v2, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    iput v0, p0, Lcom/shabakaty/downloader/fi2$a;->t:I

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    .line 5
    iget v1, v1, Lcom/shabakaty/downloader/fi2;->s:I

    add-int/2addr v1, v0

    .line 6
    aget-object v0, v2, v1

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    iput v0, p0, Lcom/shabakaty/downloader/fi2$a;->t:I

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/fi2$a;->r:Lcom/shabakaty/downloader/fi2;

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    .line 5
    iget v1, v1, Lcom/shabakaty/downloader/fi2;->s:I

    add-int/2addr v1, v0

    .line 6
    aget-object v0, v2, v1

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2$a;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/fi2$a;->r:Lcom/shabakaty/downloader/fi2;

    .line 3
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/fi2;->i(I)Ljava/lang/Object;

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/fi2$a;->t:I

    iput v0, p0, Lcom/shabakaty/downloader/fi2$a;->s:I

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/fi2$a;->t:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2$a;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/fi2$a;->r:Lcom/shabakaty/downloader/fi2;

    invoke-virtual {v1, v0, p1}, Lcom/shabakaty/downloader/fi2;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
