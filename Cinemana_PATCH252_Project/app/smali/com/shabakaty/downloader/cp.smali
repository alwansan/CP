.class public Lcom/shabakaty/downloader/cp;
.super Lcom/shabakaty/downloader/dp$a;
.source "ByteString.java"


# instance fields
.field public r:I

.field public final s:I

.field public final synthetic t:Lcom/shabakaty/downloader/dp;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dp;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cp;->t:Lcom/shabakaty/downloader/dp;

    invoke-direct {p0}, Lcom/shabakaty/downloader/dp$a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/cp;->r:I

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/dp;->size()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/cp;->s:I

    return-void
.end method


# virtual methods
.method public f()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/cp;->r:I

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/cp;->s:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/cp;->r:I

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/cp;->t:Lcom/shabakaty/downloader/dp;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/dp;->i(I)B

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/cp;->r:I

    iget v1, p0, Lcom/shabakaty/downloader/cp;->s:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
