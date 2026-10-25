.class public final Lcom/shabakaty/downloader/bm4;
.super Lcom/shabakaty/downloader/bk;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final C:Landroid/os/Handler;

.field public final D:Lcom/shabakaty/downloader/am4;

.field public final E:Lcom/shabakaty/downloader/eg4;

.field public final F:Lcom/shabakaty/downloader/yh1;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:I

.field public K:Lcom/shabakaty/downloader/wh1;

.field public L:Lcom/shabakaty/downloader/cg4;

.field public M:Lcom/shabakaty/downloader/lg4;

.field public N:Lcom/shabakaty/downloader/mg4;

.field public O:Lcom/shabakaty/downloader/mg4;

.field public P:I

.field public Q:J

.field public R:J

.field public T:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/am4;Landroid/os/Looper;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/eg4;->a:Lcom/shabakaty/downloader/eg4;

    const/4 v1, 0x3

    .line 2
    invoke-direct {p0, v1}, Lcom/shabakaty/downloader/bk;-><init>(I)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/bm4;->D:Lcom/shabakaty/downloader/am4;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 5
    :cond_0
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    .line 6
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 7
    :goto_0
    iput-object v1, p0, Lcom/shabakaty/downloader/bm4;->C:Landroid/os/Handler;

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/bm4;->E:Lcom/shabakaty/downloader/eg4;

    .line 9
    new-instance p2, Lcom/shabakaty/downloader/yh1;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/yh1;-><init>(ILcom/shabakaty/downloader/io2;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/bm4;->F:Lcom/shabakaty/downloader/yh1;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide p1, p0, Lcom/shabakaty/downloader/bm4;->Q:J

    iput-wide p1, p0, Lcom/shabakaty/downloader/bm4;->R:J

    return-void
.end method


# virtual methods
.method public B()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/bm4;->K:Lcom/shabakaty/downloader/wh1;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v1, p0, Lcom/shabakaty/downloader/bm4;->Q:J

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->J()V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->N()V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v1}, Lcom/shabakaty/downloader/ym0;->a()V

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/bm4;->J:I

    return-void
.end method

