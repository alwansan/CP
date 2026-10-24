.class public Lcom/google/common/collect/p$d;
.super Lcom/google/common/collect/p;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/p<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient t:I

.field public final transient u:I

.field public final synthetic v:Lcom/google/common/collect/p;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/p;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/p$d;->v:Lcom/google/common/collect/p;

    invoke-direct {p0}, Lcom/google/common/collect/p;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/common/collect/p$d;->t:I

    .line 3
    iput p3, p0, Lcom/google/common/collect/p$d;->u:I

    return-void
.end method


# virtual methods
.method public H(II)Lcom/google/common/collect/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/p<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/p$d;->u:I

    invoke-static {p1, p2, v0}, Lcom/shabakaty/downloader/ve3;->f(III)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/p$d;->v:Lcom/google/common/collect/p;

    iget v1, p0, Lcom/google/common/collect/p$d;->t:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/p;->H(II)Lcom/google/common/collect/p;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/p$d;->u:I

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/ve3;->d(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/p$d;->v:Lcom/google/common/collect/p;

    iget v1, p0, Lcom/google/common/collect/p$d;->t:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p$d;->v:Lcom/google/common/collect/p;

    invoke-virtual {v0}, Lcom/google/common/collect/n;->i()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/p;->A()Lcom/shabakaty/downloader/c0;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p$d;->v:Lcom/google/common/collect/p;

    invoke-virtual {v0}, Lcom/google/common/collect/n;->m()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/p$d;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/collect/p$d;->u:I

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/p;->A()Lcom/shabakaty/downloader/c0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p;->C(I)Lcom/shabakaty/downloader/c0;

    move-result-object p1

    return-object p1
.end method

.method public m()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p$d;->v:Lcom/google/common/collect/p;

    invoke-virtual {v0}, Lcom/google/common/collect/n;->m()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/p$d;->t:I

    add-int/2addr v0, v1

    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/p$d;->u:I

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/p$d;->H(II)Lcom/google/common/collect/p;

    move-result-object p1

    return-object p1
.end method
