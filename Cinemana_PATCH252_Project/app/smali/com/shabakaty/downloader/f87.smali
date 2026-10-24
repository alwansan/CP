.class public final Lcom/shabakaty/downloader/f87;
.super Lcom/shabakaty/downloader/la7;
.source "com.google.mlkit:vision-common@@16.3.0"


# instance fields
.field public final transient t:I

.field public final transient u:I

.field public final synthetic v:Lcom/shabakaty/downloader/la7;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/la7;II)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/f87;->v:Lcom/shabakaty/downloader/la7;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/la7;-><init>()V

    iput p2, p0, Lcom/shabakaty/downloader/f87;->t:I

    iput p3, p0, Lcom/shabakaty/downloader/f87;->u:I

    return-void
.end method


# virtual methods
.method public final d()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/f87;->v:Lcom/shabakaty/downloader/la7;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tz6;->d()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/f87;->u:I

    const-string v1, "index"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/ja6;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/shabakaty/downloader/f87;->v:Lcom/shabakaty/downloader/la7;

    iget v1, p0, Lcom/shabakaty/downloader/f87;->t:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/f87;->v:Lcom/shabakaty/downloader/la7;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tz6;->h()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/f87;->t:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/f87;->v:Lcom/shabakaty/downloader/la7;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tz6;->h()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/f87;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/f87;->u:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final m(II)Lcom/shabakaty/downloader/la7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/shabakaty/downloader/la7;"
        }
    .end annotation

    iget v0, p0, Lcom/shabakaty/downloader/f87;->u:I

    .line 1
    invoke-static {p1, p2, v0}, Lcom/shabakaty/downloader/ja6;->b(III)V

    iget-object v0, p0, Lcom/shabakaty/downloader/f87;->v:Lcom/shabakaty/downloader/la7;

    iget v1, p0, Lcom/shabakaty/downloader/f87;->t:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/la7;->m(II)Lcom/shabakaty/downloader/la7;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/f87;->u:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f87;->m(II)Lcom/shabakaty/downloader/la7;

    move-result-object p1

    return-object p1
.end method
