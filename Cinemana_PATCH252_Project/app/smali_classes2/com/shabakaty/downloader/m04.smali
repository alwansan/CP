.class public final Lcom/shabakaty/downloader/m04;
.super Lcom/shabakaty/downloader/n04;
.source "SequenceBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/shabakaty/downloader/ud0;
.implements Lcom/shabakaty/downloader/uc2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/n04<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lcom/shabakaty/downloader/ud0<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Lcom/shabakaty/downloader/uc2;"
    }
.end annotation


# instance fields
.field public r:I

.field public s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public t:Lcom/shabakaty/downloader/ud0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/n04;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/me0;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    return-object v0
.end method

.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/m04;->s:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/m04;->r:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/m04;->t:Lcom/shabakaty/downloader/ud0;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    return-object p1
.end method

.method public final c()Ljava/lang/Throwable;
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/m04;->r:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/shabakaty/downloader/m04;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unexpected state of the iterator: "

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator has failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :goto_0
    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/m04;->r:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m04;->c()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    return v3

    .line 3
    :cond_2
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iput v2, p0, Lcom/shabakaty/downloader/m04;->r:I

    return v3

    :cond_3
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/m04;->r:I

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/m04;->t:Lcom/shabakaty/downloader/ud0;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/m04;->t:Lcom/shabakaty/downloader/ud0;

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/m04;->r:I

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/m04;->r:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/m04;->r:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/m04;->s:Ljava/lang/Object;

    .line 4
    iput-object v3, p0, Lcom/shabakaty/downloader/m04;->s:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m04;->c()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 6
    :cond_1
    iput v1, p0, Lcom/shabakaty/downloader/m04;->r:I

    .line 7
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m04;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/shabakaty/downloader/m04;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