.method public D(JZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->J()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/bm4;->G:Z

    .line 3
    iput-boolean p1, p0, Lcom/shabakaty/downloader/bm4;->H:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p1, p0, Lcom/shabakaty/downloader/bm4;->Q:J

    .line 5
    iget p1, p0, Lcom/shabakaty/downloader/bm4;->J:I

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->O()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->N()V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/ym0;->flush()V

    :goto_0
    return-void
.end method

.method public H([Lcom/shabakaty/downloader/wh1;JJ)V
    .locals 2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->J()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/bm4;->G:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/bm4;->H:Z

    iput v0, p0, Lcom/shabakaty/downloader/bm4;->J:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/shabakaty/downloader/bm4;->Q:J

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/shabakaty/downloader/bm4;->K:Lcom/shabakaty/downloader/wh1;

    iget-object v0, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->O()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->M()V

    return-void
.end method

.method public final J()V
    .locals 3

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->reset(Ljava/lang/Object;)V

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/bm4;->C:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/bm4;->D:Lcom/shabakaty/downloader/am4;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/am4;->W(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public final K()J
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bm4;->P:I

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bm4;->N:Lcom/shabakaty/downloader/mg4;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/bm4;->P:I

    iget-object v3, p0, Lcom/shabakaty/downloader/bm4;->N:Lcom/shabakaty/downloader/mg4;

    .line 5
    iget-object v3, v3, Lcom/shabakaty/downloader/mg4;->t:Lcom/shabakaty/downloader/bg4;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v3}, Lcom/shabakaty/downloader/bg4;->n()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/bm4;->N:Lcom/shabakaty/downloader/mg4;

    iget v1, p0, Lcom/shabakaty/downloader/bm4;->P:I

    .line 9
    iget-object v2, v0, Lcom/shabakaty/downloader/mg4;->t:Lcom/shabakaty/downloader/bg4;

    .line 10
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/bg4;->h(I)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/shabakaty/downloader/mg4;->u:J

    add-long/2addr v1, v3

    :goto_0
    return-wide v1
.end method

.method public final L(Lcom/shabakaty/downloader/dg4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bm4;->K:Lcom/shabakaty/downloader/wh1;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->J()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->O()V

    return-void
.end method

.method public final M()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/bm4;->I:Z

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/bm4;->E:Lcom/shabakaty/downloader/eg4;

    iget-object v2, p0, Lcom/shabakaty/downloader/bm4;->K:Lcom/shabakaty/downloader/wh1;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/eg4$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v2, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    if-eqz v1, :cond_b

    const/4 v3, -0x1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "application/ttml+xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "application/x-subrip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "application/cea-708"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "application/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "text/x-ssa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "application/x-quicktime-tx3g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v4, "application/pgs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :sswitch_a
    const-string v0, "application/dvbsubs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 7
    :pswitch_0
    new-instance v0, Lcom/shabakaty/downloader/lr4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lr4;-><init>()V

    goto :goto_2

    .line 8
    :pswitch_1
    new-instance v0, Lcom/shabakaty/downloader/bf4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bf4;-><init>()V

    goto :goto_2

    .line 9
    :pswitch_2
    new-instance v0, Lcom/shabakaty/downloader/zx;

    iget v1, v2, Lcom/shabakaty/downloader/wh1;->U:I

    iget-object v2, v2, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/zx;-><init>(ILjava/util/List;)V

    goto :goto_2

    .line 10
    :pswitch_3
    new-instance v0, Lcom/shabakaty/downloader/yx;

    iget v2, v2, Lcom/shabakaty/downloader/wh1;->U:I

    const-wide/16 v3, 0x3e80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/yx;-><init>(Ljava/lang/String;IJ)V

    goto :goto_2

    .line 11
    :pswitch_4
    new-instance v0, Lcom/shabakaty/downloader/ya4;

    iget-object v1, v2, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ya4;-><init>(Ljava/util/List;)V

    goto :goto_2

    .line 12
    :pswitch_5
    new-instance v0, Lcom/shabakaty/downloader/tr4;

    iget-object v1, v2, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/tr4;-><init>(Ljava/util/List;)V

    goto :goto_2

    .line 13
    :pswitch_6
    new-instance v0, Lcom/shabakaty/downloader/e65;

    invoke-direct {v0}, Lcom/shabakaty/downloader/e65;-><init>()V

    goto :goto_2

    .line 14
    :pswitch_7
    new-instance v0, Lcom/shabakaty/downloader/ev2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ev2;-><init>()V

    goto :goto_2

    .line 15
    :pswitch_8
    new-instance v0, Lcom/shabakaty/downloader/dc3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dc3;-><init>()V

    goto :goto_2

    .line 16
    :pswitch_9
    new-instance v0, Lcom/shabakaty/downloader/q11;

    iget-object v1, v2, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/q11;-><init>(Ljava/util/List;)V

    .line 17
    :goto_2
    iput-object v0, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    return-void

    .line 18
    :cond_b
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attempted to create decoder for unsupported MIME type: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_a
        -0x4a6813e3 -> :sswitch_9
        -0x3d28a9ba -> :sswitch_8
        -0x3be2f26c -> :sswitch_7
        0x2935f49f -> :sswitch_6
        0x310bebca -> :sswitch_5
        0x37713300 -> :sswitch_4
        0x5d578071 -> :sswitch_3
        0x5d578432 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final N()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/bm4;->M:Lcom/shabakaty/downloader/lg4;

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lcom/shabakaty/downloader/bm4;->P:I

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/bm4;->N:Lcom/shabakaty/downloader/mg4;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/q83;->H()V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/bm4;->N:Lcom/shabakaty/downloader/mg4;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/bm4;->O:Lcom/shabakaty/downloader/mg4;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/q83;->H()V

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/bm4;->O:Lcom/shabakaty/downloader/mg4;

    :cond_1
    return-void
.end method

.method public final O()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->N()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/ym0;->a()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/bm4;->J:I

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->M()V

    return-void
.end method

.method public a(Lcom/shabakaty/downloader/wh1;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bm4;->E:Lcom/shabakaty/downloader/eg4;

    check-cast v0, Lcom/shabakaty/downloader/eg4$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const-string v1, "text/vtt"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "text/x-ssa"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/ttml+xml"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/x-mp4-vtt"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/x-subrip"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/x-quicktime-tx3g"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/cea-608"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/x-mp4-cea-608"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/cea-708"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/dvbsubs"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/pgs"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/wh1;->V:Ljava/lang/Class;

    if-nez p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    const/4 p1, 0x2

    :goto_2
    or-int/2addr p1, v3

    or-int/2addr p1, v3

    return p1

    .line 15
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-static {p1}, Lcom/shabakaty/downloader/nt2;->l(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/bm4;->H:Z

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/bm4;->D:Lcom/shabakaty/downloader/am4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/am4;->W(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public o(JJ)V
    .locals 8

    # Resolve timing for the currently selected subtitle format.
    iget-object v4, p0, Lcom/shabakaty/downloader/bm4;->K:Lcom/shabakaty/downloader/wh1;

    invoke-static {v4}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->getOffsetUsForFormat(Lcom/shabakaty/downloader/wh1;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shabakaty/downloader/bm4;->R:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/shabakaty/downloader/bm4;->T:Z

    iput-wide v0, p0, Lcom/shabakaty/downloader/bm4;->R:J

    :cond_0
    iget-object v4, p0, Lcom/shabakaty/downloader/bm4;->K:Lcom/shabakaty/downloader/wh1;

    invoke-static {p1, p2, v4}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->adjustPositionUsForFormat(JLcom/shabakaty/downloader/wh1;)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->begin(Ljava/lang/Object;J)V

    .line 1
    iget-boolean p3, p0, Lcom/shabakaty/downloader/bk;->A:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/bm4;->Q:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->N()V

    .line 4
    iput-boolean p4, p0, Lcom/shabakaty/downloader/bm4;->H:Z

    .line 5
    :cond_1
    iget-boolean p3, p0, Lcom/shabakaty/downloader/bm4;->H:Z

    if-eqz p3, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->finish(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_2
    iget-object p3, p0, Lcom/shabakaty/downloader/bm4;->O:Lcom/shabakaty/downloader/mg4;

    if-nez p3, :cond_3

    .line 7
    iget-object p3, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    .line 8
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {p3, p1, p2}, Lcom/shabakaty/downloader/cg4;->b(J)V

    .line 10
    :try_start_0
    iget-object p3, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {p3}, Lcom/shabakaty/downloader/ym0;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/mg4;

    iput-object p3, p0, Lcom/shabakaty/downloader/bm4;->O:Lcom/shabakaty/downloader/mg4;
    :try_end_0
    .catch Lcom/shabakaty/downloader/dg4; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/bm4;->L(Lcom/shabakaty/downloader/dg4;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->finish(Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_3
    :goto_0
    iget p3, p0, Lcom/shabakaty/downloader/bk;->v:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->finish(Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_4
    iget-object p3, p0, Lcom/shabakaty/downloader/bm4;->N:Lcom/shabakaty/downloader/mg4;

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->K()J

    move-result-wide v2

    const/4 p3, 0x0

    :goto_1
    cmp-long v4, v2, p1

    if-gtz v4, :cond_6

    .line 17
    iget p3, p0, Lcom/shabakaty/downloader/bm4;->P:I

    add-int/2addr p3, p4

    iput p3, p0, Lcom/shabakaty/downloader/bm4;->P:I

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->K()J

    move-result-wide v2

    const/4 p3, 0x1

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    .line 19
    :cond_6
    iget-object v2, p0, Lcom/shabakaty/downloader/bm4;->O:Lcom/shabakaty/downloader/mg4;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 20
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez p3, :cond_a

    .line 21
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->K()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_a

    .line 22
    iget v2, p0, Lcom/shabakaty/downloader/bm4;->J:I

    if-ne v2, v0, :cond_7

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->O()V

    goto :goto_2

    .line 24
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bm4;->N()V

    .line 25
    iput-boolean p4, p0, Lcom/shabakaty/downloader/bm4;->H:Z

    goto :goto_2

    .line 26
    :cond_8
    iget-wide v4, v2, Lcom/shabakaty/downloader/q83;->s:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_a

    .line 27
    iget-object p3, p0, Lcom/shabakaty/downloader/bm4;->N:Lcom/shabakaty/downloader/mg4;

    if-eqz p3, :cond_9

    .line 28
    invoke-virtual {p3}, Lcom/shabakaty/downloader/q83;->H()V

    .line 29
    :cond_9
    iget-object p3, v2, Lcom/shabakaty/downloader/mg4;->t:Lcom/shabakaty/downloader/bg4;

    .line 30
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-wide v4, v2, Lcom/shabakaty/downloader/mg4;->u:J

    sub-long v4, p1, v4

    invoke-interface {p3, v4, v5}, Lcom/shabakaty/downloader/bg4;->f(J)I

    move-result p3

    .line 32
    iput p3, p0, Lcom/shabakaty/downloader/bm4;->P:I

    .line 33
    iput-object v2, p0, Lcom/shabakaty/downloader/bm4;->N:Lcom/shabakaty/downloader/mg4;

    .line 34
    iput-object v3, p0, Lcom/shabakaty/downloader/bm4;->O:Lcom/shabakaty/downloader/mg4;

    const/4 p3, 0x1

    :cond_a
    :goto_2
    # If timing changed, re-emit the active subtitle cue from the existing output buffer.
    # Do not empty the cue list or flush the decoder/input stream.
    iget-boolean v2, p0, Lcom/shabakaty/downloader/bm4;->T:Z

    if-eqz v2, :subtitle_sync_force_refresh_done

    iget-object v2, p0, Lcom/shabakaty/downloader/bm4;->N:Lcom/shabakaty/downloader/mg4;

    if-eqz v2, :subtitle_sync_force_refresh_done

    const/4 p3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/shabakaty/downloader/bm4;->T:Z

    :subtitle_sync_force_refresh_done
    if-eqz p3, :cond_c

    .line 35
    iget-object p3, p0, Lcom/shabakaty/downloader/bm4;->N:Lcom/shabakaty/downloader/mg4;

    .line 36
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p3, p0, Lcom/shabakaty/downloader/bm4;->N:Lcom/shabakaty/downloader/mg4;

    .line 38
    iget-object v2, p3, Lcom/shabakaty/downloader/mg4;->t:Lcom/shabakaty/downloader/bg4;

    .line 39
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-wide v4, p3, Lcom/shabakaty/downloader/mg4;->u:J

    sub-long/2addr p1, v4

    invoke-interface {v2, p1, p2}, Lcom/shabakaty/downloader/bg4;->j(J)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->merge(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/shabakaty/downloader/bm4;->C:Landroid/os/Handler;

    if-eqz p2, :cond_b

    .line 42
    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 43
    :cond_b
    iget-object p2, p0, Lcom/shabakaty/downloader/bm4;->D:Lcom/shabakaty/downloader/am4;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/am4;->W(Ljava/util/List;)V

    .line 44
    :cond_c
    :goto_3
    iget p1, p0, Lcom/shabakaty/downloader/bm4;->J:I

    if-ne p1, v0, :cond_d

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->finish(Ljava/lang/Object;)V

    return-void

    .line 45
    :cond_d
    :goto_4
    :try_start_1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/bm4;->G:Z

    if-nez p1, :cond_15

    .line 46
    iget-object p1, p0, Lcom/shabakaty/downloader/bm4;->M:Lcom/shabakaty/downloader/lg4;

    if-nez p1, :cond_f

    .line 47
    iget-object p1, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {p1}, Lcom/shabakaty/downloader/ym0;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/lg4;

    if-nez p1, :cond_e

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->finish(Ljava/lang/Object;)V

    return-void

    .line 50
    :cond_e
    iput-object p1, p0, Lcom/shabakaty/downloader/bm4;->M:Lcom/shabakaty/downloader/lg4;

    .line 51
    :cond_f
    iget p2, p0, Lcom/shabakaty/downloader/bm4;->J:I

    if-ne p2, p4, :cond_10

    const/4 p2, 0x4

    .line 52
    iput p2, p1, Lcom/shabakaty/downloader/ao;->r:I

    .line 53
    iget-object p2, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/ym0;->e(Ljava/lang/Object;)V

    .line 56
    iput-object v3, p0, Lcom/shabakaty/downloader/bm4;->M:Lcom/shabakaty/downloader/lg4;

    .line 57
    iput v0, p0, Lcom/shabakaty/downloader/bm4;->J:I

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->finish(Ljava/lang/Object;)V

    return-void

    .line 58
    :cond_10
    iget-object p2, p0, Lcom/shabakaty/downloader/bm4;->F:Lcom/shabakaty/downloader/yh1;

    invoke-virtual {p0, p2, p1, v1}, Lcom/shabakaty/downloader/bk;->I(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_14

    .line 59
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 60
    iput-boolean p4, p0, Lcom/shabakaty/downloader/bm4;->G:Z

    .line 61
    iput-boolean v1, p0, Lcom/shabakaty/downloader/bm4;->I:Z

    goto :goto_6

    .line 62
    :cond_11
    iget-object p2, p0, Lcom/shabakaty/downloader/bm4;->F:Lcom/shabakaty/downloader/yh1;

    iget-object p2, p2, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/wh1;

    if-nez p2, :cond_12

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->finish(Ljava/lang/Object;)V

    return-void

    .line 63
    :cond_12
    iget-wide p2, p2, Lcom/shabakaty/downloader/wh1;->G:J

    iput-wide p2, p1, Lcom/shabakaty/downloader/lg4;->z:J

    .line 64
    invoke-virtual {p1}, Lcom/shabakaty/downloader/bn0;->K()V

    .line 65
    iget-boolean p2, p0, Lcom/shabakaty/downloader/bm4;->I:Z

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ao;->G()Z

    move-result p3

    if-nez p3, :cond_13

    const/4 p3, 0x1

    goto :goto_5

    :cond_13
    const/4 p3, 0x0

    :goto_5
    and-int/2addr p2, p3

    iput-boolean p2, p0, Lcom/shabakaty/downloader/bm4;->I:Z

    .line 66
    :goto_6
    iget-boolean p2, p0, Lcom/shabakaty/downloader/bm4;->I:Z

    if-nez p2, :cond_d

    .line 67
    iget-object p2, p0, Lcom/shabakaty/downloader/bm4;->L:Lcom/shabakaty/downloader/cg4;

    .line 68
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/ym0;->e(Ljava/lang/Object;)V

    .line 70
    iput-object v3, p0, Lcom/shabakaty/downloader/bm4;->M:Lcom/shabakaty/downloader/lg4;
    :try_end_1
    .catch Lcom/shabakaty/downloader/dg4; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_14
    const/4 p1, -0x3

    if-ne p2, p1, :cond_d

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->finish(Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/bm4;->L(Lcom/shabakaty/downloader/dg4;)V

    :cond_15
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->finish(Ljava/lang/Object;)V

    return-void
.end method
