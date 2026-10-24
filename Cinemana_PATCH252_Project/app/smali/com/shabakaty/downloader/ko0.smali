.class public final Lcom/shabakaty/downloader/ko0;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lcom/shabakaty/downloader/ot1;
.implements Lcom/shabakaty/downloader/ij2$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ko0$b;,
        Lcom/shabakaty/downloader/ko0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ot1;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/shabakaty/downloader/ra3<",
        "Lcom/shabakaty/downloader/lt1;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final F:Lcom/shabakaty/downloader/ot1$a;


# instance fields
.field public A:Lcom/shabakaty/downloader/it1;

.field public B:Landroid/net/Uri;

.field public C:Lcom/shabakaty/downloader/kt1;

.field public D:Z

.field public E:J

.field public final r:Lcom/shabakaty/downloader/gt1;

.field public final s:Lcom/shabakaty/downloader/nt1;

.field public final t:Lcom/shabakaty/downloader/gj2;

.field public final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcom/shabakaty/downloader/ko0$c;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/shabakaty/downloader/ot1$b;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lcom/shabakaty/downloader/yq2$a;

.field public x:Lcom/shabakaty/downloader/ij2;

.field public y:Landroid/os/Handler;

.field public z:Lcom/shabakaty/downloader/ot1$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/iw3;->x:Lcom/shabakaty/downloader/iw3;

    sput-object v0, Lcom/shabakaty/downloader/ko0;->F:Lcom/shabakaty/downloader/ot1$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gt1;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/nt1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ko0;->r:Lcom/shabakaty/downloader/gt1;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/ko0;->s:Lcom/shabakaty/downloader/nt1;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    .line 5
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ko0;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lcom/shabakaty/downloader/ko0;->E:J

    return-void
.end method

