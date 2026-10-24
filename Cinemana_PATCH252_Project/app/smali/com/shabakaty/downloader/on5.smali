.class public final Lcom/shabakaty/downloader/on5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public r:I

.field public final s:I

.field public final synthetic t:Lcom/shabakaty/downloader/hn5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hn5;)V
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/on5;->t:Lcom/shabakaty/downloader/hn5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/on5;->r:I

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hn5;->size()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/on5;->s:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/on5;->r:I

    iget v1, p0, Lcom/shabakaty/downloader/on5;->s:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/on5;->t:Lcom/shabakaty/downloader/hn5;

    iget v1, p0, Lcom/shabakaty/downloader/on5;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/on5;->r:I

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/hn5;->n(I)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
