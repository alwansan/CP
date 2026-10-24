.class public Lcom/shabakaty/downloader/ml;
.super Ljava/lang/Object;
.source "BatchingListUpdateCallback.java"

# interfaces
.implements Lcom/shabakaty/downloader/ni2;


# instance fields
.field public final r:Lcom/shabakaty/downloader/ni2;

.field public s:I

.field public t:I

.field public u:I

.field public v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ni2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/ml;->s:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/ml;->t:I

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/ml;->u:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/ml;->v:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/ml;->r:Lcom/shabakaty/downloader/ni2;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ml;->s:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ml;->r:Lcom/shabakaty/downloader/ni2;

    iget v1, p0, Lcom/shabakaty/downloader/ml;->t:I

    iget v2, p0, Lcom/shabakaty/downloader/ml;->u:I

    iget-object v3, p0, Lcom/shabakaty/downloader/ml;->v:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ni2;->onChanged(IILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ml;->r:Lcom/shabakaty/downloader/ni2;

    iget v1, p0, Lcom/shabakaty/downloader/ml;->t:I

    iget v2, p0, Lcom/shabakaty/downloader/ml;->u:I

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/ni2;->onRemoved(II)V

    goto :goto_0

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ml;->r:Lcom/shabakaty/downloader/ni2;

    iget v1, p0, Lcom/shabakaty/downloader/ml;->t:I

    iget v2, p0, Lcom/shabakaty/downloader/ml;->u:I

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/ni2;->onInserted(II)V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/ml;->v:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/ml;->s:I

    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ml;->s:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/shabakaty/downloader/ml;->t:I

    iget v2, p0, Lcom/shabakaty/downloader/ml;->u:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_0

    add-int v3, p1, p2

    if-lt v3, v0, :cond_0

    iget-object v4, p0, Lcom/shabakaty/downloader/ml;->v:Ljava/lang/Object;

    if-ne v4, p3, :cond_0

    add-int/2addr v2, v0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/ml;->t:I

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/shabakaty/downloader/ml;->t:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/shabakaty/downloader/ml;->u:I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ml;->a()V

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/ml;->t:I

    .line 6
    iput p2, p0, Lcom/shabakaty/downloader/ml;->u:I

    .line 7
    iput-object p3, p0, Lcom/shabakaty/downloader/ml;->v:Ljava/lang/Object;

    .line 8
    iput v1, p0, Lcom/shabakaty/downloader/ml;->s:I

    return-void
.end method

.method public onInserted(II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ml;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/shabakaty/downloader/ml;->t:I

    if-lt p1, v0, :cond_0

    iget v2, p0, Lcom/shabakaty/downloader/ml;->u:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_0

    add-int/2addr v2, p2

    .line 2
    iput v2, p0, Lcom/shabakaty/downloader/ml;->u:I

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/ml;->t:I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ml;->a()V

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/ml;->t:I

    .line 6
    iput p2, p0, Lcom/shabakaty/downloader/ml;->u:I

    .line 7
    iput v1, p0, Lcom/shabakaty/downloader/ml;->s:I

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ml;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ml;->r:Lcom/shabakaty/downloader/ni2;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ni2;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ml;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/shabakaty/downloader/ml;->t:I

    if-lt v0, p1, :cond_0

    add-int v2, p1, p2

    if-gt v0, v2, :cond_0

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/ml;->u:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/shabakaty/downloader/ml;->u:I

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/ml;->t:I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ml;->a()V

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/ml;->t:I

    .line 6
    iput p2, p0, Lcom/shabakaty/downloader/ml;->u:I

    .line 7
    iput v1, p0, Lcom/shabakaty/downloader/ml;->s:I

    return-void
.end method
