.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/c;
.super Ljava/lang/Object;
.source "SsMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/kp2;
.implements Lcom/shabakaty/downloader/o04$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/kp2;",
        "Lcom/shabakaty/downloader/o04$a<",
        "Lcom/shabakaty/downloader/d00<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/kd;

.field public B:Lcom/shabakaty/downloader/kp2$a;

.field public C:Lcom/shabakaty/downloader/wa4;

.field public D:[Lcom/shabakaty/downloader/d00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/b;",
            ">;"
        }
    .end annotation
.end field

.field public E:Lcom/shabakaty/downloader/o04;

.field public final r:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

.field public final s:Lcom/shabakaty/downloader/sp4;

.field public final t:Lcom/shabakaty/downloader/kj2;

.field public final u:Lcom/shabakaty/downloader/u01;

.field public final v:Lcom/shabakaty/downloader/s01$a;

.field public final w:Lcom/shabakaty/downloader/gj2;

.field public final x:Lcom/shabakaty/downloader/yq2$a;

.field public final y:Lcom/shabakaty/downloader/fn0;

.field public final z:Lcom/shabakaty/downloader/cp4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wa4;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lcom/shabakaty/downloader/sp4;Lcom/shabakaty/downloader/kd;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;Lcom/shabakaty/downloader/kj2;Lcom/shabakaty/downloader/fn0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->C:Lcom/shabakaty/downloader/wa4;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->r:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->s:Lcom/shabakaty/downloader/sp4;

    .line 5
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->t:Lcom/shabakaty/downloader/kj2;

    .line 6
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->u:Lcom/shabakaty/downloader/u01;

    .line 7
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->v:Lcom/shabakaty/downloader/s01$a;

    .line 8
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->w:Lcom/shabakaty/downloader/gj2;

    .line 9
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->x:Lcom/shabakaty/downloader/yq2$a;

    .line 10
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->y:Lcom/shabakaty/downloader/fn0;

    .line 11
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->A:Lcom/shabakaty/downloader/kd;

    .line 12
    iget-object p2, p1, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    array-length p2, p2

    new-array p2, p2, [Lcom/shabakaty/downloader/bp4;

    const/4 p3, 0x0

    const/4 p6, 0x0

    .line 13
    :goto_0
    iget-object p7, p1, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    array-length p8, p7

    if-ge p6, p8, :cond_1

    .line 14
    aget-object p7, p7, p6

    iget-object p7, p7, Lcom/shabakaty/downloader/wa4$b;->j:[Lcom/shabakaty/downloader/wh1;

    .line 15
    array-length p8, p7

    new-array p8, p8, [Lcom/shabakaty/downloader/wh1;

    const/4 p9, 0x0

    .line 16
    :goto_1
    array-length p10, p7

    if-ge p9, p10, :cond_0

    .line 17
    aget-object p10, p7, p9

    .line 18
    invoke-interface {p5, p10}, Lcom/shabakaty/downloader/u01;->d(Lcom/shabakaty/downloader/wh1;)Ljava/lang/Class;

    move-result-object v0

    .line 19
    invoke-virtual {p10, v0}, Lcom/shabakaty/downloader/wh1;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/wh1;

    move-result-object p10

    aput-object p10, p8, p9

    add-int/lit8 p9, p9, 0x1

    goto :goto_1

    .line 20
    :cond_0
    new-instance p7, Lcom/shabakaty/downloader/bp4;

    invoke-direct {p7, p8}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object p7, p2, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 21
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/cp4;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/cp4;-><init>([Lcom/shabakaty/downloader/bp4;)V

    .line 22
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->z:Lcom/shabakaty/downloader/cp4;

    new-array p1, p3, [Lcom/shabakaty/downloader/d00;

    .line 23
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->D:[Lcom/shabakaty/downloader/d00;

    .line 24
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance p2, Lcom/shabakaty/downloader/fq1;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/fq1;-><init>([Lcom/shabakaty/downloader/o04;)V

    .line 26
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->E:Lcom/shabakaty/downloader/o04;

    return-void
.end method


# virtual methods
.method public B0(Lcom/shabakaty/downloader/kp2$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->B:Lcom/shabakaty/downloader/kp2$a;

    .line 2
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/kp2$a;->f(Lcom/shabakaty/downloader/kp2;)V

    return-void
.end method

.method public C0([Lcom/shabakaty/downloader/f81;[Z[Lcom/shabakaty/downloader/dx3;[ZJ)J
    .locals 19

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    .line 1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v12, 0x0

    .line 2
    :goto_0
    array-length v0, v14

    if-ge v12, v0, :cond_4

    .line 3
    aget-object v0, p3, v12

    if-eqz v0, :cond_2

    .line 4
    aget-object v0, p3, v12

    check-cast v0, Lcom/shabakaty/downloader/d00;

    .line 5
    aget-object v1, v14, v12

    if-eqz v1, :cond_1

    aget-boolean v1, p2, v12

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    .line 7
    check-cast v1, Lcom/google/android/exoplayer2/source/smoothstreaming/b;

    aget-object v2, v14, v12

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/b;->c(Lcom/shabakaty/downloader/f81;)V

    .line 8
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/d00;->u(Lcom/shabakaty/downloader/d00$b;)V

    .line 10
    aput-object v1, p3, v12

    .line 11
    :cond_2
    :goto_2
    aget-object v0, p3, v12

    if-nez v0, :cond_3

    aget-object v0, v14, v12

    if-eqz v0, :cond_3

    .line 12
    aget-object v5, v14, v12

    .line 13
    iget-object v0, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->z:Lcom/shabakaty/downloader/cp4;

    invoke-interface {v5}, Lcom/shabakaty/downloader/hp4;->b()Lcom/shabakaty/downloader/bp4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/cp4;->a(Lcom/shabakaty/downloader/bp4;)I

    move-result v0

    .line 14
    iget-object v1, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->r:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    iget-object v2, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->t:Lcom/shabakaty/downloader/kj2;

    iget-object v3, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->C:Lcom/shabakaty/downloader/wa4;

    iget-object v6, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->s:Lcom/shabakaty/downloader/sp4;

    move v4, v0

    .line 15
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;->a(Lcom/shabakaty/downloader/kj2;Lcom/shabakaty/downloader/wa4;ILcom/shabakaty/downloader/f81;Lcom/shabakaty/downloader/sp4;)Lcom/google/android/exoplayer2/source/smoothstreaming/b;

    move-result-object v4

    .line 16
    new-instance v11, Lcom/shabakaty/downloader/d00;

    iget-object v1, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->C:Lcom/shabakaty/downloader/wa4;

    iget-object v1, v1, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    aget-object v0, v1, v0

    iget v1, v0, Lcom/shabakaty/downloader/wa4$b;->a:I

    iget-object v6, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->y:Lcom/shabakaty/downloader/fn0;

    iget-object v9, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->u:Lcom/shabakaty/downloader/u01;

    iget-object v10, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->v:Lcom/shabakaty/downloader/s01$a;

    iget-object v7, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->w:Lcom/shabakaty/downloader/gj2;

    iget-object v8, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->x:Lcom/shabakaty/downloader/yq2$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v11

    move-object/from16 v5, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-wide/from16 v7, p5

    move-object/from16 v18, v11

    move-object/from16 v11, v16

    move/from16 v16, v12

    move-object/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lcom/shabakaty/downloader/d00;-><init>(I[I[Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/e00;Lcom/shabakaty/downloader/o04$a;Lcom/shabakaty/downloader/fn0;JLcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;)V

    move-object/from16 v0, v18

    .line 17
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    aput-object v0, p3, v16

    const/4 v0, 0x1

    .line 19
    aput-boolean v0, p4, v16

    goto :goto_3

    :cond_3
    move/from16 v16, v12

    :goto_3
    add-int/lit8 v12, v16, 0x1

    goto/16 :goto_0

    .line 20
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 21
    new-array v0, v0, [Lcom/shabakaty/downloader/d00;

    .line 22
    iput-object v0, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->D:[Lcom/shabakaty/downloader/d00;

    .line 23
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    iget-object v0, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->A:Lcom/shabakaty/downloader/kd;

    iget-object v1, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->D:[Lcom/shabakaty/downloader/d00;

    .line 25
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fq1;-><init>([Lcom/shabakaty/downloader/o04;)V

    .line 27
    iput-object v0, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->E:Lcom/shabakaty/downloader/o04;

    return-wide p5
.end method

.method public D0()Lcom/shabakaty/downloader/cp4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->z:Lcom/shabakaty/downloader/cp4;

    return-object v0
.end method

.method public M0(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->D:[Lcom/shabakaty/downloader/d00;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1, p2, p3}, Lcom/shabakaty/downloader/d00;->M0(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/o04;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->B:Lcom/shabakaty/downloader/kp2$a;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->E:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o04;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->t:Lcom/shabakaty/downloader/kj2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kj2;->b()V

    return-void
.end method

.method public e(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->E:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/o04;->e(J)Z

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->E:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o04;->j()Z

    move-result v0

    return v0
.end method

.method public k(JLcom/shabakaty/downloader/wz3;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->D:[Lcom/shabakaty/downloader/d00;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/shabakaty/downloader/d00;->r:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 3
    iget-object v0, v3, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/e00;->k(JLcom/shabakaty/downloader/wz3;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public o()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->E:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o04;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public p0(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->D:[Lcom/shabakaty/downloader/d00;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1, p2}, Lcom/shabakaty/downloader/d00;->w(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public t(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->E:Lcom/shabakaty/downloader/o04;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/o04;->t(J)V

    return-void
.end method

.method public x0()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
