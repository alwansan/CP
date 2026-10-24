.class public final Lcom/shabakaty/downloader/ep0$h;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ep0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/shabakaty/downloader/ep0$h;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Z

.field public final s:Lcom/shabakaty/downloader/ep0$d;

.field public final t:Z

.field public final u:Z

.field public final v:I

.field public final w:I

.field public final x:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/ep0$d;IZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/ep0$h;->s:Lcom/shabakaty/downloader/ep0$d;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    if-eqz p4, :cond_4

    .line 3
    iget v4, p1, Lcom/shabakaty/downloader/wh1;->H:I

    if-eq v4, v3, :cond_0

    iget v5, p2, Lcom/shabakaty/downloader/jp4;->r:I

    if-gt v4, v5, :cond_4

    :cond_0
    iget v4, p1, Lcom/shabakaty/downloader/wh1;->I:I

    if-eq v4, v3, :cond_1

    iget v5, p2, Lcom/shabakaty/downloader/jp4;->s:I

    if-gt v4, v5, :cond_4

    :cond_1
    iget v4, p1, Lcom/shabakaty/downloader/wh1;->J:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_2

    iget v5, p2, Lcom/shabakaty/downloader/jp4;->t:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    :cond_2
    iget v4, p1, Lcom/shabakaty/downloader/wh1;->y:I

    if-eq v4, v3, :cond_3

    iget v5, p2, Lcom/shabakaty/downloader/jp4;->u:I

    if-gt v4, v5, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/shabakaty/downloader/ep0$h;->r:Z

    if-eqz p4, :cond_8

    .line 4
    iget p4, p1, Lcom/shabakaty/downloader/wh1;->H:I

    if-eq p4, v3, :cond_5

    iget v4, p2, Lcom/shabakaty/downloader/jp4;->v:I

    if-lt p4, v4, :cond_8

    :cond_5
    iget p4, p1, Lcom/shabakaty/downloader/wh1;->I:I

    if-eq p4, v3, :cond_6

    iget v4, p2, Lcom/shabakaty/downloader/jp4;->w:I

    if-lt p4, v4, :cond_8

    :cond_6
    iget p4, p1, Lcom/shabakaty/downloader/wh1;->J:F

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_7

    iget v2, p2, Lcom/shabakaty/downloader/jp4;->x:I

    int-to-float v2, v2

    cmpl-float p4, p4, v2

    if-ltz p4, :cond_8

    :cond_7
    iget p4, p1, Lcom/shabakaty/downloader/wh1;->y:I

    if-eq p4, v3, :cond_9

    iget v2, p2, Lcom/shabakaty/downloader/jp4;->y:I

    if-lt p4, v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_1
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ep0$h;->t:Z

    .line 5
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/ep0;->g(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/shabakaty/downloader/ep0$h;->u:Z

    .line 6
    iget p3, p1, Lcom/shabakaty/downloader/wh1;->y:I

    iput p3, p0, Lcom/shabakaty/downloader/ep0$h;->v:I

    .line 7
    iget p3, p1, Lcom/shabakaty/downloader/wh1;->H:I

    if-eq p3, v3, :cond_b

    iget p4, p1, Lcom/shabakaty/downloader/wh1;->I:I

    if-ne p4, v3, :cond_a

    goto :goto_2

    :cond_a
    mul-int v3, p3, p4

    .line 8
    :cond_b
    :goto_2
    iput v3, p0, Lcom/shabakaty/downloader/ep0$h;->w:I

    const p3, 0x7fffffff

    .line 9
    :goto_3
    iget-object p4, p2, Lcom/shabakaty/downloader/jp4;->C:Lcom/google/common/collect/p;

    invoke-virtual {p4}, Ljava/util/AbstractCollection;->size()I

    move-result p4

    if-ge v0, p4, :cond_d

    .line 10
    iget-object p4, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    if-eqz p4, :cond_c

    iget-object v1, p2, Lcom/shabakaty/downloader/jp4;->C:Lcom/google/common/collect/p;

    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    move p3, v0

    goto :goto_4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 12
    :cond_d
    :goto_4
    iput p3, p0, Lcom/shabakaty/downloader/ep0$h;->x:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ep0$h;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ep0$h;->f(Lcom/shabakaty/downloader/ep0$h;)I

    move-result p1

    return p1
.end method

.method public f(Lcom/shabakaty/downloader/ep0$h;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ep0$h;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/downloader/ep0$h;->u:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ep0;->g:Lcom/google/common/collect/b0;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ep0;->g:Lcom/google/common/collect/b0;

    .line 4
    invoke-virtual {v0}, Lcom/google/common/collect/b0;->b()Lcom/google/common/collect/b0;

    move-result-object v0

    .line 5
    :goto_0
    sget-object v1, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/l;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$h;->u:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$h;->u:Z

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/l;->d(ZZ)Lcom/google/common/collect/l;

    move-result-object v1

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$h;->r:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$h;->r:Z

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/l;->d(ZZ)Lcom/google/common/collect/l;

    move-result-object v1

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$h;->t:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$h;->t:Z

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/l;->d(ZZ)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$h;->x:I

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/shabakaty/downloader/ep0$h;->x:I

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 11
    sget-object v4, Lcom/shabakaty/downloader/qt3;->r:Lcom/shabakaty/downloader/qt3;

    .line 12
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/l;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$h;->v:I

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/shabakaty/downloader/ep0$h;->v:I

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 15
    iget-object v4, p0, Lcom/shabakaty/downloader/ep0$h;->s:Lcom/shabakaty/downloader/ep0$d;

    iget-boolean v4, v4, Lcom/shabakaty/downloader/jp4;->L:Z

    if-eqz v4, :cond_1

    .line 16
    sget-object v4, Lcom/shabakaty/downloader/ep0;->g:Lcom/google/common/collect/b0;

    .line 17
    invoke-virtual {v4}, Lcom/google/common/collect/b0;->b()Lcom/google/common/collect/b0;

    move-result-object v4

    goto :goto_1

    .line 18
    :cond_1
    sget-object v4, Lcom/shabakaty/downloader/ep0;->h:Lcom/google/common/collect/b0;

    .line 19
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/l;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$h;->w:I

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/shabakaty/downloader/ep0$h;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/l;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$h;->v:I

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/shabakaty/downloader/ep0$h;->v:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/common/collect/l;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/common/collect/l;->f()I

    move-result p1

    return p1
.end method
