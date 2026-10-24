.class public final Lcom/shabakaty/downloader/bu5;
.super Lcom/shabakaty/downloader/iu5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final transient t:I

.field public final transient u:I

.field public final synthetic v:Lcom/shabakaty/downloader/iu5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/iu5;II)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/bu5;->v:Lcom/shabakaty/downloader/iu5;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/iu5;-><init>()V

    iput p2, p0, Lcom/shabakaty/downloader/bu5;->t:I

    iput p3, p0, Lcom/shabakaty/downloader/bu5;->u:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/bu5;->u:I

    const-string v1, "index"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/oj5;->c(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/shabakaty/downloader/bu5;->v:Lcom/shabakaty/downloader/iu5;

    iget v1, p0, Lcom/shabakaty/downloader/bu5;->t:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/bu5;->v:Lcom/shabakaty/downloader/iu5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cs5;->h()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/bu5;->v:Lcom/shabakaty/downloader/iu5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cs5;->i()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/bu5;->t:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final l()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/bu5;->v:Lcom/shabakaty/downloader/iu5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cs5;->i()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/bu5;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/bu5;->u:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final n(II)Lcom/shabakaty/downloader/iu5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/shabakaty/downloader/iu5;"
        }
    .end annotation

    iget v0, p0, Lcom/shabakaty/downloader/bu5;->u:I

    .line 1
    invoke-static {p1, p2, v0}, Lcom/shabakaty/downloader/oj5;->d(III)V

    iget-object v0, p0, Lcom/shabakaty/downloader/bu5;->v:Lcom/shabakaty/downloader/iu5;

    iget v1, p0, Lcom/shabakaty/downloader/bu5;->t:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/iu5;->n(II)Lcom/shabakaty/downloader/iu5;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/bu5;->u:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/bu5;->n(II)Lcom/shabakaty/downloader/iu5;

    move-result-object p1

    return-object p1
.end method
