.class public final Lcom/shabakaty/downloader/m22;
.super Lcom/shabakaty/downloader/k22;
.source "ProgressionIterators.kt"


# instance fields
.field public final r:I

.field public final s:I

.field public t:Z

.field public u:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/k22;-><init>()V

    iput p3, p0, Lcom/shabakaty/downloader/m22;->r:I

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/m22;->s:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    if-gt p1, p2, :cond_1

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/m22;->t:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    .line 4
    :goto_1
    iput p1, p0, Lcom/shabakaty/downloader/m22;->u:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/m22;->u:I

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/m22;->s:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/m22;->t:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/m22;->t:Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 6
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/m22;->r:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/shabakaty/downloader/m22;->u:I

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/m22;->t:Z

    return v0
.end method
