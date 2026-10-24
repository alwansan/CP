.class public final Lcom/shabakaty/downloader/lq6;
.super Lcom/shabakaty/downloader/sq6;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"


# instance fields
.field public r:I

.field public final s:I

.field public final synthetic t:Lcom/shabakaty/downloader/ir6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ir6;)V
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/lq6;->t:Lcom/shabakaty/downloader/ir6;

    invoke-direct {p0}, Lcom/shabakaty/downloader/sq6;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/lq6;->r:I

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ir6;->i()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/lq6;->s:I

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/lq6;->r:I

    iget v1, p0, Lcom/shabakaty/downloader/lq6;->s:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1
    iput v1, p0, Lcom/shabakaty/downloader/lq6;->r:I

    iget-object v1, p0, Lcom/shabakaty/downloader/lq6;->t:Lcom/shabakaty/downloader/ir6;

    .line 2
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ir6;->h(I)B

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 4
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/lq6;->r:I

    iget v1, p0, Lcom/shabakaty/downloader/lq6;->s:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
