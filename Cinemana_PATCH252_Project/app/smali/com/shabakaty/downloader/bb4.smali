.class public final Lcom/shabakaty/downloader/bb4;
.super Ljava/lang/Object;
.source "SsaSubtitle.java"

# interfaces
.implements Lcom/shabakaty/downloader/bg4;


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vg0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/bb4;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bb4;->s:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lcom/shabakaty/downloader/vg0;[J)V
    .locals 2

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Subtitles;->nativeTimeline([Ljava/lang/Object;[J)[Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, v0, v1

    const/4 v1, 0x1

    aget-object p2, v0, v1

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/bb4;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public f(J)I
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/bb4;->r:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 2
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_0

    not-int p1, p2

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, v2, :cond_1

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 5
    :goto_1
    iget-object p2, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    move v1, p1

    :cond_2
    return v1

    .line 6
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, v2}, Lcom/shabakaty/downloader/sy4;->b([JJZZ)I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast p2, [J

    array-length p2, p2

    if-ge p1, p2, :cond_3

    move v1, p1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h(I)J
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/bb4;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :goto_1
    if-ltz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_2
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    if-ge p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, p1

    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public j(J)Ljava/util/List;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/bb4;->r:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1, v3, v2}, Lcom/shabakaty/downloader/sy4;->d(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/bb4;->s:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_0
    return-object p1

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0, p1, p2, v3, v2}, Lcom/shabakaty/downloader/sy4;->f([JJZZ)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/bb4;->s:Ljava/lang/Object;

    check-cast p2, [Lcom/shabakaty/downloader/vg0;

    aget-object v0, p2, p1

    sget-object v1, Lcom/shabakaty/downloader/vg0;->r:Lcom/shabakaty/downloader/vg0;

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 7
    :cond_2
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_3
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/bb4;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bb4;->t:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
