.class public final Lcom/shabakaty/downloader/e84;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/kp2;
.implements Lcom/shabakaty/downloader/ij2$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/e84$c;,
        Lcom/shabakaty/downloader/e84$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/kp2;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/shabakaty/downloader/e84$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/wh1;

.field public final B:Z

.field public C:Z

.field public D:[B

.field public E:I

.field public final r:Lcom/shabakaty/downloader/yl0;

.field public final s:Lcom/shabakaty/downloader/vl0$a;

.field public final t:Lcom/shabakaty/downloader/sp4;

.field public final u:Lcom/shabakaty/downloader/gj2;

.field public final v:Lcom/shabakaty/downloader/yq2$a;

.field public final w:Lcom/shabakaty/downloader/cp4;

.field public final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/e84$b;",
            ">;"
        }
    .end annotation
.end field

.field public final y:J

.field public final z:Lcom/shabakaty/downloader/ij2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/vl0$a;Lcom/shabakaty/downloader/sp4;Lcom/shabakaty/downloader/wh1;JLcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/e84;->r:Lcom/shabakaty/downloader/yl0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/e84;->s:Lcom/shabakaty/downloader/vl0$a;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/e84;->t:Lcom/shabakaty/downloader/sp4;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/e84;->A:Lcom/shabakaty/downloader/wh1;

    .line 6
    iput-wide p5, p0, Lcom/shabakaty/downloader/e84;->y:J

    .line 7
    iput-object p7, p0, Lcom/shabakaty/downloader/e84;->u:Lcom/shabakaty/downloader/gj2;

    .line 8
    iput-object p8, p0, Lcom/shabakaty/downloader/e84;->v:Lcom/shabakaty/downloader/yq2$a;

    .line 9
    iput-boolean p9, p0, Lcom/shabakaty/downloader/e84;->B:Z

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/cp4;

    const/4 p2, 0x1

    new-array p3, p2, [Lcom/shabakaty/downloader/bp4;

    new-instance p5, Lcom/shabakaty/downloader/bp4;

    new-array p2, p2, [Lcom/shabakaty/downloader/wh1;

    const/4 p6, 0x0

    aput-object p4, p2, p6

    invoke-direct {p5, p2}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object p5, p3, p6

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/cp4;-><init>([Lcom/shabakaty/downloader/bp4;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/e84;->w:Lcom/shabakaty/downloader/cp4;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/e84;->x:Ljava/util/ArrayList;

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/ij2;

    const-string p2, "SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ij2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/e84;->z:Lcom/shabakaty/downloader/ij2;

    return-void
.end method


# virtual methods
.method public B0(Lcom/shabakaty/downloader/kp2$a;J)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/kp2$a;->f(Lcom/shabakaty/downloader/kp2;)V

    return-void
.end method

.method public C0([Lcom/shabakaty/downloader/f81;[Z[Lcom/shabakaty/downloader/dx3;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 2
    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/e84;->x:Ljava/util/ArrayList;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    aput-object v2, p3, v0

    .line 5
    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/e84$b;

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/e84$b;-><init>(Lcom/shabakaty/downloader/e84;Lcom/shabakaty/downloader/e84$a;)V

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/e84;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    aput-object v1, p3, v0

    const/4 v1, 0x1

    .line 9
    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public D0()Lcom/shabakaty/downloader/cp4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e84;->w:Lcom/shabakaty/downloader/cp4;

    return-object v0
.end method

.method public M0(JZ)V
    .locals 0

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e84;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/e84;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public d0()V
    .locals 0

    return-void
.end method

.method public e(J)Z
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/shabakaty/downloader/e84;->C:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/shabakaty/downloader/e84;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/shabakaty/downloader/e84;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ij2;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/e84;->s:Lcom/shabakaty/downloader/vl0$a;

    invoke-interface {v1}, Lcom/shabakaty/downloader/vl0$a;->a()Lcom/shabakaty/downloader/vl0;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/e84;->t:Lcom/shabakaty/downloader/sp4;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 5
    :cond_1
    new-instance v2, Lcom/shabakaty/downloader/e84$c;

    iget-object v3, v0, Lcom/shabakaty/downloader/e84;->r:Lcom/shabakaty/downloader/yl0;

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/e84$c;-><init>(Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/vl0;)V

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/e84;->z:Lcom/shabakaty/downloader/ij2;

    iget-object v3, v0, Lcom/shabakaty/downloader/e84;->u:Lcom/shabakaty/downloader/gj2;

    .line 7
    check-cast v3, Lcom/shabakaty/downloader/po0;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v3

    .line 8
    invoke-virtual {v1, v2, v0, v3}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    move-result-wide v9

    .line 9
    iget-object v11, v0, Lcom/shabakaty/downloader/e84;->v:Lcom/shabakaty/downloader/yq2$a;

    new-instance v12, Lcom/shabakaty/downloader/hj2;

    iget-wide v6, v2, Lcom/shabakaty/downloader/e84$c;->a:J

    iget-object v8, v0, Lcom/shabakaty/downloader/e84;->r:Lcom/shabakaty/downloader/yl0;

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;J)V

    const/4 v13, 0x1

    const/4 v14, -0x1

    iget-object v15, v0, Lcom/shabakaty/downloader/e84;->A:Lcom/shabakaty/downloader/wh1;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    iget-wide v1, v0, Lcom/shabakaty/downloader/e84;->y:J

    move-wide/from16 v20, v1

    invoke-virtual/range {v11 .. v21}, Lcom/shabakaty/downloader/yq2$a;->n(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    return v4

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v12, p6

    move/from16 v1, p7

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/shabakaty/downloader/e84$c;

    .line 2
    iget-object v3, v2, Lcom/shabakaty/downloader/e84$c;->c:Lcom/shabakaty/downloader/uc4;

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/hj2;

    iget-wide v14, v2, Lcom/shabakaty/downloader/e84$c;->a:J

    iget-object v2, v2, Lcom/shabakaty/downloader/e84$c;->b:Lcom/shabakaty/downloader/yl0;

    .line 4
    iget-object v5, v3, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 5
    iget-object v6, v3, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 6
    iget-wide v7, v3, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v13, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-wide/from16 v19, p2

    move-wide/from16 v21, p4

    move-wide/from16 v23, v7

    .line 7
    invoke-direct/range {v13 .. v24}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 8
    iget-wide v2, v0, Lcom/shabakaty/downloader/e84;->y:J

    .line 9
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->d(J)J

    .line 10
    iget-object v2, v0, Lcom/shabakaty/downloader/e84;->u:Lcom/shabakaty/downloader/gj2;

    .line 11
    check-cast v2, Lcom/shabakaty/downloader/po0;

    .line 12
    instance-of v2, v12, Lcom/shabakaty/downloader/pa3;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_1

    instance-of v2, v12, Ljava/io/FileNotFoundException;

    if-nez v2, :cond_1

    instance-of v2, v12, Lcom/shabakaty/downloader/fw1$a;

    if-nez v2, :cond_1

    instance-of v2, v12, Lcom/shabakaty/downloader/ij2$h;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x1388

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v2, v5

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v2, v5

    if-eqz v9, :cond_3

    .line 14
    iget-object v5, v0, Lcom/shabakaty/downloader/e84;->u:Lcom/shabakaty/downloader/gj2;

    .line 15
    check-cast v5, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v5

    if-lt v1, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 16
    :goto_3
    iget-boolean v5, v0, Lcom/shabakaty/downloader/e84;->B:Z

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    const-string v1, "SingleSampleMediaPeriod"

    const-string v2, "Loading failed, treating as end-of-stream."

    .line 17
    invoke-static {v1, v2, v12}, Lcom/shabakaty/downloader/fk2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iput-boolean v8, v0, Lcom/shabakaty/downloader/e84;->C:Z

    .line 19
    sget-object v1, Lcom/shabakaty/downloader/ij2;->e:Lcom/shabakaty/downloader/ij2$c;

    goto :goto_4

    :cond_4
    if-eqz v9, :cond_5

    .line 20
    invoke-static {v7, v2, v3}, Lcom/shabakaty/downloader/ij2;->c(ZJ)Lcom/shabakaty/downloader/ij2$c;

    move-result-object v1

    goto :goto_4

    .line 21
    :cond_5
    sget-object v1, Lcom/shabakaty/downloader/ij2;->f:Lcom/shabakaty/downloader/ij2$c;

    :goto_4
    move-object v14, v1

    .line 22
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ij2$c;->a()Z

    move-result v1

    xor-int/lit8 v15, v1, 0x1

    .line 23
    iget-object v1, v0, Lcom/shabakaty/downloader/e84;->v:Lcom/shabakaty/downloader/yq2$a;

    const/4 v3, 0x1

    const/4 v5, -0x1

    iget-object v6, v0, Lcom/shabakaty/downloader/e84;->A:Lcom/shabakaty/downloader/wh1;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-wide v10, v0, Lcom/shabakaty/downloader/e84;->y:J

    const-wide/16 v16, 0x0

    move-object v2, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-wide/from16 v8, v16

    move-object/from16 v12, p6

    move v13, v15

    invoke-virtual/range {v1 .. v13}, Lcom/shabakaty/downloader/yq2$a;->j(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v15, :cond_6

    .line 24
    iget-object v1, v0, Lcom/shabakaty/downloader/e84;->u:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v14
.end method

.method public g(Lcom/shabakaty/downloader/ij2$e;JJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/e84$c;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/e84$c;->c:Lcom/shabakaty/downloader/uc4;

    .line 3
    iget-wide v2, v2, Lcom/shabakaty/downloader/uc4;->b:J

    long-to-int v3, v2

    .line 4
    iput v3, v0, Lcom/shabakaty/downloader/e84;->E:I

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/e84$c;->d:[B

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object v2, v0, Lcom/shabakaty/downloader/e84;->D:[B

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v0, Lcom/shabakaty/downloader/e84;->C:Z

    .line 9
    iget-object v2, v1, Lcom/shabakaty/downloader/e84$c;->c:Lcom/shabakaty/downloader/uc4;

    .line 10
    new-instance v15, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v1, Lcom/shabakaty/downloader/e84$c;->a:J

    iget-object v6, v1, Lcom/shabakaty/downloader/e84$c;->b:Lcom/shabakaty/downloader/yl0;

    .line 11
    iget-object v7, v2, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 12
    iget-object v8, v2, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 13
    iget v1, v0, Lcom/shabakaty/downloader/e84;->E:I

    int-to-long v13, v1

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 14
    iget-object v1, v0, Lcom/shabakaty/downloader/e84;->u:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v3, v0, Lcom/shabakaty/downloader/e84;->v:Lcom/shabakaty/downloader/yq2$a;

    const/4 v5, 0x1

    const/4 v6, -0x1

    iget-object v7, v0, Lcom/shabakaty/downloader/e84;->A:Lcom/shabakaty/downloader/wh1;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    iget-wide v12, v0, Lcom/shabakaty/downloader/e84;->y:J

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/shabakaty/downloader/yq2$a;->h(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e84;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    return v0
.end method

.method public k(JLcom/shabakaty/downloader/wz3;)J
    .locals 0

    return-wide p1
.end method

.method public l(Lcom/shabakaty/downloader/ij2$e;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/e84$c;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/e84$c;->c:Lcom/shabakaty/downloader/uc4;

    .line 3
    new-instance v15, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v1, Lcom/shabakaty/downloader/e84$c;->a:J

    iget-object v6, v1, Lcom/shabakaty/downloader/e84$c;->b:Lcom/shabakaty/downloader/yl0;

    .line 4
    iget-object v7, v2, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 5
    iget-object v8, v2, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 6
    iget-wide v13, v2, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 7
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/e84;->u:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/e84;->v:Lcom/shabakaty/downloader/yq2$a;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    iget-wide v12, v0, Lcom/shabakaty/downloader/e84;->y:J

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/shabakaty/downloader/yq2$a;->e(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public o()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e84;->C:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public p0(J)J
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/e84;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/e84;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/e84$b;

    .line 3
    iget v2, v1, Lcom/shabakaty/downloader/e84$b;->r:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 4
    iput v2, v1, Lcom/shabakaty/downloader/e84$b;->r:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public t(J)V
    .locals 0

    return-void
.end method

.method public x0()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
