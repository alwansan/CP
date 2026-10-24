.class public final Lcom/google/android/exoplayer2/source/rtsp/d$c;
.super Ljava/lang/Object;
.source "RtspClient.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/rtsp/d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/u74;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/fv3;->c:Lcom/shabakaty/downloader/fv3;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/w14;

    iget-object v1, v1, Lcom/shabakaty/downloader/w14;->a:Lcom/google/common/collect/r;

    const-string v2, "range"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-static {v1}, Lcom/shabakaty/downloader/fv3;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fv3;

    move-result-object v0
    :try_end_0
    .catch Lcom/shabakaty/downloader/pa3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->r:Lcom/google/android/exoplayer2/source/rtsp/d$f;

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$b;

    const-string v1, "SDP format error."

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/f$b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_0
    :goto_0
    iget-object p1, p1, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/w14;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 9
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Landroid/net/Uri;

    const/4 v2, 0x4

    const-string v3, "initialCapacity"

    .line 10
    invoke-static {v2, v3}, Lcom/google/common/collect/f;->b(ILjava/lang/String;)I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 11
    :goto_1
    iget-object v6, p1, Lcom/shabakaty/downloader/w14;->b:Lcom/google/common/collect/p;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_6

    .line 12
    iget-object v6, p1, Lcom/shabakaty/downloader/w14;->b:Lcom/google/common/collect/p;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/zo2;

    .line 13
    iget-object v8, v6, Lcom/shabakaty/downloader/zo2;->j:Lcom/shabakaty/downloader/zo2$c;

    iget-object v8, v8, Lcom/shabakaty/downloader/zo2$c;->b:Ljava/lang/String;

    invoke-static {v8}, Lcom/shabakaty/downloader/j96;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v10, "H264"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_1
    const-string v10, "AC3"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    goto :goto_2

    :sswitch_2
    const-string v10, "MPEG4-GENERIC"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    packed-switch v9, :pswitch_data_0

    const/4 v7, 0x0

    :pswitch_0
    if-eqz v7, :cond_5

    .line 14
    new-instance v7, Lcom/shabakaty/downloader/cv3;

    invoke-direct {v7, v6, v1}, Lcom/shabakaty/downloader/cv3;-><init>(Lcom/shabakaty/downloader/zo2;Landroid/net/Uri;)V

    add-int/lit8 v6, v5, 0x1

    .line 15
    array-length v8, v2

    if-ge v8, v6, :cond_4

    .line 16
    array-length v8, v2

    .line 17
    invoke-static {v8, v6}, Lcom/google/common/collect/n$b;->a(II)I

    move-result v8

    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 18
    :cond_4
    aput-object v7, v2, v5

    move v5, v6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 19
    :cond_6
    invoke-static {v2, v5}, Lcom/google/common/collect/p;->s([Ljava/lang/Object;I)Lcom/google/common/collect/p;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 22
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/d;->r:Lcom/google/android/exoplayer2/source/rtsp/d$f;

    const/4 v0, 0x0

    .line 23
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/f$b;

    const-string v1, "No playable track."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/f$b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 24
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 25
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->r:Lcom/google/android/exoplayer2/source/rtsp/d$f;

    .line 26
    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/f$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 27
    :goto_3
    move-object v4, p1

    check-cast v4, Lcom/shabakaty/downloader/oq3;

    .line 28
    iget v5, v4, Lcom/shabakaty/downloader/oq3;->u:I

    if-ge v2, v5, :cond_8

    .line 29
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/oq3;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/cv3;

    .line 30
    new-instance v5, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 31
    iget-object v8, v6, Lcom/google/android/exoplayer2/source/rtsp/f;->y:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    .line 32
    invoke-direct {v5, v6, v4, v2, v8}, Lcom/google/android/exoplayer2/source/rtsp/f$e;-><init>(Lcom/google/android/exoplayer2/source/rtsp/f;Lcom/shabakaty/downloader/cv3;ILcom/google/android/exoplayer2/source/rtsp/a$a;)V

    .line 33
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 34
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    .line 35
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v4, v5, Lcom/google/android/exoplayer2/source/rtsp/f$e;->b:Lcom/shabakaty/downloader/ij2;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 37
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/f$d;->b:Lcom/google/android/exoplayer2/source/rtsp/b;

    .line 38
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/rtsp/f;->t:Lcom/google/android/exoplayer2/source/rtsp/f$b;

    .line 39
    invoke-virtual {v4, v5, v6, v3}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 40
    :cond_8
    iget-object p1, v1, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 41
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->x:Lcom/google/android/exoplayer2/source/rtsp/f$c;

    .line 42
    check-cast p1, Lcom/shabakaty/downloader/cu;

    iget-object p1, p1, Lcom/shabakaty/downloader/cu;->s:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    sget v1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->F:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-wide v1, v0, Lcom/shabakaty/downloader/fv3;->b:J

    iget-wide v4, v0, Lcom/shabakaty/downloader/fv3;->a:J

    sub-long/2addr v1, v4

    .line 44
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->B:J

    .line 45
    iget-wide v0, v0, Lcom/shabakaty/downloader/fv3;->b:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v4

    if-nez v2, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    xor-int/2addr v0, v7

    .line 46
    iput-boolean v0, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->C:Z

    if-nez v2, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    .line 47
    :goto_5
    iput-boolean v0, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->D:Z

    .line 48
    iput-boolean v3, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->E:Z

    .line 49
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->y()V

    .line 50
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 51
    iput-boolean v7, p1, Lcom/google/android/exoplayer2/source/rtsp/d;->D:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7290cac7 -> :sswitch_2
        0xfc51 -> :sswitch_1
        0x217d28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/shabakaty/downloader/u74;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->B:Lcom/google/android/exoplayer2/source/rtsp/d$b;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/collect/p;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/p;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 6
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/d;->y:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    .line 7
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Landroid/net/Uri;

    .line 8
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/d;->A:Ljava/lang/String;

    .line 9
    sget-object v3, Lcom/google/common/collect/c0;->x:Lcom/google/common/collect/r;

    .line 10
    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/shabakaty/downloader/ev3;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c(Lcom/shabakaty/downloader/ev3;)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 13
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/d;->r:Lcom/google/android/exoplayer2/source/rtsp/d$f;

    const/4 v0, 0x0

    .line 14
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/f$b;

    const-string v1, "DESCRIBE not supported."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/f$b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/dv3;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->B:Lcom/google/android/exoplayer2/source/rtsp/d$b;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/d$b;

    const-wide/16 v2, 0x7530

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/d$b;-><init>(Lcom/google/android/exoplayer2/source/rtsp/d;J)V

    .line 4
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->B:Lcom/google/android/exoplayer2/source/rtsp/d$b;

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->B:Lcom/google/android/exoplayer2/source/rtsp/d$b;

    .line 7
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->s:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->s:Z

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 11
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    .line 12
    iget-object v1, p1, Lcom/shabakaty/downloader/dv3;->b:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/fv3;

    iget-wide v1, v1, Lcom/shabakaty/downloader/fv3;->a:J

    .line 13
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v1

    iget-object p1, p1, Lcom/shabakaty/downloader/dv3;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/collect/p;

    .line 14
    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 16
    :goto_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 17
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/gv3;

    iget-object v5, v5, Lcom/shabakaty/downloader/gv3;->c:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 20
    :goto_2
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 21
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    .line 22
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v5, :cond_4

    .line 23
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 24
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    .line 25
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 26
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/rtsp/f$d;->a()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 27
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    .line 28
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/rtsp/f$d;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    const-string v3, "Server did not provide timing for track "

    invoke-static {v2, v3, v1}, Lcom/shabakaty/downloader/re;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->C:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 30
    :goto_3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 31
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/gv3;

    .line 32
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    iget-object v8, v4, Lcom/shabakaty/downloader/gv3;->c:Landroid/net/Uri;

    const/4 v9, 0x0

    .line 33
    :goto_4
    iget-object v10, v5, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 34
    iget-object v10, v5, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 35
    iget-boolean v10, v10, Lcom/google/android/exoplayer2/source/rtsp/f$e;->d:Z

    if-nez v10, :cond_5

    .line 36
    iget-object v10, v5, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    iget-object v10, v10, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 37
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/rtsp/f$d;->a()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 38
    iget-object v5, v10, Lcom/google/android/exoplayer2/source/rtsp/f$d;->b:Lcom/google/android/exoplayer2/source/rtsp/b;

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_7

    goto :goto_6

    .line 39
    :cond_7
    iget-wide v8, v4, Lcom/shabakaty/downloader/gv3;->a:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_8

    .line 40
    iget-object v10, v5, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lcom/shabakaty/downloader/uu3;

    .line 41
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-boolean v10, v10, Lcom/shabakaty/downloader/uu3;->h:Z

    if-nez v10, :cond_8

    .line 43
    iget-object v10, v5, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lcom/shabakaty/downloader/uu3;

    .line 44
    iput-wide v8, v10, Lcom/shabakaty/downloader/uu3;->i:J

    .line 45
    :cond_8
    iget v8, v4, Lcom/shabakaty/downloader/gv3;->b:I

    .line 46
    iget-object v9, v5, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lcom/shabakaty/downloader/uu3;

    .line 47
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-boolean v9, v9, Lcom/shabakaty/downloader/uu3;->h:Z

    if-nez v9, :cond_9

    .line 49
    iget-object v9, v5, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lcom/shabakaty/downloader/uu3;

    .line 50
    iput v8, v9, Lcom/shabakaty/downloader/uu3;->j:I

    .line 51
    :cond_9
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 52
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/rtsp/f;->b()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 53
    iget-wide v8, v4, Lcom/shabakaty/downloader/gv3;->a:J

    .line 54
    iput-wide v1, v5, Lcom/google/android/exoplayer2/source/rtsp/b;->i:J

    .line 55
    iput-wide v8, v5, Lcom/google/android/exoplayer2/source/rtsp/b;->j:J

    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 56
    :cond_b
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 57
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/f;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 58
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 59
    iput-wide v6, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->E:J

    .line 60
    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 61
    iput-wide v6, p1, Lcom/google/android/exoplayer2/source/rtsp/d;->F:J

    return-void
.end method
