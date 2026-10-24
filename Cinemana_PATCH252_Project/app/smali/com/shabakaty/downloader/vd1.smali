.class public final Lcom/shabakaty/downloader/vd1;
.super Ljava/lang/Object;
.source "FlacStreamMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/vd1$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:Lcom/shabakaty/downloader/vd1$a;

.field public final l:Lcom/shabakaty/downloader/ps2;


# direct methods
.method public constructor <init>(IIIIIIIJLcom/shabakaty/downloader/vd1$a;Lcom/shabakaty/downloader/ps2;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/shabakaty/downloader/vd1;->a:I

    .line 20
    iput p2, p0, Lcom/shabakaty/downloader/vd1;->b:I

    .line 21
    iput p3, p0, Lcom/shabakaty/downloader/vd1;->c:I

    .line 22
    iput p4, p0, Lcom/shabakaty/downloader/vd1;->d:I

    .line 23
    iput p5, p0, Lcom/shabakaty/downloader/vd1;->e:I

    .line 24
    invoke-static {p5}, Lcom/shabakaty/downloader/vd1;->h(I)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/vd1;->f:I

    .line 25
    iput p6, p0, Lcom/shabakaty/downloader/vd1;->g:I

    .line 26
    iput p7, p0, Lcom/shabakaty/downloader/vd1;->h:I

    .line 27
    invoke-static {p7}, Lcom/shabakaty/downloader/vd1;->c(I)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/vd1;->i:I

    .line 28
    iput-wide p8, p0, Lcom/shabakaty/downloader/vd1;->j:J

    .line 29
    iput-object p10, p0, Lcom/shabakaty/downloader/vd1;->k:Lcom/shabakaty/downloader/vd1$a;

    .line 30
    iput-object p11, p0, Lcom/shabakaty/downloader/vd1;->l:Lcom/shabakaty/downloader/ps2;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/a55;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    mul-int/lit8 p2, p2, 0x8

    .line 3
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/a55;->s(I)V

    const/16 p1, 0x10

    .line 4
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p2

    iput p2, p0, Lcom/shabakaty/downloader/vd1;->a:I

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/vd1;->b:I

    const/16 p1, 0x18

    .line 6
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p2

    iput p2, p0, Lcom/shabakaty/downloader/vd1;->c:I

    .line 7
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/vd1;->d:I

    const/16 p1, 0x14

    .line 8
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/vd1;->e:I

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/vd1;->h(I)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/vd1;->f:I

    const/4 p1, 0x3

    .line 10
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/shabakaty/downloader/vd1;->g:I

    const/4 p1, 0x5

    .line 11
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/shabakaty/downloader/vd1;->h:I

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/vd1;->c(I)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/vd1;->i:I

    const/16 p1, 0x20

    const/4 p2, 0x4

    .line 13
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p2

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    .line 14
    invoke-static {p2}, Lcom/shabakaty/downloader/sy4;->V(I)J

    move-result-wide v3

    shl-long p1, v3, p1

    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->V(I)J

    move-result-wide v0

    or-long/2addr p1, v0

    .line 15
    iput-wide p1, p0, Lcom/shabakaty/downloader/vd1;->j:J

    .line 16
    iput-object v2, p0, Lcom/shabakaty/downloader/vd1;->k:Lcom/shabakaty/downloader/vd1$a;

    .line 17
    iput-object v2, p0, Lcom/shabakaty/downloader/vd1;->l:Lcom/shabakaty/downloader/ps2;

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Lcom/shabakaty/downloader/ps2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ic3;",
            ">;)",
            "Lcom/shabakaty/downloader/ps2;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "="

    .line 5
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/sy4;->Q(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 6
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const-string v5, "Failed to parse Vorbis comment: "

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v5, "FlacStreamMetadata"

    .line 8
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 9
    :cond_2
    new-instance v4, Lcom/shabakaty/downloader/b55;

    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-direct {v4, v6, v5}, Lcom/shabakaty/downloader/b55;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Lcom/shabakaty/downloader/ps2;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ps2;-><init>(Ljava/util/List;)V

    :goto_3
    return-object v1
.end method

.method public static c(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static h(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/vd1$a;)Lcom/shabakaty/downloader/vd1;
    .locals 13

    .line 1
    new-instance v12, Lcom/shabakaty/downloader/vd1;

    iget v1, p0, Lcom/shabakaty/downloader/vd1;->a:I

    iget v2, p0, Lcom/shabakaty/downloader/vd1;->b:I

    iget v3, p0, Lcom/shabakaty/downloader/vd1;->c:I

    iget v4, p0, Lcom/shabakaty/downloader/vd1;->d:I

    iget v5, p0, Lcom/shabakaty/downloader/vd1;->e:I

    iget v6, p0, Lcom/shabakaty/downloader/vd1;->g:I

    iget v7, p0, Lcom/shabakaty/downloader/vd1;->h:I

    iget-wide v8, p0, Lcom/shabakaty/downloader/vd1;->j:J

    iget-object v11, p0, Lcom/shabakaty/downloader/vd1;->l:Lcom/shabakaty/downloader/ps2;

    move-object v0, v12

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/shabakaty/downloader/vd1;-><init>(IIIIIIIJLcom/shabakaty/downloader/vd1$a;Lcom/shabakaty/downloader/ps2;)V

    return-object v12
.end method

.method public d()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/vd1;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/shabakaty/downloader/vd1;->e:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public e([BLcom/shabakaty/downloader/ps2;)Lcom/shabakaty/downloader/wh1;
    .locals 3

    const/4 v0, 0x4

    const/16 v1, -0x80

    .line 1
    aput-byte v1, p1, v0

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/vd1;->d:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/vd1;->l:Lcom/shabakaty/downloader/ps2;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/ps2;->b(Lcom/shabakaty/downloader/ps2;)Lcom/shabakaty/downloader/ps2;

    move-result-object p2

    .line 4
    :goto_1
    new-instance v1, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v2, "audio/flac"

    .line 5
    iput-object v2, v1, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 6
    iput v0, v1, Lcom/shabakaty/downloader/wh1$b;->l:I

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/vd1;->g:I

    .line 8
    iput v0, v1, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 9
    iget v0, p0, Lcom/shabakaty/downloader/vd1;->e:I

    .line 10
    iput v0, v1, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 11
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12
    iput-object p1, v1, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 13
    iput-object p2, v1, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/shabakaty/downloader/ps2;)Lcom/shabakaty/downloader/ps2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vd1;->l:Lcom/shabakaty/downloader/ps2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ps2;->b(Lcom/shabakaty/downloader/ps2;)Lcom/shabakaty/downloader/ps2;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public g(J)J
    .locals 8

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vd1;->e:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    .line 2
    iget-wide p1, p0, Lcom/shabakaty/downloader/vd1;->j:J

    const-wide/16 v0, 0x1

    sub-long v6, p1, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/sy4;->j(JJJ)J

    move-result-wide p1

    return-wide p1
.end method
