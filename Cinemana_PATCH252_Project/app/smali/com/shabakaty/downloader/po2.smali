.class public Lcom/shabakaty/downloader/po2;
.super Lcom/shabakaty/downloader/so2;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/shabakaty/downloader/no2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/po2$b;
    }
.end annotation


# instance fields
.field public final Y0:Landroid/content/Context;

.field public final Z0:Lcom/shabakaty/downloader/ye$a;

.field public final a1:Lcom/shabakaty/downloader/ze;

.field public b1:I

.field public c1:Z

.field public d1:Lcom/shabakaty/downloader/wh1;

.field public e1:J

.field public f1:Z

.field public g1:Z

.field public h1:Z

.field public i1:Lcom/shabakaty/downloader/lr3$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/uo2;ZLandroid/os/Handler;Lcom/shabakaty/downloader/ye;Lcom/shabakaty/downloader/ze;)V
    .locals 6

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/oo2$b;->a:Lcom/shabakaty/downloader/oo2$b;

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/so2;-><init>(ILcom/shabakaty/downloader/oo2$b;Lcom/shabakaty/downloader/uo2;ZF)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/po2;->Y0:Landroid/content/Context;

    .line 4
    iput-object p6, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/ye$a;

    invoke-direct {p1, p4, p5}, Lcom/shabakaty/downloader/ye$a;-><init>(Landroid/os/Handler;Lcom/shabakaty/downloader/ye;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/po2$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/po2$b;-><init>(Lcom/shabakaty/downloader/po2;Lcom/shabakaty/downloader/po2$a;)V

    invoke-interface {p6, p1}, Lcom/shabakaty/downloader/ze;->k(Lcom/shabakaty/downloader/ze$c;)V

    return-void
.end method


# virtual methods
.method public B()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/po2;->h1:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ze;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-super {p0}, Lcom/shabakaty/downloader/so2;->B()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ye$a;->a(Lcom/shabakaty/downloader/zm0;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ye$a;->a(Lcom/shabakaty/downloader/zm0;)V

    .line 5
    throw v0

    :catchall_1
    move-exception v0

    .line 6
    :try_start_2
    invoke-super {p0}, Lcom/shabakaty/downloader/so2;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ye$a;->a(Lcom/shabakaty/downloader/zm0;)V

    .line 8
    throw v0

    :catchall_2
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ye$a;->a(Lcom/shabakaty/downloader/zm0;)V

    .line 10
    throw v0
.end method

.method public C(ZZ)V
    .locals 3

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/zm0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/zm0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    .line 3
    iget-object v0, p2, Lcom/shabakaty/downloader/ye$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/te;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p1, v2}, Lcom/shabakaty/downloader/te;-><init>(Lcom/shabakaty/downloader/ye$a;Lcom/shabakaty/downloader/zm0;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/bk;->t:Lcom/shabakaty/downloader/nr3;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean p1, p1, Lcom/shabakaty/downloader/nr3;->a:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ze;->q()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ze;->n()V

    :goto_0
    return-void
.end method

.method public D(JZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/so2;->D(JZ)V

    .line 2
    iget-object p3, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {p3}, Lcom/shabakaty/downloader/ze;->flush()V

    .line 3
    iput-wide p1, p0, Lcom/shabakaty/downloader/po2;->e1:J

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/po2;->f1:Z

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/po2;->g1:Z

    return-void
.end method

.method public final D0(Lcom/shabakaty/downloader/ro2;Lcom/shabakaty/downloader/wh1;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/po2;->Y0:Landroid/content/Context;

    invoke-static {p1}, Lcom/shabakaty/downloader/sy4;->H(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget p1, p2, Lcom/shabakaty/downloader/wh1;->D:I

    return p1
.end method

.method public E()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->M()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->o0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->u0(Lcom/shabakaty/downloader/p01;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/po2;->h1:Z

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/po2;->h1:Z

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ze;->reset()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 7
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->u0(Lcom/shabakaty/downloader/p01;)V

    .line 8
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :goto_0
    iget-boolean v2, p0, Lcom/shabakaty/downloader/po2;->h1:Z

    if-eqz v2, :cond_1

    .line 10
    iput-boolean v1, p0, Lcom/shabakaty/downloader/po2;->h1:Z

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v1}, Lcom/shabakaty/downloader/ze;->reset()V

    .line 12
    :cond_1
    throw v0
.end method

.method public final E0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/po2;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ze;->m(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-boolean v2, p0, Lcom/shabakaty/downloader/po2;->g1:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/po2;->e1:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/po2;->e1:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/po2;->g1:Z

    :cond_1
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ze;->i()V

    return-void
.end method

.method public G()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/po2;->E0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ze;->pause()V

    return-void
.end method

.method public K(Lcom/shabakaty/downloader/ro2;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/cn0;
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/ro2;->c(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/cn0;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/shabakaty/downloader/cn0;->e:I

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/shabakaty/downloader/po2;->D0(Lcom/shabakaty/downloader/ro2;Lcom/shabakaty/downloader/wh1;)I

    move-result v2

    iget v3, p0, Lcom/shabakaty/downloader/po2;->b1:I

    if-le v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    move v7, v1

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/cn0;

    iget-object v3, p1, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget p1, v0, Lcom/shabakaty/downloader/cn0;->d:I

    move v6, p1

    :goto_0
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/cn0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;II)V

    return-object v1
.end method

.method public V(FLcom/shabakaty/downloader/wh1;[Lcom/shabakaty/downloader/wh1;)F
    .locals 4

    .line 1
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 2
    iget v3, v3, Lcom/shabakaty/downloader/wh1;->Q:I

    if-eq v3, v0, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, v2

    mul-float p1, p1, p2

    :goto_1
    return p1
.end method

.method public W(Lcom/shabakaty/downloader/uo2;Lcom/shabakaty/downloader/wh1;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uo2;",
            "Lcom/shabakaty/downloader/wh1;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ro2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v1, p2}, Lcom/shabakaty/downloader/ze;->a(Lcom/shabakaty/downloader/wh1;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "audio/raw"

    .line 4
    invoke-static {v1, v2, v2}, Lcom/shabakaty/downloader/wo2;->d(Ljava/lang/String;ZZ)Lcom/shabakaty/downloader/ro2;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {p1, v0, p3, v2}, Lcom/shabakaty/downloader/uo2;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 7
    sget-object v3, Lcom/shabakaty/downloader/wo2;->a:Ljava/util/regex/Pattern;

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/cu;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/wh1;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/wo2;->j(Ljava/util/List;Lcom/shabakaty/downloader/wo2$g;)V

    const-string p2, "audio/eac3-joc"

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "audio/eac3"

    .line 12
    invoke-interface {p1, v0, p3, v2}, Lcom/shabakaty/downloader/uo2;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v3, p2

    .line 14
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public Y(Lcom/shabakaty/downloader/ro2;Lcom/shabakaty/downloader/wh1;Landroid/media/MediaCrypto;F)Lcom/shabakaty/downloader/oo2$a;
    .locals 12

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move/from16 v1, p4

    .line 1
    iget-object v3, v0, Lcom/shabakaty/downloader/bk;->x:[Lcom/shabakaty/downloader/wh1;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/po2;->D0(Lcom/shabakaty/downloader/ro2;Lcom/shabakaty/downloader/wh1;)I

    move-result v5

    .line 4
    array-length v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    array-length v6, v3

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_2

    aget-object v10, v3, v9

    .line 6
    invoke-virtual {p1, p2, v10}, Lcom/shabakaty/downloader/ro2;->c(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/cn0;

    move-result-object v11

    iget v11, v11, Lcom/shabakaty/downloader/cn0;->d:I

    if-eqz v11, :cond_1

    .line 7
    invoke-virtual {p0, p1, v10}, Lcom/shabakaty/downloader/po2;->D0(Lcom/shabakaty/downloader/ro2;Lcom/shabakaty/downloader/wh1;)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iput v5, v0, Lcom/shabakaty/downloader/po2;->b1:I

    .line 9
    iget-object v3, v2, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    .line 10
    sget v5, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_4

    const-string v9, "OMX.SEC.aac.dec"

    .line 11
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/shabakaty/downloader/sy4;->c:Ljava/lang/String;

    const-string v9, "samsung"

    .line 12
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/shabakaty/downloader/sy4;->b:Ljava/lang/String;

    const-string v9, "zeroflte"

    .line 13
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "herolte"

    .line 14
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "heroqlte"

    .line 15
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 16
    :goto_2
    iput-boolean v3, v0, Lcom/shabakaty/downloader/po2;->c1:Z

    .line 17
    iget-object v3, v2, Lcom/shabakaty/downloader/ro2;->c:Ljava/lang/String;

    iget v9, v0, Lcom/shabakaty/downloader/po2;->b1:I

    .line 18
    new-instance v10, Landroid/media/MediaFormat;

    invoke-direct {v10}, Landroid/media/MediaFormat;-><init>()V

    const-string v11, "mime"

    .line 19
    invoke-virtual {v10, v11, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget v3, v4, Lcom/shabakaty/downloader/wh1;->P:I

    const-string v11, "channel-count"

    invoke-virtual {v10, v11, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 21
    iget v3, v4, Lcom/shabakaty/downloader/wh1;->Q:I

    const-string v11, "sample-rate"

    invoke-virtual {v10, v11, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 22
    iget-object v3, v4, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-static {v10, v3}, Lcom/shabakaty/downloader/hl3;->i(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string v3, "max-input-size"

    .line 23
    invoke-static {v10, v3, v9}, Lcom/shabakaty/downloader/hl3;->g(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/16 v3, 0x17

    if-lt v5, v3, :cond_7

    const-string v9, "priority"

    .line 24
    invoke-virtual {v10, v9, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v1, v9

    if-eqz v9, :cond_7

    if-ne v5, v3, :cond_6

    .line 25
    sget-object v3, Lcom/shabakaty/downloader/sy4;->d:Ljava/lang/String;

    const-string v9, "ZTE B2017G"

    .line 26
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "AXON 7 mini"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_7

    const-string v3, "operating-rate"

    .line 27
    invoke-virtual {v10, v3, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_7
    const/16 v1, 0x1c

    if-gt v5, v1, :cond_8

    .line 28
    iget-object v1, v4, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ac4-is-sync"

    .line 29
    invoke-virtual {v10, v1, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    const-string v1, "audio/raw"

    if-lt v5, v6, :cond_9

    .line 30
    iget-object v3, v0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    iget v5, v4, Lcom/shabakaty/downloader/wh1;->P:I

    iget v6, v4, Lcom/shabakaty/downloader/wh1;->Q:I

    .line 31
    new-instance v9, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v9}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 32
    iput-object v1, v9, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 33
    iput v5, v9, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 34
    iput v6, v9, Lcom/shabakaty/downloader/wh1$b;->y:I

    const/4 v5, 0x4

    .line 35
    iput v5, v9, Lcom/shabakaty/downloader/wh1$b;->z:I

    .line 36
    invoke-virtual {v9}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v6

    .line 37
    invoke-interface {v3, v6}, Lcom/shabakaty/downloader/ze;->r(Lcom/shabakaty/downloader/wh1;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_9

    const-string v3, "pcm-encoding"

    .line 38
    invoke-virtual {v10, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 39
    :cond_9
    iget-object v3, v2, Lcom/shabakaty/downloader/ro2;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v4, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v7, 0x1

    :cond_a
    if-eqz v7, :cond_b

    move-object v1, v4

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    .line 42
    :goto_4
    iput-object v1, v0, Lcom/shabakaty/downloader/po2;->d1:Lcom/shabakaty/downloader/wh1;

    .line 43
    new-instance v8, Lcom/shabakaty/downloader/oo2$a;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, v10

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/oo2$a;-><init>(Lcom/shabakaty/downloader/ro2;Landroid/media/MediaFormat;Lcom/shabakaty/downloader/wh1;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object v8
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->M0:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ze;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Lcom/shabakaty/downloader/ad3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ze;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ze;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/shabakaty/downloader/so2;->d()Z

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
    return v0
.end method

.method public d0(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/ye$a;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/ue;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/shabakaty/downloader/ue;-><init>(Lcom/shabakaty/downloader/ye$a;Ljava/lang/Exception;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public e(Lcom/shabakaty/downloader/ad3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ze;->e(Lcom/shabakaty/downloader/ad3;)V

    return-void
.end method

.method public e0(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    .line 2
    iget-object v7, v1, Lcom/shabakaty/downloader/ye$a;->a:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3
    new-instance v8, Lcom/shabakaty/downloader/we;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/we;-><init>(Lcom/shabakaty/downloader/ye$a;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public f0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ye$a;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/or;

    invoke-direct {v2, v0, p1}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/ye$a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public g0(Lcom/shabakaty/downloader/yh1;)Lcom/shabakaty/downloader/cn0;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/so2;->g0(Lcom/shabakaty/downloader/yh1;)Lcom/shabakaty/downloader/cn0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/wh1;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/ye$a;->a:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/pr;

    invoke-direct {v3, v1, p1, v0}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/ye$a;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/cn0;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public h0(Lcom/shabakaty/downloader/wh1;Landroid/media/MediaFormat;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->d1:Lcom/shabakaty/downloader/wh1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget v0, p1, Lcom/shabakaty/downloader/wh1;->R:I

    goto :goto_0

    .line 5
    :cond_2
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 7
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->w(I)I

    move-result v0

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget v0, p1, Lcom/shabakaty/downloader/wh1;->R:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    .line 11
    :goto_0
    new-instance v4, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v4}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 12
    iput-object v3, v4, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 13
    iput v0, v4, Lcom/shabakaty/downloader/wh1$b;->z:I

    .line 14
    iget v0, p1, Lcom/shabakaty/downloader/wh1;->S:I

    .line 15
    iput v0, v4, Lcom/shabakaty/downloader/wh1$b;->A:I

    .line 16
    iget v0, p1, Lcom/shabakaty/downloader/wh1;->T:I

    .line 17
    iput v0, v4, Lcom/shabakaty/downloader/wh1$b;->B:I

    const-string v0, "channel-count"

    .line 18
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 19
    iput v0, v4, Lcom/shabakaty/downloader/wh1$b;->x:I

    const-string v0, "sample-rate"

    .line 20
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    .line 21
    iput p2, v4, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 22
    invoke-virtual {v4}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p2

    .line 23
    iget-boolean v0, p0, Lcom/shabakaty/downloader/po2;->c1:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/shabakaty/downloader/wh1;->P:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    iget v0, p1, Lcom/shabakaty/downloader/wh1;->P:I

    if-ge v0, v3, :cond_6

    .line 24
    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 25
    :goto_1
    iget v3, p1, Lcom/shabakaty/downloader/wh1;->P:I

    if-ge v0, v3, :cond_6

    .line 26
    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object p1, p2

    .line 27
    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {p2, p1, v1, v2}, Lcom/shabakaty/downloader/ze;->l(Lcom/shabakaty/downloader/wh1;I[I)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/ze$a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    iget-object p2, p1, Lcom/shabakaty/downloader/ze$a;->r:Lcom/shabakaty/downloader/wh1;

    const/16 v0, 0x1389

    .line 29
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object p1

    .line 30
    throw p1
.end method

.method public j0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ze;->o()V

    return-void
.end method

.method public k0(Lcom/shabakaty/downloader/bn0;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/po2;->f1:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ao;->E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-wide v0, p1, Lcom/shabakaty/downloader/bn0;->v:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/po2;->e1:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-wide v0, p1, Lcom/shabakaty/downloader/bn0;->v:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/po2;->e1:J

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/po2;->f1:Z

    :cond_1
    return-void
.end method

.method public l()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bk;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/po2;->E0()V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/po2;->e1:J

    return-wide v0
.end method

.method public m0(JJLcom/shabakaty/downloader/oo2;Ljava/nio/ByteBuffer;IIIJZZLcom/shabakaty/downloader/wh1;)Z
    .locals 0

    .line 1
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/po2;->d1:Lcom/shabakaty/downloader/wh1;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p5, p7, p3}, Lcom/shabakaty/downloader/oo2;->j(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    .line 5
    invoke-interface {p5, p7, p3}, Lcom/shabakaty/downloader/oo2;->j(IZ)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    iget p3, p1, Lcom/shabakaty/downloader/zm0;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/shabakaty/downloader/zm0;->f:I

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ze;->o()V

    return p2

    .line 8
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {p1, p6, p10, p11, p9}, Lcom/shabakaty/downloader/ze;->s(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/shabakaty/downloader/ze$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/shabakaty/downloader/ze$e; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 9
    invoke-interface {p5, p7, p3}, Lcom/shabakaty/downloader/oo2;->j(IZ)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    iget p3, p1, Lcom/shabakaty/downloader/zm0;->e:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/shabakaty/downloader/zm0;->e:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    .line 11
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ze$e;->r:Z

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 12
    iget-object p2, p1, Lcom/shabakaty/downloader/ze$b;->s:Lcom/shabakaty/downloader/wh1;

    iget-boolean p3, p1, Lcom/shabakaty/downloader/ze$b;->r:Z

    const/16 p4, 0x1389

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object p1

    throw p1
.end method

.method public p(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p2, Lcom/shabakaty/downloader/lr3$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/po2;->i1:Lcom/shabakaty/downloader/lr3$a;

    goto :goto_0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ze;->h(I)V

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object p1, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ze;->u(Z)V

    goto :goto_0

    .line 4
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/ci;

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ze;->j(Lcom/shabakaty/downloader/ci;)V

    goto :goto_0

    .line 6
    :cond_1
    check-cast p2, Lcom/shabakaty/downloader/ie;

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ze;->t(Lcom/shabakaty/downloader/ie;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ze;->p(F)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p0()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ze;->f()V
    :try_end_0
    .catch Lcom/shabakaty/downloader/ze$e; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ze$e;->s:Lcom/shabakaty/downloader/wh1;

    iget-boolean v2, v0, Lcom/shabakaty/downloader/ze$e;->r:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object v0

    throw v0
.end method

.method public w()Lcom/shabakaty/downloader/no2;
    .locals 0

    return-object p0
.end method

.method public x0(Lcom/shabakaty/downloader/wh1;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ze;->a(Lcom/shabakaty/downloader/wh1;)Z

    move-result p1

    return p1
.end method

.method public y0(Lcom/shabakaty/downloader/uo2;Lcom/shabakaty/downloader/wh1;)I
    .locals 9

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/downloader/nt2;->k(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p2, Lcom/shabakaty/downloader/wh1;->V:Ljava/lang/Class;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_1
    invoke-static {p2}, Lcom/shabakaty/downloader/so2;->z0(Lcom/shabakaty/downloader/wh1;)Z

    move-result v4

    const-string v5, "audio/raw"

    if-eqz v4, :cond_4

    .line 5
    iget-object v6, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    .line 6
    invoke-interface {v6, p2}, Lcom/shabakaty/downloader/ze;->a(Lcom/shabakaty/downloader/wh1;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_3

    .line 7
    invoke-static {v5, v1, v1}, Lcom/shabakaty/downloader/wo2;->d(Ljava/lang/String;ZZ)Lcom/shabakaty/downloader/ro2;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_3
    or-int/lit8 p1, v0, 0xc

    return p1

    .line 8
    :cond_4
    iget-object v2, p2, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    invoke-interface {v2, p2}, Lcom/shabakaty/downloader/ze;->a(Lcom/shabakaty/downloader/wh1;)Z

    move-result v2

    if-nez v2, :cond_5

    return v3

    .line 9
    :cond_5
    iget-object v2, p0, Lcom/shabakaty/downloader/po2;->a1:Lcom/shabakaty/downloader/ze;

    iget v6, p2, Lcom/shabakaty/downloader/wh1;->P:I

    iget v7, p2, Lcom/shabakaty/downloader/wh1;->Q:I

    .line 10
    new-instance v8, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v8}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 11
    iput-object v5, v8, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 12
    iput v6, v8, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 13
    iput v7, v8, Lcom/shabakaty/downloader/wh1$b;->y:I

    const/4 v5, 0x2

    .line 14
    iput v5, v8, Lcom/shabakaty/downloader/wh1$b;->z:I

    .line 15
    invoke-virtual {v8}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v6

    .line 16
    invoke-interface {v2, v6}, Lcom/shabakaty/downloader/ze;->a(Lcom/shabakaty/downloader/wh1;)Z

    move-result v2

    if-nez v2, :cond_6

    return v3

    .line 17
    :cond_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/shabakaty/downloader/po2;->W(Lcom/shabakaty/downloader/uo2;Lcom/shabakaty/downloader/wh1;Z)Ljava/util/List;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    return v3

    :cond_7
    if-nez v4, :cond_8

    return v5

    .line 19
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ro2;

    .line 20
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ro2;->e(Lcom/shabakaty/downloader/wh1;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ro2;->f(Lcom/shabakaty/downloader/wh1;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x10

    goto :goto_2

    :cond_9
    const/16 p1, 0x8

    :goto_2
    if-eqz v1, :cond_a

    const/4 p2, 0x4

    goto :goto_3

    :cond_a
    const/4 p2, 0x3

    :goto_3
    or-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method
