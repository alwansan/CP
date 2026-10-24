.class public final Lcom/shabakaty/downloader/f84;
.super Lcom/shabakaty/downloader/rj;
.source "SingleSampleMediaSource.java"


# instance fields
.field public final A:J

.field public final B:Lcom/shabakaty/downloader/gj2;

.field public final C:Z

.field public final D:Lcom/shabakaty/downloader/nn4;

.field public final E:Lcom/shabakaty/downloader/dp2;

.field public F:Lcom/shabakaty/downloader/sp4;

.field public final x:Lcom/shabakaty/downloader/yl0;

.field public final y:Lcom/shabakaty/downloader/vl0$a;

.field public final z:Lcom/shabakaty/downloader/wh1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/dp2$h;Lcom/shabakaty/downloader/vl0$a;JLcom/shabakaty/downloader/gj2;ZLjava/lang/Object;Lcom/shabakaty/downloader/f84$a;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/shabakaty/downloader/rj;-><init>()V

    move-object/from16 v2, p3

    .line 2
    iput-object v2, v0, Lcom/shabakaty/downloader/f84;->y:Lcom/shabakaty/downloader/vl0$a;

    move-wide/from16 v2, p4

    .line 3
    iput-wide v2, v0, Lcom/shabakaty/downloader/f84;->A:J

    move-object/from16 v4, p6

    .line 4
    iput-object v4, v0, Lcom/shabakaty/downloader/f84;->B:Lcom/shabakaty/downloader/gj2;

    move/from16 v4, p7

    .line 5
    iput-boolean v4, v0, Lcom/shabakaty/downloader/f84;->C:Z

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/dp2$c;

    invoke-direct {v4}, Lcom/shabakaty/downloader/dp2$c;-><init>()V

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 7
    iput-object v5, v4, Lcom/shabakaty/downloader/dp2$c;->b:Landroid/net/Uri;

    .line 8
    iget-object v5, v1, Lcom/shabakaty/downloader/dp2$h;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object v5, v4, Lcom/shabakaty/downloader/dp2$c;->a:Ljava/lang/String;

    .line 12
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/dp2$c;->c(Ljava/util/List;)Lcom/shabakaty/downloader/dp2$c;

    const/4 v5, 0x0

    .line 13
    iput-object v5, v4, Lcom/shabakaty/downloader/dp2$c;->u:Ljava/lang/Object;

    .line 14
    invoke-virtual {v4}, Lcom/shabakaty/downloader/dp2$c;->a()Lcom/shabakaty/downloader/dp2;

    move-result-object v8

    iput-object v8, v0, Lcom/shabakaty/downloader/f84;->E:Lcom/shabakaty/downloader/dp2;

    .line 15
    new-instance v4, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v4}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 16
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 17
    iget-object v5, v1, Lcom/shabakaty/downloader/dp2$h;->b:Ljava/lang/String;

    .line 18
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 19
    iget-object v5, v1, Lcom/shabakaty/downloader/dp2$h;->c:Ljava/lang/String;

    .line 20
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 21
    iget v5, v1, Lcom/shabakaty/downloader/dp2$h;->d:I

    .line 22
    iput v5, v4, Lcom/shabakaty/downloader/wh1$b;->d:I

    .line 23
    iget v5, v1, Lcom/shabakaty/downloader/dp2$h;->e:I

    .line 24
    iput v5, v4, Lcom/shabakaty/downloader/wh1$b;->e:I

    .line 25
    iget-object v5, v1, Lcom/shabakaty/downloader/dp2$h;->f:Ljava/lang/String;

    .line 26
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {v4}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v4

    iput-object v4, v0, Lcom/shabakaty/downloader/f84;->z:Lcom/shabakaty/downloader/wh1;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v15

    .line 29
    iget-object v10, v1, Lcom/shabakaty/downloader/dp2$h;->a:Landroid/net/Uri;

    if-eqz v10, :cond_0

    .line 30
    new-instance v1, Lcom/shabakaty/downloader/yl0;

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v9, v1

    .line 31
    invoke-direct/range {v9 .. v22}, Lcom/shabakaty/downloader/yl0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 32
    iput-object v1, v0, Lcom/shabakaty/downloader/f84;->x:Lcom/shabakaty/downloader/yl0;

    .line 33
    new-instance v9, Lcom/shabakaty/downloader/b84;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-wide/from16 v2, p4

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/b84;-><init>(JZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;)V

    iput-object v9, v0, Lcom/shabakaty/downloader/f84;->D:Lcom/shabakaty/downloader/nn4;

    return-void

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The uri must be set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;
    .locals 10

    .line 1
    new-instance p2, Lcom/shabakaty/downloader/e84;

    iget-object v1, p0, Lcom/shabakaty/downloader/f84;->x:Lcom/shabakaty/downloader/yl0;

    iget-object v2, p0, Lcom/shabakaty/downloader/f84;->y:Lcom/shabakaty/downloader/vl0$a;

    iget-object v3, p0, Lcom/shabakaty/downloader/f84;->F:Lcom/shabakaty/downloader/sp4;

    iget-object v4, p0, Lcom/shabakaty/downloader/f84;->z:Lcom/shabakaty/downloader/wh1;

    iget-wide v5, p0, Lcom/shabakaty/downloader/f84;->A:J

    iget-object v7, p0, Lcom/shabakaty/downloader/f84;->B:Lcom/shabakaty/downloader/gj2;

    .line 2
    iget-object p3, p0, Lcom/shabakaty/downloader/rj;->t:Lcom/shabakaty/downloader/yq2$a;

    const/4 p4, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {p3, p4, p1, v8, v9}, Lcom/shabakaty/downloader/yq2$a;->r(ILcom/shabakaty/downloader/uq2$a;J)Lcom/shabakaty/downloader/yq2$a;

    move-result-object v8

    .line 3
    iget-boolean v9, p0, Lcom/shabakaty/downloader/f84;->C:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/shabakaty/downloader/e84;-><init>(Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/vl0$a;Lcom/shabakaty/downloader/sp4;Lcom/shabakaty/downloader/wh1;JLcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;Z)V

    return-object p2
.end method

.method public h()Lcom/shabakaty/downloader/dp2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f84;->E:Lcom/shabakaty/downloader/dp2;

    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public m(Lcom/shabakaty/downloader/kp2;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/e84;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/e84;->z:Lcom/shabakaty/downloader/ij2;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ij2;->g(Lcom/shabakaty/downloader/ij2$f;)V

    return-void
.end method

.method public v(Lcom/shabakaty/downloader/sp4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/f84;->F:Lcom/shabakaty/downloader/sp4;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f84;->D:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/rj;->w(Lcom/shabakaty/downloader/nn4;)V

    return-void
.end method

.method public x()V
    .locals 0

    return-void
.end method
