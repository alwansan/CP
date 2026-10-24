.class public final Lcom/shabakaty/downloader/ha6;
.super Lcom/shabakaty/downloader/k96;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/k96<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient t:I

.field public final transient u:I

.field public final synthetic v:Lcom/shabakaty/downloader/k96;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k96;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ha6;->v:Lcom/shabakaty/downloader/k96;

    invoke-direct {p0}, Lcom/shabakaty/downloader/k96;-><init>()V

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/ha6;->t:I

    .line 3
    iput p3, p0, Lcom/shabakaty/downloader/ha6;->u:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ha6;->u:I

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/v76;->b(II)I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ha6;->v:Lcom/shabakaty/downloader/k96;

    iget v1, p0, Lcom/shabakaty/downloader/ha6;->t:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ha6;->v:Lcom/shabakaty/downloader/k96;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/g96;->i()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ha6;->v:Lcom/shabakaty/downloader/k96;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/g96;->l()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/ha6;->t:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final m()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ha6;->v:Lcom/shabakaty/downloader/k96;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/g96;->l()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/ha6;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/shabakaty/downloader/ha6;->u:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final n(II)Lcom/shabakaty/downloader/k96;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/shabakaty/downloader/k96<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ha6;->u:I

    invoke-static {p1, p2, v0}, Lcom/shabakaty/downloader/v76;->d(III)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ha6;->v:Lcom/shabakaty/downloader/k96;

    iget v1, p0, Lcom/shabakaty/downloader/ha6;->t:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/k96;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/k96;

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ha6;->u:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ha6;->n(II)Lcom/shabakaty/downloader/k96;

    move-result-object p1

    return-object p1
.end method