.method public static p(Lcom/shabakaty/downloader/ko0;Landroid/net/Uri;Lcom/shabakaty/downloader/gj2$c;Z)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/ko0;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ot1$b;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/shabakaty/downloader/ot1$b;->d(Landroid/net/Uri;Lcom/shabakaty/downloader/gj2$c;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static q(Lcom/shabakaty/downloader/kt1;Lcom/shabakaty/downloader/kt1;)Lcom/shabakaty/downloader/kt1$d;
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/shabakaty/downloader/kt1;->k:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/kt1;->k:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/kt1$d;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ko0$c;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    iget-wide v6, v0, Lcom/shabakaty/downloader/kt1;->u:J

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    iget-boolean v6, v0, Lcom/shabakaty/downloader/kt1;->o:Z

    const/4 v7, 0x1

    if-nez v6, :cond_1

    iget v0, v0, Lcom/shabakaty/downloader/kt1;->d:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    iget-wide v8, p1, Lcom/shabakaty/downloader/ko0$c;->v:J

    add-long/2addr v8, v4

    cmp-long p1, v8, v2

    if-lez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public b(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ko0$c;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ko0$c;->s:Lcom/shabakaty/downloader/ij2;

    const/high16 v1, -0x80000000

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ij2;->f(I)V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/ko0$c;->A:Ljava/io/IOException;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    throw p1
.end method

.method public c(Landroid/net/Uri;Lcom/shabakaty/downloader/yq2$a;Lcom/shabakaty/downloader/ot1$e;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ko0;->y:Landroid/os/Handler;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/ko0;->w:Lcom/shabakaty/downloader/yq2$a;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/ko0;->z:Lcom/shabakaty/downloader/ot1$e;

    .line 4
    new-instance p3, Lcom/shabakaty/downloader/ra3;

    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->r:Lcom/shabakaty/downloader/gt1;

    const/4 v1, 0x4

    .line 5
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/gt1;->a(I)Lcom/shabakaty/downloader/vl0;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/downloader/ko0;->s:Lcom/shabakaty/downloader/nt1;

    .line 6
    invoke-interface {v2}, Lcom/shabakaty/downloader/nt1;->b()Lcom/shabakaty/downloader/ra3$a;

    move-result-object v2

    invoke-direct {p3, v0, p1, v1, v2}, Lcom/shabakaty/downloader/ra3;-><init>(Lcom/shabakaty/downloader/vl0;Landroid/net/Uri;ILcom/shabakaty/downloader/ra3$a;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/ko0;->x:Lcom/shabakaty/downloader/ij2;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/ij2;

    const-string v0, "DefaultHlsPlaylistTracker:MasterPlaylist"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ij2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ko0;->x:Lcom/shabakaty/downloader/ij2;

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    iget v1, p3, Lcom/shabakaty/downloader/ra3;->c:I

    .line 10
    check-cast v0, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v0

    .line 11
    invoke-virtual {p1, p3, p0, v0}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    move-result-wide v5

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/hj2;

    iget-wide v2, p3, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v4, p3, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;J)V

    iget p3, p3, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {p2, p1, p3}, Lcom/shabakaty/downloader/yq2$a;->m(Lcom/shabakaty/downloader/hj2;I)V

    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/ko0;->E:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ko0;->D:Z

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/shabakaty/downloader/ra3;

    .line 2
    new-instance v15, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v2, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v6, v2, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    .line 3
    iget-object v3, v2, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 4
    iget-object v7, v3, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 5
    iget-object v8, v3, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 6
    iget-wide v13, v3, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 7
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 8
    iget-object v3, v0, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    .line 9
    check-cast v3, Lcom/shabakaty/downloader/po0;

    .line 10
    instance-of v3, v1, Lcom/shabakaty/downloader/pa3;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v3, :cond_1

    instance-of v3, v1, Ljava/io/FileNotFoundException;

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/shabakaty/downloader/fw1$a;

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/shabakaty/downloader/ij2$h;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p7, -0x1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v6, 0x1388

    .line 11
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v6, v3

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v6, v4

    :goto_1
    const/4 v3, 0x0

    cmp-long v8, v6, v4

    if-nez v8, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 12
    :goto_2
    iget-object v5, v0, Lcom/shabakaty/downloader/ko0;->w:Lcom/shabakaty/downloader/yq2$a;

    iget v2, v2, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {v5, v15, v2, v1, v4}, Lcom/shabakaty/downloader/yq2$a;->k(Lcom/shabakaty/downloader/hj2;ILjava/io/IOException;Z)V

    if-eqz v4, :cond_3

    .line 13
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v4, :cond_4

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/ij2;->f:Lcom/shabakaty/downloader/ij2$c;

    goto :goto_3

    .line 15
    :cond_4
    invoke-static {v3, v6, v7}, Lcom/shabakaty/downloader/ij2;->c(ZJ)Lcom/shabakaty/downloader/ij2$c;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method public g(Lcom/shabakaty/downloader/ij2$e;JJ)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ra3;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/ra3;->f:Ljava/lang/Object;

    .line 3
    check-cast v2, Lcom/shabakaty/downloader/lt1;

    .line 4
    instance-of v3, v2, Lcom/shabakaty/downloader/kt1;

    if-eqz v3, :cond_0

    .line 5
    iget-object v4, v2, Lcom/shabakaty/downloader/lt1;->a:Ljava/lang/String;

    sget-object v5, Lcom/shabakaty/downloader/it1;->n:Lcom/shabakaty/downloader/it1;

    .line 6
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v4}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v5, "0"

    .line 8
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    const-string v5, "application/x-mpegURL"

    .line 9
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    .line 10
    invoke-virtual {v4}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v8

    .line 11
    new-instance v4, Lcom/shabakaty/downloader/it1$b;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/it1$b;-><init>(Landroid/net/Uri;Lcom/shabakaty/downloader/wh1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    .line 13
    new-instance v4, Lcom/shabakaty/downloader/it1;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v24

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v25

    const-string v14, ""

    move-object v13, v4

    invoke-direct/range {v13 .. v25}, Lcom/shabakaty/downloader/it1;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/wh1;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 21
    :cond_0
    move-object v4, v2

    check-cast v4, Lcom/shabakaty/downloader/it1;

    .line 22
    :goto_0
    iput-object v4, v0, Lcom/shabakaty/downloader/ko0;->A:Lcom/shabakaty/downloader/it1;

    .line 23
    iget-object v5, v4, Lcom/shabakaty/downloader/it1;->e:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/it1$b;

    iget-object v5, v5, Lcom/shabakaty/downloader/it1$b;->a:Landroid/net/Uri;

    iput-object v5, v0, Lcom/shabakaty/downloader/ko0;->B:Landroid/net/Uri;

    .line 24
    iget-object v5, v0, Lcom/shabakaty/downloader/ko0;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v7, Lcom/shabakaty/downloader/ko0$b;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/shabakaty/downloader/ko0$b;-><init>(Lcom/shabakaty/downloader/ko0;Lcom/shabakaty/downloader/ko0$a;)V

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v4, v4, Lcom/shabakaty/downloader/it1;->d:Ljava/util/List;

    .line 26
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v6, v5, :cond_1

    .line 27
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 28
    new-instance v8, Lcom/shabakaty/downloader/ko0$c;

    invoke-direct {v8, v0, v7}, Lcom/shabakaty/downloader/ko0$c;-><init>(Lcom/shabakaty/downloader/ko0;Landroid/net/Uri;)V

    .line 29
    iget-object v9, v0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 30
    :cond_1
    new-instance v4, Lcom/shabakaty/downloader/hj2;

    iget-wide v8, v1, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v10, v1, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    .line 31
    iget-object v1, v1, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 32
    iget-object v11, v1, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 33
    iget-object v12, v1, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 34
    iget-wide v5, v1, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v7, v4

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    move-wide/from16 v17, v5

    .line 35
    invoke-direct/range {v7 .. v18}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 36
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/shabakaty/downloader/ko0;->B:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ko0$c;

    if-eqz v3, :cond_2

    .line 37
    check-cast v2, Lcom/shabakaty/downloader/kt1;

    .line 38
    invoke-virtual {v1, v2, v4}, Lcom/shabakaty/downloader/ko0$c;->d(Lcom/shabakaty/downloader/kt1;Lcom/shabakaty/downloader/hj2;)V

    goto :goto_2

    .line 39
    :cond_2
    iget-object v2, v1, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ko0$c;->c(Landroid/net/Uri;)V

    .line 40
    :goto_2
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0;->w:Lcom/shabakaty/downloader/yq2$a;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2}, Lcom/shabakaty/downloader/yq2$a;->g(Lcom/shabakaty/downloader/hj2;I)V

    return-void
.end method

.method public h(Landroid/net/Uri;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ko0$c;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/shabakaty/downloader/ko0$c;->a(Lcom/shabakaty/downloader/ko0$c;J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i()Lcom/shabakaty/downloader/it1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->A:Lcom/shabakaty/downloader/it1;

    return-object v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->x:Lcom/shabakaty/downloader/ij2;

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ij2;->f(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->B:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ko0;->b(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public k(Lcom/shabakaty/downloader/ot1$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public l(Lcom/shabakaty/downloader/ij2$e;JJZ)V
    .locals 15

    move-object v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ra3;

    .line 2
    new-instance v14, Lcom/shabakaty/downloader/hj2;

    iget-wide v3, v1, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v5, v1, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 4
    iget-object v6, v1, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 5
    iget-object v7, v1, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 6
    iget-wide v12, v1, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 7
    invoke-direct/range {v2 .. v13}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0;->w:Lcom/shabakaty/downloader/yq2$a;

    const/4 v2, 0x4

    invoke-virtual {v1, v14, v2}, Lcom/shabakaty/downloader/yq2$a;->d(Lcom/shabakaty/downloader/hj2;I)V

    return-void
.end method

.method public m(Lcom/shabakaty/downloader/ot1$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ko0$c;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ko0$c;->c(Landroid/net/Uri;)V

    return-void
.end method

.method public o(Landroid/net/Uri;Z)Lcom/shabakaty/downloader/kt1;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ko0$c;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/ko0;->B:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/ko0;->A:Lcom/shabakaty/downloader/it1;

    iget-object p2, p2, Lcom/shabakaty/downloader/it1;->e:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/it1$b;

    iget-object v3, v3, Lcom/shabakaty/downloader/it1$b;->a:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/ko0;->C:Lcom/shabakaty/downloader/kt1;

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lcom/shabakaty/downloader/kt1;->o:Z

    if-eqz p2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/ko0;->B:Landroid/net/Uri;

    .line 9
    iget-object p2, p0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ko0$c;

    .line 10
    iget-object v1, p2, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    if-eqz v1, :cond_3

    .line 11
    iget-boolean v2, v1, Lcom/shabakaty/downloader/kt1;->o:Z

    if-eqz v2, :cond_3

    .line 12
    iput-object v1, p0, Lcom/shabakaty/downloader/ko0;->C:Lcom/shabakaty/downloader/kt1;

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/ko0;->z:Lcom/shabakaty/downloader/ot1$e;

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->z(Lcom/shabakaty/downloader/kt1;)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ko0;->r(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ko0$c;->c(Landroid/net/Uri;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final r(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->C:Lcom/shabakaty/downloader/kt1;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/shabakaty/downloader/kt1;->v:Lcom/shabakaty/downloader/kt1$f;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/kt1$f;->e:Z

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/kt1;->t:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kt1$c;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 5
    iget-wide v1, v0, Lcom/shabakaty/downloader/kt1$c;->a:J

    .line 6
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_HLS_msn"

    .line 7
    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    iget v0, v0, Lcom/shabakaty/downloader/kt1$c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_HLS_part"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/ko0;->B:Landroid/net/Uri;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/ko0;->C:Lcom/shabakaty/downloader/kt1;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/ko0;->A:Lcom/shabakaty/downloader/it1;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v1, p0, Lcom/shabakaty/downloader/ko0;->E:J

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ko0;->x:Lcom/shabakaty/downloader/ij2;

    .line 6
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ij2;->g(Lcom/shabakaty/downloader/ij2$f;)V

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/ko0;->x:Lcom/shabakaty/downloader/ij2;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ko0$c;

    .line 9
    iget-object v2, v2, Lcom/shabakaty/downloader/ko0$c;->s:Lcom/shabakaty/downloader/ij2;

    .line 10
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/ij2;->g(Lcom/shabakaty/downloader/ij2$f;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ko0;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/ko0;->y:Landroid/os/Handler;

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
