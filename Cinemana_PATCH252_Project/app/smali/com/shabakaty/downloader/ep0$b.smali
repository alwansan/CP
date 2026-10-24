.class public final Lcom/shabakaty/downloader/ep0$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/shabakaty/downloader/ep0$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Z

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final r:Z

.field public final s:Ljava/lang/String;

.field public final t:Lcom/shabakaty/downloader/ep0$d;

.field public final u:Z

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/ep0$d;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/ep0$b;->t:Lcom/shabakaty/downloader/ep0$d;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/downloader/ep0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ep0$b;->s:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/ep0;->g(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/shabakaty/downloader/ep0$b;->u:Z

    const/4 p3, 0x0

    .line 5
    :goto_0
    iget-object v1, p2, Lcom/shabakaty/downloader/jp4;->D:Lcom/google/common/collect/p;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge p3, v1, :cond_1

    .line 6
    iget-object v1, p2, Lcom/shabakaty/downloader/jp4;->D:Lcom/google/common/collect/p;

    .line 7
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/ep0;->d(Lcom/shabakaty/downloader/wh1;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const p3, 0x7fffffff

    const/4 v1, 0x0

    .line 9
    :goto_1
    iput p3, p0, Lcom/shabakaty/downloader/ep0$b;->w:I

    .line 10
    iput v1, p0, Lcom/shabakaty/downloader/ep0$b;->v:I

    .line 11
    iget p3, p1, Lcom/shabakaty/downloader/wh1;->v:I

    iget v1, p2, Lcom/shabakaty/downloader/jp4;->E:I

    and-int/2addr p3, v1

    .line 12
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lcom/shabakaty/downloader/ep0$b;->x:I

    .line 13
    iget p3, p1, Lcom/shabakaty/downloader/wh1;->u:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, p0, Lcom/shabakaty/downloader/ep0$b;->A:Z

    .line 14
    iget p3, p1, Lcom/shabakaty/downloader/wh1;->P:I

    iput p3, p0, Lcom/shabakaty/downloader/ep0$b;->B:I

    .line 15
    iget v3, p1, Lcom/shabakaty/downloader/wh1;->Q:I

    iput v3, p0, Lcom/shabakaty/downloader/ep0$b;->C:I

    .line 16
    iget v3, p1, Lcom/shabakaty/downloader/wh1;->y:I

    iput v3, p0, Lcom/shabakaty/downloader/ep0$b;->D:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 17
    iget v5, p2, Lcom/shabakaty/downloader/jp4;->G:I

    if-gt v3, v5, :cond_4

    :cond_3
    if-eq p3, v4, :cond_5

    iget v3, p2, Lcom/shabakaty/downloader/jp4;->F:I

    if-gt p3, v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p3, 0x1

    :goto_4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/ep0$b;->r:Z

    .line 18
    sget p3, Lcom/shabakaty/downloader/sy4;->a:I

    .line 19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 20
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_6

    .line 21
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p3

    const-string v1, ","

    invoke-static {p3, v1}, Lcom/shabakaty/downloader/sy4;->P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    :cond_6
    new-array v1, v1, [Ljava/lang/String;

    .line 22
    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/16 v4, 0x15

    if-lt v3, v4, :cond_7

    .line 23
    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    .line 24
    :cond_7
    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_5
    aput-object p3, v1, v0

    move-object p3, v1

    :goto_6
    const/4 v1, 0x0

    .line 25
    :goto_7
    array-length v3, p3

    if-ge v1, v3, :cond_8

    .line 26
    aget-object v3, p3, v1

    invoke-static {v3}, Lcom/shabakaty/downloader/sy4;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    .line 27
    :goto_8
    array-length v3, p3

    if-ge v1, v3, :cond_a

    .line 28
    aget-object v3, p3, v1

    .line 29
    invoke-static {p1, v3, v0}, Lcom/shabakaty/downloader/ep0;->d(Lcom/shabakaty/downloader/wh1;Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_9

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_a
    const v1, 0x7fffffff

    const/4 v3, 0x0

    .line 30
    :goto_9
    iput v1, p0, Lcom/shabakaty/downloader/ep0$b;->y:I

    .line 31
    iput v3, p0, Lcom/shabakaty/downloader/ep0$b;->z:I

    .line 32
    :goto_a
    iget-object p3, p2, Lcom/shabakaty/downloader/jp4;->H:Lcom/google/common/collect/p;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v0, p3, :cond_c

    .line 33
    iget-object p3, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    if-eqz p3, :cond_b

    iget-object v1, p2, Lcom/shabakaty/downloader/jp4;->H:Lcom/google/common/collect/p;

    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    move v2, v0

    goto :goto_b

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 35
    :cond_c
    :goto_b
    iput v2, p0, Lcom/shabakaty/downloader/ep0$b;->E:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ep0$b;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ep0$b;->f(Lcom/shabakaty/downloader/ep0$b;)I

    move-result p1

    return p1
.end method

.method public f(Lcom/shabakaty/downloader/ep0$b;)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ep0$b;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/downloader/ep0$b;->u:Z

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

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$b;->u:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$b;->u:Z

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/l;->d(ZZ)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$b;->w:I

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/shabakaty/downloader/ep0$b;->w:I

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 9
    sget-object v4, Lcom/shabakaty/downloader/qt3;->r:Lcom/shabakaty/downloader/qt3;

    .line 10
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/l;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$b;->v:I

    iget v3, p1, Lcom/shabakaty/downloader/ep0$b;->v:I

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/l;->a(II)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$b;->x:I

    iget v3, p1, Lcom/shabakaty/downloader/ep0$b;->x:I

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/l;->a(II)Lcom/google/common/collect/l;

    move-result-object v1

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$b;->r:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$b;->r:Z

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/l;->d(ZZ)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$b;->E:I

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/shabakaty/downloader/ep0$b;->E:I

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 16
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/l;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$b;->D:I

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/shabakaty/downloader/ep0$b;->D:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 19
    iget-object v5, p0, Lcom/shabakaty/downloader/ep0$b;->t:Lcom/shabakaty/downloader/ep0$d;

    iget-boolean v5, v5, Lcom/shabakaty/downloader/jp4;->L:Z

    if-eqz v5, :cond_1

    .line 20
    sget-object v5, Lcom/shabakaty/downloader/ep0;->g:Lcom/google/common/collect/b0;

    .line 21
    invoke-virtual {v5}, Lcom/google/common/collect/b0;->b()Lcom/google/common/collect/b0;

    move-result-object v5

    goto :goto_1

    .line 22
    :cond_1
    sget-object v5, Lcom/shabakaty/downloader/ep0;->h:Lcom/google/common/collect/b0;

    .line 23
    :goto_1
    invoke-virtual {v1, v2, v3, v5}, Lcom/google/common/collect/l;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;

    move-result-object v1

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$b;->A:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$b;->A:Z

    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/l;->d(ZZ)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$b;->y:I

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/shabakaty/downloader/ep0$b;->y:I

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 27
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/l;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$b;->z:I

    iget v3, p1, Lcom/shabakaty/downloader/ep0$b;->z:I

    .line 28
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/l;->a(II)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$b;->B:I

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/shabakaty/downloader/ep0$b;->B:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/l;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$b;->C:I

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/shabakaty/downloader/ep0$b;->C:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/l;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ep0$b;->D:I

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/shabakaty/downloader/ep0$b;->D:I

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 33
    iget-object v4, p0, Lcom/shabakaty/downloader/ep0$b;->s:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/ep0$b;->s:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 34
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/ep0;->h:Lcom/google/common/collect/b0;

    .line 35
    :goto_2
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/l;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/common/collect/l;->f()I

    move-result p1

    return p1
.end method
