.class public Lcom/shabakaty/downloader/un0;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/shabakaty/downloader/u01;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/un0$e;,
        Lcom/shabakaty/downloader/un0$b;,
        Lcom/shabakaty/downloader/un0$g;,
        Lcom/shabakaty/downloader/un0$f;,
        Lcom/shabakaty/downloader/un0$c;,
        Lcom/shabakaty/downloader/un0$d;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/UUID;

.field public final c:Lcom/shabakaty/downloader/h71$c;

.field public final d:Lcom/shabakaty/downloader/ap2;

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:[I

.field public final h:Z

.field public final i:Lcom/shabakaty/downloader/un0$f;

.field public final j:Lcom/shabakaty/downloader/gj2;

.field public final k:Lcom/shabakaty/downloader/un0$g;

.field public final l:J

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tn0;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/un0$e;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/tn0;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:Lcom/shabakaty/downloader/h71;

.field public r:Lcom/shabakaty/downloader/tn0;

.field public s:Lcom/shabakaty/downloader/tn0;

.field public t:Landroid/os/Looper;

.field public u:Landroid/os/Handler;

.field public v:I

.field public w:[B

.field public volatile x:Lcom/shabakaty/downloader/un0$c;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/shabakaty/downloader/h71$c;Lcom/shabakaty/downloader/ap2;Ljava/util/HashMap;Z[IZLcom/shabakaty/downloader/gj2;JLcom/shabakaty/downloader/un0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p11, Lcom/shabakaty/downloader/jp;->b:Ljava/util/UUID;

    invoke-virtual {p11, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p11

    xor-int/lit8 p11, p11, 0x1

    const-string v0, "Use C.CLEARKEY_UUID instead"

    invoke-static {p11, v0}, Lcom/shabakaty/downloader/md;->c(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/un0;->b:Ljava/util/UUID;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/un0;->c:Lcom/shabakaty/downloader/h71$c;

    .line 6
    iput-object p3, p0, Lcom/shabakaty/downloader/un0;->d:Lcom/shabakaty/downloader/ap2;

    .line 7
    iput-object p4, p0, Lcom/shabakaty/downloader/un0;->e:Ljava/util/HashMap;

    .line 8
    iput-boolean p5, p0, Lcom/shabakaty/downloader/un0;->f:Z

    .line 9
    iput-object p6, p0, Lcom/shabakaty/downloader/un0;->g:[I

    .line 10
    iput-boolean p7, p0, Lcom/shabakaty/downloader/un0;->h:Z

    .line 11
    iput-object p8, p0, Lcom/shabakaty/downloader/un0;->j:Lcom/shabakaty/downloader/gj2;

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/un0$f;

    invoke-direct {p1}, Lcom/shabakaty/downloader/un0$f;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/un0;->i:Lcom/shabakaty/downloader/un0$f;

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/un0$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/un0$g;-><init>(Lcom/shabakaty/downloader/un0;Lcom/shabakaty/downloader/un0$a;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/un0;->k:Lcom/shabakaty/downloader/un0$g;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/shabakaty/downloader/un0;->v:I

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/un0;->m:Ljava/util/List;

    .line 16
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 17
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/shabakaty/downloader/un0;->n:Ljava/util/Set;

    .line 19
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 20
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/shabakaty/downloader/un0;->o:Ljava/util/Set;

    .line 22
    iput-wide p9, p0, Lcom/shabakaty/downloader/un0;->l:J

    return-void
.end method

.method public static f(Lcom/shabakaty/downloader/p01;)Z
    .locals 3

    .line 1
    check-cast p0, Lcom/shabakaty/downloader/tn0;

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/tn0;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tn0;->f()Lcom/shabakaty/downloader/p01$a;

    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Landroid/media/ResourceBusyException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static j(Lcom/shabakaty/downloader/o01;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/o01;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o01$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/shabakaty/downloader/o01;->u:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lcom/shabakaty/downloader/o01;->u:I

    if-ge v2, v3, :cond_4

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/o01;->r:[Lcom/shabakaty/downloader/o01$b;

    aget-object v3, v3, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/o01$b;->b(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/shabakaty/downloader/jp;->c:Ljava/util/UUID;

    .line 5
    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/shabakaty/downloader/jp;->b:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/o01$b;->b(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    .line 6
    iget-object v4, v3, Lcom/shabakaty/downloader/o01$b;->v:[B

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 7
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/un0;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/un0;->p:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/un0;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shabakaty/downloader/un0;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/tn0;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/tn0;->b(Lcom/shabakaty/downloader/s01$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/un0;->n()V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/un0;->l()V

    return-void
.end method

.method public b(Landroid/os/Looper;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/p01;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/un0;->p:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/un0;->k(Landroid/os/Looper;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/shabakaty/downloader/un0;->e(Landroid/os/Looper;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/wh1;Z)Lcom/shabakaty/downloader/p01;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/os/Looper;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/u01$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/un0;->p:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/un0;->k(Landroid/os/Looper;)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/un0$e;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/un0$e;-><init>(Lcom/shabakaty/downloader/un0;Lcom/shabakaty/downloader/s01$a;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/un0;->u:Landroid/os/Handler;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/or;

    invoke-direct {v0, p1, p3}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/un0$e;Lcom/shabakaty/downloader/wh1;)V

    .line 7
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/wh1;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wh1;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shabakaty/downloader/g71;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->q:Lcom/shabakaty/downloader/h71;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/h71;->b()Ljava/lang/Class;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-static {p1}, Lcom/shabakaty/downloader/nt2;->i(Ljava/lang/String;)I

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/un0;->g:[I

    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    .line 7
    :goto_0
    array-length v3, v1

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 8
    aget v3, v1, v2

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-eq v2, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/un0;->w:[B

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/un0;->b:Ljava/util/UUID;

    invoke-static {v1, p1, v3}, Lcom/shabakaty/downloader/un0;->j(Lcom/shabakaty/downloader/o01;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget p1, v1, Lcom/shabakaty/downloader/o01;->u:I

    if-ne p1, v3, :cond_9

    .line 13
    iget-object p1, v1, Lcom/shabakaty/downloader/o01;->r:[Lcom/shabakaty/downloader/o01$b;

    aget-object p1, p1, v2

    .line 14
    sget-object v4, Lcom/shabakaty/downloader/jp;->b:Ljava/util/UUID;

    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/o01$b;->b(Ljava/util/UUID;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/un0;->b:Ljava/util/UUID;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x48

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DefaultDrmSessionMgr"

    .line 16
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_5
    iget-object p1, v1, Lcom/shabakaty/downloader/o01;->t:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v1, "cenc"

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "cbcs"

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x19

    if-lt p1, v1, :cond_9

    goto :goto_3

    :cond_7
    const-string v1, "cbc1"

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "cens"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v2, 0x1

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    goto :goto_5

    .line 22
    :cond_a
    const-class v0, Lcom/shabakaty/downloader/ow4;

    :goto_5
    return-object v0
.end method

.method public final e(Landroid/os/Looper;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/wh1;Z)Lcom/shabakaty/downloader/p01;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->x:Lcom/shabakaty/downloader/un0$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/un0$c;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/un0$c;-><init>(Lcom/shabakaty/downloader/un0;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/un0;->x:Lcom/shabakaty/downloader/un0$c;

    .line 3
    :cond_0
    iget-object p1, p3, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_7

    .line 4
    iget-object p1, p3, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/nt2;->i(Ljava/lang/String;)I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/un0;->q:Lcom/shabakaty/downloader/h71;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class p3, Lcom/shabakaty/downloader/tl1;

    .line 9
    invoke-interface {p2}, Lcom/shabakaty/downloader/h71;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    sget-boolean p3, Lcom/shabakaty/downloader/tl1;->u:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_6

    .line 10
    iget-object p3, p0, Lcom/shabakaty/downloader/un0;->g:[I

    .line 11
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    .line 12
    :goto_1
    array-length v3, p3

    const/4 v4, -0x1

    if-ge v1, v3, :cond_3

    .line 13
    aget v3, p3, v1

    if-ne v3, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    :goto_2
    if-eq v1, v4, :cond_6

    .line 14
    const-class p1, Lcom/shabakaty/downloader/ow4;

    .line 15
    invoke-interface {p2}, Lcom/shabakaty/downloader/h71;->b()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/un0;->r:Lcom/shabakaty/downloader/tn0;

    if-nez p1, :cond_5

    .line 17
    sget-object p1, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 18
    sget-object p1, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    .line 19
    invoke-virtual {p0, p1, v2, v0, p4}, Lcom/shabakaty/downloader/un0;->i(Ljava/util/List;ZLcom/shabakaty/downloader/s01$a;Z)Lcom/shabakaty/downloader/tn0;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/shabakaty/downloader/un0;->m:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iput-object p1, p0, Lcom/shabakaty/downloader/un0;->r:Lcom/shabakaty/downloader/tn0;

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/tn0;->d(Lcom/shabakaty/downloader/s01$a;)V

    .line 23
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->r:Lcom/shabakaty/downloader/tn0;

    :cond_6
    :goto_4
    return-object v0

    .line 24
    :cond_7
    iget-object p3, p0, Lcom/shabakaty/downloader/un0;->w:[B

    if-nez p3, :cond_9

    .line 25
    iget-object p3, p0, Lcom/shabakaty/downloader/un0;->b:Ljava/util/UUID;

    invoke-static {p1, p3, v1}, Lcom/shabakaty/downloader/un0;->j(Lcom/shabakaty/downloader/o01;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p1

    .line 26
    move-object p3, p1

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 27
    new-instance p1, Lcom/shabakaty/downloader/un0$d;

    iget-object p3, p0, Lcom/shabakaty/downloader/un0;->b:Ljava/util/UUID;

    invoke-direct {p1, p3, v0}, Lcom/shabakaty/downloader/un0$d;-><init>(Ljava/util/UUID;Lcom/shabakaty/downloader/un0$a;)V

    const-string p3, "DefaultDrmSessionMgr"

    const-string p4, "DRM error"

    .line 28
    invoke-static {p3, p4, p1}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_8

    .line 29
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/s01$a;->e(Ljava/lang/Exception;)V

    .line 30
    :cond_8
    new-instance p2, Lcom/shabakaty/downloader/b51;

    new-instance p3, Lcom/shabakaty/downloader/p01$a;

    const/16 p4, 0x1773

    invoke-direct {p3, p1, p4}, Lcom/shabakaty/downloader/p01$a;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/b51;-><init>(Lcom/shabakaty/downloader/p01$a;)V

    return-object p2

    :cond_9
    move-object p1, v0

    .line 31
    :cond_a
    iget-boolean p3, p0, Lcom/shabakaty/downloader/un0;->f:Z

    if-nez p3, :cond_b

    .line 32
    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->s:Lcom/shabakaty/downloader/tn0;

    goto :goto_5

    .line 33
    :cond_b
    iget-object p3, p0, Lcom/shabakaty/downloader/un0;->m:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/tn0;

    .line 34
    iget-object v3, v2, Lcom/shabakaty/downloader/tn0;->a:Ljava/util/List;

    invoke-static {v3, p1}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v0, v2

    :cond_d
    :goto_5
    if-nez v0, :cond_f

    .line 35
    invoke-virtual {p0, p1, v1, p2, p4}, Lcom/shabakaty/downloader/un0;->i(Ljava/util/List;ZLcom/shabakaty/downloader/s01$a;Z)Lcom/shabakaty/downloader/tn0;

    move-result-object v0

    .line 36
    iget-boolean p1, p0, Lcom/shabakaty/downloader/un0;->f:Z

    if-nez p1, :cond_e

    .line 37
    iput-object v0, p0, Lcom/shabakaty/downloader/un0;->s:Lcom/shabakaty/downloader/tn0;

    .line 38
    :cond_e
    iget-object p1, p0, Lcom/shabakaty/downloader/un0;->m:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 39
    :cond_f
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/tn0;->d(Lcom/shabakaty/downloader/s01$a;)V

    :goto_6
    return-object v0
.end method

.method public final g()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/un0;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/un0;->p:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->q:Lcom/shabakaty/downloader/h71;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->c:Lcom/shabakaty/downloader/h71$c;

    iget-object v2, p0, Lcom/shabakaty/downloader/un0;->b:Ljava/util/UUID;

    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/h71$c;->a(Ljava/util/UUID;)Lcom/shabakaty/downloader/h71;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/un0;->q:Lcom/shabakaty/downloader/h71;

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/un0$b;

    invoke-direct {v2, p0, v1}, Lcom/shabakaty/downloader/un0$b;-><init>(Lcom/shabakaty/downloader/un0;Lcom/shabakaty/downloader/un0$a;)V

    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/h71;->j(Lcom/shabakaty/downloader/h71$b;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-wide v2, p0, Lcom/shabakaty/downloader/un0;->l:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/un0;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/un0;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/tn0;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/tn0;->d(Lcom/shabakaty/downloader/s01$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final h(Ljava/util/List;ZLcom/shabakaty/downloader/s01$a;)Lcom/shabakaty/downloader/tn0;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o01$b;",
            ">;Z",
            "Lcom/shabakaty/downloader/s01$a;",
            ")",
            "Lcom/shabakaty/downloader/tn0;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/un0;->q:Lcom/shabakaty/downloader/h71;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v1, v0, Lcom/shabakaty/downloader/un0;->h:Z

    or-int v9, v1, p2

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/tn0;

    iget-object v3, v0, Lcom/shabakaty/downloader/un0;->b:Ljava/util/UUID;

    iget-object v4, v0, Lcom/shabakaty/downloader/un0;->q:Lcom/shabakaty/downloader/h71;

    iget-object v5, v0, Lcom/shabakaty/downloader/un0;->i:Lcom/shabakaty/downloader/un0$f;

    iget-object v6, v0, Lcom/shabakaty/downloader/un0;->k:Lcom/shabakaty/downloader/un0$g;

    iget v8, v0, Lcom/shabakaty/downloader/un0;->v:I

    iget-object v11, v0, Lcom/shabakaty/downloader/un0;->w:[B

    iget-object v12, v0, Lcom/shabakaty/downloader/un0;->e:Ljava/util/HashMap;

    iget-object v13, v0, Lcom/shabakaty/downloader/un0;->d:Lcom/shabakaty/downloader/ap2;

    iget-object v14, v0, Lcom/shabakaty/downloader/un0;->t:Landroid/os/Looper;

    .line 5
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v15, v0, Lcom/shabakaty/downloader/un0;->j:Lcom/shabakaty/downloader/gj2;

    move-object v2, v1

    move-object/from16 v7, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v15}, Lcom/shabakaty/downloader/tn0;-><init>(Ljava/util/UUID;Lcom/shabakaty/downloader/h71;Lcom/shabakaty/downloader/tn0$a;Lcom/shabakaty/downloader/tn0$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/shabakaty/downloader/ap2;Landroid/os/Looper;Lcom/shabakaty/downloader/gj2;)V

    move-object/from16 v2, p3

    .line 7
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/tn0;->d(Lcom/shabakaty/downloader/s01$a;)V

    .line 8
    iget-wide v2, v0, Lcom/shabakaty/downloader/un0;->l:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/tn0;->d(Lcom/shabakaty/downloader/s01$a;)V

    :cond_0
    return-object v1
.end method

.method public final i(Ljava/util/List;ZLcom/shabakaty/downloader/s01$a;Z)Lcom/shabakaty/downloader/tn0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o01$b;",
            ">;Z",
            "Lcom/shabakaty/downloader/s01$a;",
            "Z)",
            "Lcom/shabakaty/downloader/tn0;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/un0;->h(Ljava/util/List;ZLcom/shabakaty/downloader/s01$a;)Lcom/shabakaty/downloader/tn0;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/un0;->f(Lcom/shabakaty/downloader/p01;)Z

    move-result v1

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/un0;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/un0;->m()V

    .line 4
    invoke-virtual {v0, p3}, Lcom/shabakaty/downloader/tn0;->b(Lcom/shabakaty/downloader/s01$a;)V

    .line 5
    iget-wide v5, p0, Lcom/shabakaty/downloader/un0;->l:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/tn0;->b(Lcom/shabakaty/downloader/s01$a;)V

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/un0;->h(Ljava/util/List;ZLcom/shabakaty/downloader/s01$a;)Lcom/shabakaty/downloader/tn0;

    move-result-object v0

    .line 8
    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/un0;->f(Lcom/shabakaty/downloader/p01;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/shabakaty/downloader/un0;->n:Ljava/util/Set;

    .line 9
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/un0;->n()V

    .line 11
    iget-object p4, p0, Lcom/shabakaty/downloader/un0;->o:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/un0;->m()V

    .line 13
    :cond_2
    invoke-virtual {v0, p3}, Lcom/shabakaty/downloader/tn0;->b(Lcom/shabakaty/downloader/s01$a;)V

    .line 14
    iget-wide v5, p0, Lcom/shabakaty/downloader/un0;->l:J

    cmp-long p4, v5, v3

    if-eqz p4, :cond_3

    .line 15
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/tn0;->b(Lcom/shabakaty/downloader/s01$a;)V

    .line 16
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/un0;->h(Ljava/util/List;ZLcom/shabakaty/downloader/s01$a;)Lcom/shabakaty/downloader/tn0;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final declared-synchronized k(Landroid/os/Looper;)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.playbackLooper",
            "this.playbackHandler"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->t:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/un0;->t:Landroid/os/Looper;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/un0;->u:Landroid/os/Handler;

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/un0;->u:Landroid/os/Handler;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->q:Lcom/shabakaty/downloader/h71;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shabakaty/downloader/un0;->p:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->m:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->n:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->q:Lcom/shabakaty/downloader/h71;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/h71;->a()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/un0;->q:Lcom/shabakaty/downloader/h71;

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->o:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/t;->u(Ljava/util/Collection;)Lcom/google/common/collect/t;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/n;->p()Lcom/shabakaty/downloader/uv4;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/p01;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/p01;->b(Lcom/shabakaty/downloader/s01$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un0;->n:Ljava/util/Set;

    .line 2
    invoke-static {v0}, Lcom/google/common/collect/t;->u(Ljava/util/Collection;)Lcom/google/common/collect/t;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/n;->p()Lcom/shabakaty/downloader/uv4;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/un0$e;

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/un0$e;->u:Lcom/shabakaty/downloader/un0;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/un0;->u:Landroid/os/Handler;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/rr;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/un0$e;)V

    .line 8
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->L(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
