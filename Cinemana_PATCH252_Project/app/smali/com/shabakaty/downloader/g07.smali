.class public final Lcom/shabakaty/downloader/g07;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public r:I

.field public final s:I

.field public final synthetic t:Lcom/shabakaty/downloader/i07;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/i07;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/g07;->t:Lcom/shabakaty/downloader/i07;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/g07;->r:I

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/i07;->size()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/g07;->s:I

    return-void
.end method


# virtual methods
.method public final f()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/g07;->r:I

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/g07;->s:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/g07;->r:I

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/g07;->t:Lcom/shabakaty/downloader/i07;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/i07;->l(I)B

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/g07;->r:I

    iget v1, p0, Lcom/shabakaty/downloader/g07;->s:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/g07;->f()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
