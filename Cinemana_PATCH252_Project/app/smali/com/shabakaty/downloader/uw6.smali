.class public final Lcom/shabakaty/downloader/uw6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/pi6;


# static fields
.field public static volatile C:Lcom/shabakaty/downloader/uw6;


# instance fields
.field public final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/qg5;",
            ">;"
        }
    .end annotation
.end field

.field public final B:Lcom/shabakaty/downloader/xy6;

.field public final a:Lcom/shabakaty/downloader/wc6;

.field public final b:Lcom/shabakaty/downloader/e86;

.field public c:Lcom/shabakaty/downloader/mh5;

.field public d:Lcom/shabakaty/downloader/n86;

.field public e:Lcom/shabakaty/downloader/ov6;

.field public f:Lcom/shabakaty/downloader/qg7;

.field public final g:Lcom/shabakaty/downloader/ny6;

.field public h:Lcom/shabakaty/downloader/dp6;

.field public i:Lcom/shabakaty/downloader/bt6;

.field public final j:Lcom/shabakaty/downloader/xv6;

.field public k:Lcom/shabakaty/downloader/cb6;

.field public final l:Lcom/google/android/gms/measurement/internal/d;

.field public m:Z

.field public n:Z

.field public o:J

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/nio/channels/FileLock;

.field public w:Ljava/nio/channels/FileChannel;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public z:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xw6;Lcom/google/android/gms/measurement/internal/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/shabakaty/downloader/uw6;->m:Z

    new-instance p2, Lcom/shabakaty/downloader/gw6;

    const/4 v0, 0x1

    .line 1
    invoke-direct {p2, p0, v0}, Lcom/shabakaty/downloader/gw6;-><init>(Lcom/shabakaty/downloader/uw6;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/uw6;->B:Lcom/shabakaty/downloader/xy6;

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/xw6;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/d;->v(Landroid/content/Context;Lcom/shabakaty/downloader/ow5;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/d;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/shabakaty/downloader/uw6;->z:J

    new-instance p2, Lcom/shabakaty/downloader/xv6;

    .line 4
    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/xv6;-><init>(Lcom/shabakaty/downloader/uw6;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/uw6;->j:Lcom/shabakaty/downloader/xv6;

    new-instance p2, Lcom/shabakaty/downloader/ny6;

    .line 5
    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/ny6;-><init>(Lcom/shabakaty/downloader/uw6;)V

    .line 6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/uv6;->g()V

    iput-object p2, p0, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    new-instance p2, Lcom/shabakaty/downloader/e86;

    .line 7
    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/e86;-><init>(Lcom/shabakaty/downloader/uw6;)V

    .line 8
    invoke-virtual {p2}, Lcom/shabakaty/downloader/uv6;->g()V

    iput-object p2, p0, Lcom/shabakaty/downloader/uw6;->b:Lcom/shabakaty/downloader/e86;

    new-instance p2, Lcom/shabakaty/downloader/wc6;

    .line 9
    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/wc6;-><init>(Lcom/shabakaty/downloader/uw6;)V

    .line 10
    invoke-virtual {p2}, Lcom/shabakaty/downloader/uv6;->g()V

    iput-object p2, p0, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    new-instance p2, Ljava/util/HashMap;

    .line 11
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/uw6;->A:Ljava/util/Map;

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/md7;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/uw6;Lcom/shabakaty/downloader/xw6;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uv6;->c:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-static {v2, v1, p0}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static P(Landroid/content/Context;)Lcom/shabakaty/downloader/uw6;
    .locals 3

    const-string v0, "null reference"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null reference"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/uw6;->C:Lcom/shabakaty/downloader/uw6;

    if-nez v0, :cond_1

    const-class v0, Lcom/shabakaty/downloader/uw6;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/uw6;->C:Lcom/shabakaty/downloader/uw6;

    if-nez v1, :cond_0

    new-instance v1, Lcom/shabakaty/downloader/xw6;

    .line 5
    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/xw6;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p0, Lcom/shabakaty/downloader/uw6;

    const/4 v2, 0x0

    .line 7
    invoke-direct {p0, v1, v2}, Lcom/shabakaty/downloader/uw6;-><init>(Lcom/shabakaty/downloader/xw6;Lcom/google/android/gms/measurement/internal/d;)V

    sput-object p0, Lcom/shabakaty/downloader/uw6;->C:Lcom/shabakaty/downloader/uw6;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/shabakaty/downloader/uw6;->C:Lcom/shabakaty/downloader/uw6;

    return-object p0
.end method

.method public static final v(Lcom/shabakaty/downloader/pd6;ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pd6;->w()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "_err"

    if-ge v2, v3, :cond_1

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ne6;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ne6;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/shabakaty/downloader/ne6;->w()Lcom/shabakaty/downloader/je6;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/je6;->o(Ljava/lang/String;)Lcom/shabakaty/downloader/je6;

    int-to-long v2, p1

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/je6;->n(J)Lcom/shabakaty/downloader/je6;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ne6;

    .line 8
    invoke-static {}, Lcom/shabakaty/downloader/ne6;->w()Lcom/shabakaty/downloader/je6;

    move-result-object v0

    const-string v2, "_ev"

    .line 9
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/je6;->o(Ljava/lang/String;)Lcom/shabakaty/downloader/je6;

    .line 10
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/je6;->q(Ljava/lang/String;)Lcom/shabakaty/downloader/je6;

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ne6;

    .line 12
    iget-boolean v0, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lu6;->i()V

    iput-boolean v1, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 14
    check-cast v0, Lcom/shabakaty/downloader/ud6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ud6;->C(Lcom/shabakaty/downloader/ud6;Lcom/shabakaty/downloader/ne6;)V

    .line 15
    iget-boolean p1, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lu6;->i()V

    iput-boolean v1, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_3
    iget-object p0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 17
    check-cast p0, Lcom/shabakaty/downloader/ud6;

    invoke-static {p0, p2}, Lcom/shabakaty/downloader/ud6;->C(Lcom/shabakaty/downloader/ud6;Lcom/shabakaty/downloader/ne6;)V

    return-void
.end method

.method public static final w(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pd6;->w()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ne6;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ne6;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/pd6;->r(I)Lcom/shabakaty/downloader/pd6;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    iget-boolean v0, p0, Lcom/shabakaty/downloader/uw6;->s:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/shabakaty/downloader/uw6;->t:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/shabakaty/downloader/uw6;->u:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v1, "Stopping uploading service(s)"

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->p:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->p:Ljava/util/List;

    const-string v1, "null reference"

    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 11
    iget-boolean v1, p0, Lcom/shabakaty/downloader/uw6;->s:Z

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/shabakaty/downloader/uw6;->t:Z

    .line 13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/shabakaty/downloader/uw6;->u:Z

    .line 14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 15
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Lcom/shabakaty/downloader/jf6;JZ)V
    .locals 10

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string v1, "_lte"

    goto :goto_0

    :cond_0
    const-string v1, "_se"

    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 1
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/jf6;->X()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/shabakaty/downloader/mh5;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/uy6;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v9, Lcom/shabakaty/downloader/uy6;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/jf6;->X()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/mn0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/uy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    new-instance v9, Lcom/shabakaty/downloader/uy6;

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/jf6;->X()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/mn0;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 13
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/uy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 14
    :goto_2
    invoke-static {}, Lcom/shabakaty/downloader/th6;->v()Lcom/shabakaty/downloader/mh6;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mh6;->n(Ljava/lang/String;)Lcom/shabakaty/downloader/mh6;

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/mn0;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 18
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/mh6;->o(J)Lcom/shabakaty/downloader/mh6;

    iget-object v3, v9, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/mh6;->m(J)Lcom/shabakaty/downloader/mh6;

    .line 20
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/th6;

    .line 21
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/ny6;->w(Lcom/shabakaty/downloader/jf6;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-ltz v1, :cond_4

    .line 22
    iget-boolean v4, p1, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v4, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lu6;->i()V

    iput-boolean v3, p1, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_3
    iget-object p1, p1, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 24
    check-cast p1, Lcom/shabakaty/downloader/nf6;

    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/nf6;->x0(Lcom/shabakaty/downloader/nf6;ILcom/shabakaty/downloader/th6;)V

    goto :goto_3

    .line 25
    :cond_4
    iget-boolean v1, p1, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lu6;->i()V

    iput-boolean v3, p1, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_5
    iget-object p1, p1, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 27
    check-cast p1, Lcom/shabakaty/downloader/nf6;

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/nf6;->y0(Lcom/shabakaty/downloader/nf6;Lcom/shabakaty/downloader/th6;)V

    :goto_3
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_7

    .line 28
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 29
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 30
    invoke-virtual {p1, v9}, Lcom/shabakaty/downloader/mh5;->u(Lcom/shabakaty/downloader/uy6;)Z

    if-eq v0, p4, :cond_6

    const-string p1, "lifetime"

    goto :goto_4

    :cond_6
    const-string p1, "session-scoped"

    .line 31
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 32
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 33
    iget-object p3, v9, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 34
    invoke-virtual {p2, p4, p1, p3}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final C(Lcom/shabakaty/downloader/pd6;Lcom/shabakaty/downloader/pd6;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ud6;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ne6;->N()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ne6;->v()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ne6;->v()J

    move-result-wide v2

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ud6;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ne6;->v()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ne6;->v()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/shabakaty/downloader/ny6;->i(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 9
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const-wide/16 v0, 0x1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/shabakaty/downloader/ny6;->i(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final D()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->d()V

    iget-wide v2, v1, Lcom/shabakaty/downloader/uw6;->o:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const-wide/32 v2, 0x36ee80

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 5
    iget-wide v8, v1, Lcom/shabakaty/downloader/uw6;->o:J

    sub-long/2addr v6, v8

    .line 6
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 10
    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->O()Lcom/shabakaty/downloader/n86;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/n86;->a()V

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->e:Lcom/shabakaty/downloader/ov6;

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ov6;->i()V

    return-void

    :cond_0
    iput-wide v4, v1, Lcom/shabakaty/downloader/uw6;->o:J

    :cond_1
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->G()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_f

    .line 15
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    .line 18
    sget-object v0, Lcom/shabakaty/downloader/d46;->A:Lcom/shabakaty/downloader/z36;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 19
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const-string v9, "select count(1) > 0 from raw_events where realtime = 1"

    .line 20
    invoke-virtual {v0, v9, v6}, Lcom/shabakaty/downloader/mh5;->y(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v0, v9, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    .line 21
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 22
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const-string v9, "select count(1) > 0 from queue where has_realtime = 1"

    .line 23
    invoke-virtual {v0, v9, v6}, Lcom/shabakaty/downloader/mh5;->y(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v0, v9, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_8

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v9

    const-string v10, "debug.firebase.analytics.app"

    const-string v13, ""

    .line 25
    invoke-virtual {v9, v10, v13}, Lcom/shabakaty/downloader/hg5;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, ".none."

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    sget-object v9, Lcom/shabakaty/downloader/d46;->v:Lcom/shabakaty/downloader/z36;

    .line 28
    invoke-virtual {v9, v6}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_4

    .line 29
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    sget-object v9, Lcom/shabakaty/downloader/d46;->u:Lcom/shabakaty/downloader/z36;

    .line 30
    invoke-virtual {v9, v6}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_4

    .line 31
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    sget-object v9, Lcom/shabakaty/downloader/d46;->t:Lcom/shabakaty/downloader/z36;

    .line 32
    invoke-virtual {v9, v6}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 33
    :goto_4
    iget-object v13, v1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 34
    iget-object v13, v13, Lcom/shabakaty/downloader/bt6;->i:Lcom/shabakaty/downloader/f96;

    invoke-virtual {v13}, Lcom/shabakaty/downloader/f96;->a()J

    move-result-wide v13

    iget-object v15, v1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 35
    iget-object v15, v15, Lcom/shabakaty/downloader/bt6;->j:Lcom/shabakaty/downloader/f96;

    invoke-virtual {v15}, Lcom/shabakaty/downloader/f96;->a()J

    move-result-wide v15

    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 36
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const-string v12, "select max(bundle_end_timestamp) from queue"

    .line 37
    invoke-virtual {v11, v12, v6, v4, v5}, Lcom/shabakaty/downloader/mh5;->z(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v11

    .line 38
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 39
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const-string v5, "select max(timestamp) from raw_events"

    move-wide/from16 v17, v9

    const-wide/16 v9, 0x0

    .line 40
    invoke-virtual {v4, v5, v6, v9, v10}, Lcom/shabakaty/downloader/mh5;->z(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v4

    .line 41
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v11, v4, v9

    if-nez v11, :cond_9

    goto/16 :goto_7

    :cond_9
    sub-long/2addr v4, v2

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v4, v2, v4

    sub-long/2addr v13, v2

    .line 43
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long/2addr v15, v2

    .line 44
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    sub-long v11, v2, v11

    sub-long/2addr v2, v9

    .line 45
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v7, v4

    if-eqz v0, :cond_a

    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-lez v0, :cond_a

    .line 46
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long v7, v7, v17

    :cond_a
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 47
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    move-wide/from16 v9, v17

    .line 48
    invoke-virtual {v0, v2, v3, v9, v10}, Lcom/shabakaty/downloader/ny6;->M(JJ)Z

    move-result v0

    if-nez v0, :cond_b

    add-long/2addr v2, v9

    goto :goto_5

    :cond_b
    move-wide v2, v7

    :goto_5
    const-wide/16 v7, 0x0

    cmp-long v0, v11, v7

    if-eqz v0, :cond_d

    cmp-long v0, v11, v4

    if-ltz v0, :cond_d

    const/4 v0, 0x0

    .line 49
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    const/16 v4, 0x14

    sget-object v5, Lcom/shabakaty/downloader/d46;->C:Lcom/shabakaty/downloader/z36;

    .line 50
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    sget-object v4, Lcom/shabakaty/downloader/d46;->B:Lcom/shabakaty/downloader/z36;

    .line 52
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v0

    mul-long v4, v4, v7

    add-long/2addr v2, v4

    cmp-long v4, v2, v11

    if-gtz v4, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    const-wide/16 v2, 0x0

    :cond_d
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    .line 53
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->b:Lcom/shabakaty/downloader/e86;

    .line 54
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 55
    invoke-virtual {v0}, Lcom/shabakaty/downloader/e86;->j()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 56
    iget-object v0, v0, Lcom/shabakaty/downloader/bt6;->h:Lcom/shabakaty/downloader/f96;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f96;->a()J

    move-result-wide v4

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    sget-object v0, Lcom/shabakaty/downloader/d46;->r:Lcom/shabakaty/downloader/z36;

    .line 58
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 59
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 60
    invoke-virtual {v0, v4, v5, v7, v8}, Lcom/shabakaty/downloader/ny6;->M(JJ)Z

    move-result v0

    if-nez v0, :cond_e

    add-long/2addr v4, v7

    .line 61
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 62
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->O()Lcom/shabakaty/downloader/n86;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/n86;->a()V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_f

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    sget-object v0, Lcom/shabakaty/downloader/d46;->w:Lcom/shabakaty/downloader/z36;

    .line 66
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 67
    iget-object v0, v0, Lcom/shabakaty/downloader/bt6;->i:Lcom/shabakaty/downloader/f96;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/mn0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 69
    invoke-virtual {v0, v4, v5}, Lcom/shabakaty/downloader/f96;->b(J)V

    .line 70
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 71
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Upload scheduled in approximately ms"

    invoke-virtual {v0, v5, v4}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->e:Lcom/shabakaty/downloader/ov6;

    .line 73
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 74
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uv6;->f()V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 75
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 76
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 77
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/f;->W(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 78
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v5

    .line 79
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v7, "Receiver not registered/enabled"

    .line 80
    invoke-virtual {v5, v7}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 81
    :cond_10
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/f;->X(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 82
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 83
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v5, "Service not registered/enabled"

    .line 84
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 85
    :cond_11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ov6;->i()V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 86
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 87
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "Scheduling upload, millis"

    invoke-virtual {v4, v7, v5}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 89
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 90
    check-cast v4, Lcom/shabakaty/downloader/mn0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v9, v4, v2

    .line 92
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 93
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v4, Lcom/shabakaty/downloader/d46;->x:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v11, v2, v4

    if-gez v11, :cond_13

    .line 95
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ov6;->o()Lcom/shabakaty/downloader/li5;

    move-result-object v4

    .line 96
    iget-wide v4, v4, Lcom/shabakaty/downloader/li5;->c:J

    cmp-long v11, v4, v7

    if-eqz v11, :cond_12

    const/4 v4, 0x1

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_13

    .line 97
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ov6;->o()Lcom/shabakaty/downloader/li5;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/shabakaty/downloader/li5;->c(J)V

    :cond_13
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 98
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_18

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 99
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 100
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 101
    invoke-direct {v5, v4, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ov6;->j()I

    move-result v0

    .line 103
    new-instance v6, Landroid/os/PersistableBundle;

    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    const-string v7, "action"

    const-string v8, "com.google.android.gms.measurement.UPLOAD"

    .line 104
    invoke-virtual {v6, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v7, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v7, v0, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 106
    invoke-virtual {v7, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    add-long/2addr v2, v2

    .line 107
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v6}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 110
    sget-object v0, Lcom/shabakaty/downloader/or5;->a:Ljava/lang/reflect/Method;

    const-string v0, "jobscheduler"

    .line 111
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/job/JobScheduler;

    .line 112
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/shabakaty/downloader/or5;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    .line 114
    invoke-virtual {v4, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_c

    .line 115
    :cond_14
    sget-object v0, Lcom/shabakaty/downloader/or5;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    :try_start_0
    const-class v4, Landroid/os/UserHandle;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 116
    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    :goto_9
    const/4 v4, 0x6

    const-string v5, "JobSchedulerCompat"

    .line 118
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "myUserId invocation illegal"

    .line 119
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v7, 0x0

    :goto_a
    const-string v0, "com.google.android.gms"

    const-string v4, "UploadAlarm"

    .line 120
    sget-object v5, Lcom/shabakaty/downloader/or5;->a:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_16

    const/4 v6, 0x4

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    const/4 v8, 0x1

    aput-object v0, v6, v8

    const/4 v0, 0x2

    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 122
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    :goto_b
    const-string v5, "error calling scheduleAsPackage"

    .line 123
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_16
    invoke-virtual {v3, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_d

    .line 125
    :cond_17
    :goto_c
    invoke-virtual {v3, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_d

    .line 126
    :cond_18
    iget-object v7, v0, Lcom/shabakaty/downloader/ov6;->d:Landroid/app/AlarmManager;

    if-eqz v7, :cond_19

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 127
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x2

    sget-object v4, Lcom/shabakaty/downloader/d46;->s:Lcom/shabakaty/downloader/z36;

    .line 128
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 129
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 130
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ov6;->n()Landroid/app/PendingIntent;

    move-result-object v13

    .line 131
    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_19
    :goto_d
    return-void

    .line 132
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 133
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "No network"

    .line 134
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->O()Lcom/shabakaty/downloader/n86;

    move-result-object v0

    .line 136
    iget-object v2, v0, Lcom/shabakaty/downloader/n86;->a:Lcom/shabakaty/downloader/uw6;

    .line 137
    invoke-virtual {v2}, Lcom/shabakaty/downloader/uw6;->d()V

    iget-object v2, v0, Lcom/shabakaty/downloader/n86;->a:Lcom/shabakaty/downloader/uw6;

    .line 138
    invoke-virtual {v2}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/shabakaty/downloader/de6;->e()V

    iget-boolean v2, v0, Lcom/shabakaty/downloader/n86;->b:Z

    if-eqz v2, :cond_1b

    goto :goto_e

    :cond_1b
    iget-object v2, v0, Lcom/shabakaty/downloader/n86;->a:Lcom/shabakaty/downloader/uw6;

    .line 140
    iget-object v2, v2, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 141
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 142
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 143
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/shabakaty/downloader/n86;->a:Lcom/shabakaty/downloader/uw6;

    .line 145
    iget-object v2, v2, Lcom/shabakaty/downloader/uw6;->b:Lcom/shabakaty/downloader/e86;

    .line 146
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 147
    invoke-virtual {v2}, Lcom/shabakaty/downloader/e86;->j()Z

    move-result v2

    iput-boolean v2, v0, Lcom/shabakaty/downloader/n86;->c:Z

    iget-object v2, v0, Lcom/shabakaty/downloader/n86;->a:Lcom/shabakaty/downloader/uw6;

    .line 148
    invoke-virtual {v2}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 149
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 150
    iget-boolean v3, v0, Lcom/shabakaty/downloader/n86;->c:Z

    .line 151
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v2, v4, v3}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/shabakaty/downloader/n86;->b:Z

    .line 152
    :goto_e
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->e:Lcom/shabakaty/downloader/ov6;

    .line 153
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 154
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ov6;->i()V

    return-void

    .line 155
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 156
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "Next upload time is 0"

    .line 157
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->O()Lcom/shabakaty/downloader/n86;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/n86;->a()V

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->e:Lcom/shabakaty/downloader/ov6;

    .line 159
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 160
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ov6;->i()V

    return-void

    .line 161
    :cond_1d
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 162
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "Nothing to upload or uploading impossible"

    .line 163
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->O()Lcom/shabakaty/downloader/n86;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/n86;->a()V

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->e:Lcom/shabakaty/downloader/ov6;

    .line 165
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 166
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ov6;->i()V

    return-void
.end method

.method public final E(Lcom/shabakaty/downloader/ma7;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/n97;->c()Z

    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    sget-object v2, Lcom/shabakaty/downloader/d46;->d0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->L:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    .line 5
    :cond_2
    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public final F(Ljava/lang/String;J)Z
    .locals 48

    move-object/from16 v1, p0

    const-string v2, "_si"

    const-string v3, "_sc"

    const-string v4, "_sn"

    const-string v5, "_npa"

    const-string v6, "_ai"

    iget-object v7, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 1
    invoke-static {v7}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 2
    invoke-virtual {v7}, Lcom/shabakaty/downloader/mh5;->Q()V

    :try_start_0
    new-instance v7, Lcom/shabakaty/downloader/sw6;

    .line 3
    invoke-direct {v7, v1}, Lcom/shabakaty/downloader/sw6;-><init>(Lcom/shabakaty/downloader/uw6;)V

    iget-object v8, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 4
    invoke-static {v8}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const/4 v9, 0x0

    iget-wide v12, v1, Lcom/shabakaty/downloader/uw6;->z:J

    move-wide/from16 v10, p2

    move-object v14, v7

    .line 5
    invoke-virtual/range {v8 .. v14}, Lcom/shabakaty/downloader/mh5;->v(Ljava/lang/String;JJLcom/shabakaty/downloader/sw6;)V

    iget-object v8, v7, Lcom/shabakaty/downloader/sw6;->c:Ljava/util/List;

    if-eqz v8, :cond_66

    .line 6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_3b

    .line 7
    :cond_0
    iget-object v8, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 8
    invoke-virtual {v8}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/jf6;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/jf6;->r0()Lcom/shabakaty/downloader/jf6;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v10

    iget-object v11, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/shabakaty/downloader/d46;->U:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v10, v11, v12}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v10

    const/4 v9, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    iget-object v11, v7, Lcom/shabakaty/downloader/sw6;->c:Ljava/util/List;

    .line 10
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "_fr"

    const-string v13, "_et"

    move-object/from16 v22, v5

    const-string v5, "_e"

    move/from16 v23, v10

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    if-ge v15, v11, :cond_32

    :try_start_1
    iget-object v3, v7, Lcom/shabakaty/downloader/sw6;->c:Ljava/util/List;

    .line 11
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/pd6;

    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 12
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v10, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 13
    invoke-virtual {v10}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v10, v2}, Lcom/shabakaty/downloader/wc6;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, "_err"

    if-eqz v2, :cond_3

    .line 14
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v5, "Dropping blocked raw event. appId"

    iget-object v11, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 16
    invoke-virtual {v11}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 17
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v12

    .line 18
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 19
    invoke-virtual {v2, v5, v11, v12}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 20
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v5, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 21
    invoke-virtual {v5}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/wc6;->p(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 22
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v5, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 23
    invoke-virtual {v5}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/wc6;->s(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v26

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->B:Lcom/shabakaty/downloader/xy6;

    iget-object v5, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 26
    invoke-virtual {v5}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0xb

    const-string v30, "_ev"

    .line 27
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v27, v2

    .line 28
    invoke-virtual/range {v26 .. v32}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_1
    move-object/from16 v31, v6

    move-object v6, v8

    move v13, v14

    move v8, v15

    move-object/from16 v14, v25

    move/from16 v47, v9

    move-object v9, v4

    move-object/from16 v4, v24

    move/from16 v24, v47

    goto/16 :goto_1c

    .line 29
    :cond_3
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v6}, Lcom/shabakaty/downloader/yi6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 31
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/pd6;->s(Ljava/lang/String;)Lcom/shabakaty/downloader/pd6;

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->q()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v11, "Renaming ad_impression to _ai"

    invoke-virtual {v2, v11}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->w()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x5

    .line 34
    invoke-static {v2, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 35
    :goto_2
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->m()I

    move-result v11

    if-ge v2, v11, :cond_5

    const-string v11, "ad_platform"

    .line 36
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/pd6;->u(I)Lcom/shabakaty/downloader/ne6;

    move-result-object v30

    move-object/from16 v31, v6

    invoke-virtual/range {v30 .. v30}, Lcom/shabakaty/downloader/ne6;->y()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 37
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/pd6;->u(I)Lcom/shabakaty/downloader/ne6;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shabakaty/downloader/ne6;->z()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "admob"

    .line 38
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/pd6;->u(I)Lcom/shabakaty/downloader/ne6;

    move-result-object v11

    invoke-virtual {v11}, Lcom/shabakaty/downloader/ne6;->z()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/b;->s()Lcom/shabakaty/downloader/s66;

    move-result-object v6

    const-string v11, "AdMob ad impression logged from app. Potentially duplicative."

    .line 41
    invoke-virtual {v6, v11}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v31

    goto :goto_2

    :cond_5
    move-object/from16 v31, v6

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 42
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v6, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 43
    invoke-virtual {v6}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Lcom/shabakaty/downloader/wc6;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "_c"

    if-nez v2, :cond_a

    :try_start_3
    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 44
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 45
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v11

    .line 46
    invoke-static {v11}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move/from16 v30, v15

    .line 47
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v32, v4

    const v4, 0x171c4

    if-eq v15, v4, :cond_8

    const v4, 0x17331

    if-eq v15, v4, :cond_7

    const v4, 0x17333

    if-eq v15, v4, :cond_6

    goto :goto_3

    :cond_6
    const-string v4, "_ui"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const-string v4, "_ug"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x2

    goto :goto_4

    :cond_8
    const-string v4, "_in"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v4, -0x1

    :goto_4
    if-eqz v4, :cond_b

    const/4 v11, 0x1

    if-eq v4, v11, :cond_b

    const/4 v11, 0x2

    if-eq v4, v11, :cond_b

    move-object/from16 v34, v8

    move v11, v9

    move-object/from16 v33, v13

    move/from16 v28, v14

    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_a
    move-object/from16 v32, v4

    move/from16 v30, v15

    :cond_b
    move/from16 v28, v14

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    .line 48
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->m()I

    move-result v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v33, v13

    const-string v13, "_r"

    if-ge v4, v14, :cond_e

    .line 49
    :try_start_5
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pd6;->u(I)Lcom/shabakaty/downloader/ne6;

    move-result-object v14

    invoke-virtual {v14}, Lcom/shabakaty/downloader/ne6;->y()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 50
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pd6;->u(I)Lcom/shabakaty/downloader/ne6;

    move-result-object v11

    invoke-virtual {v11}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/je6;

    const-wide/16 v13, 0x1

    .line 51
    invoke-virtual {v11, v13, v14}, Lcom/shabakaty/downloader/je6;->n(J)Lcom/shabakaty/downloader/je6;

    .line 52
    invoke-virtual {v11}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/ne6;

    .line 53
    invoke-virtual {v3, v4, v11}, Lcom/shabakaty/downloader/pd6;->t(ILcom/shabakaty/downloader/ne6;)Lcom/shabakaty/downloader/pd6;

    const/4 v11, 0x1

    goto :goto_6

    .line 54
    :cond_c
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pd6;->u(I)Lcom/shabakaty/downloader/ne6;

    move-result-object v14

    invoke-virtual {v14}, Lcom/shabakaty/downloader/ne6;->y()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 55
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pd6;->u(I)Lcom/shabakaty/downloader/ne6;

    move-result-object v13

    invoke-virtual {v13}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/je6;

    const-wide/16 v14, 0x1

    .line 56
    invoke-virtual {v13, v14, v15}, Lcom/shabakaty/downloader/je6;->n(J)Lcom/shabakaty/downloader/je6;

    .line 57
    invoke-virtual {v13}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/ne6;

    .line 58
    invoke-virtual {v3, v4, v13}, Lcom/shabakaty/downloader/pd6;->t(ILcom/shabakaty/downloader/ne6;)Lcom/shabakaty/downloader/pd6;

    const/4 v15, 0x1

    :cond_d
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v13, v33

    goto :goto_5

    :cond_e
    if-nez v11, :cond_f

    if-eqz v2, :cond_f

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/b;->q()Lcom/shabakaty/downloader/s66;

    move-result-object v4

    const-string v11, "Marking event as conversion"

    iget-object v14, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 61
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v14

    move-object/from16 v34, v8

    .line 62
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 63
    invoke-virtual {v4, v11, v8}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lcom/shabakaty/downloader/ne6;->w()Lcom/shabakaty/downloader/je6;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/je6;->o(Ljava/lang/String;)Lcom/shabakaty/downloader/je6;

    move v11, v9

    const-wide/16 v8, 0x1

    .line 66
    invoke-virtual {v4, v8, v9}, Lcom/shabakaty/downloader/je6;->n(J)Lcom/shabakaty/downloader/je6;

    .line 67
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pd6;->q(Lcom/shabakaty/downloader/je6;)Lcom/shabakaty/downloader/pd6;

    goto :goto_7

    :cond_f
    move-object/from16 v34, v8

    move v11, v9

    :goto_7
    if-nez v15, :cond_10

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/b;->q()Lcom/shabakaty/downloader/s66;

    move-result-object v4

    const-string v8, "Marking event as real-time"

    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 70
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v9

    .line 71
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 72
    invoke-virtual {v4, v8, v9}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lcom/shabakaty/downloader/ne6;->w()Lcom/shabakaty/downloader/je6;

    move-result-object v4

    .line 74
    invoke-virtual {v4, v13}, Lcom/shabakaty/downloader/je6;->o(Ljava/lang/String;)Lcom/shabakaty/downloader/je6;

    const-wide/16 v8, 0x1

    .line 75
    invoke-virtual {v4, v8, v9}, Lcom/shabakaty/downloader/je6;->n(J)Lcom/shabakaty/downloader/je6;

    .line 76
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pd6;->q(Lcom/shabakaty/downloader/je6;)Lcom/shabakaty/downloader/pd6;

    :cond_10
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 77
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->x()J

    move-result-wide v36

    iget-object v8, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 79
    invoke-virtual {v8}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x1

    move-object/from16 v35, v4

    .line 80
    invoke-virtual/range {v35 .. v40}, Lcom/shabakaty/downloader/mh5;->G(JLjava/lang/String;ZZ)Lcom/shabakaty/downloader/wg5;

    move-result-object v4

    iget-wide v8, v4, Lcom/shabakaty/downloader/wg5;->e:J

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v4

    iget-object v14, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v14}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/shabakaty/downloader/d46;->o:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v4, v14, v15}, Lcom/shabakaty/downloader/hg5;->o(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)I

    move-result v4

    int-to-long v14, v4

    cmp-long v4, v8, v14

    if-lez v4, :cond_11

    .line 82
    invoke-static {v3, v13}, Lcom/shabakaty/downloader/uw6;->w(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    const/16 v21, 0x1

    .line 83
    :goto_8
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/f;->V(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    if-eqz v2, :cond_18

    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 84
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->x()J

    move-result-wide v36

    iget-object v8, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 86
    invoke-virtual {v8}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x1

    const/16 v40, 0x0

    move-object/from16 v35, v4

    .line 87
    invoke-virtual/range {v35 .. v40}, Lcom/shabakaty/downloader/mh5;->G(JLjava/lang/String;ZZ)Lcom/shabakaty/downloader/wg5;

    move-result-object v4

    iget-wide v8, v4, Lcom/shabakaty/downloader/wg5;->c:J

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v4

    iget-object v13, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v13}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/shabakaty/downloader/d46;->n:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v4, v13, v14}, Lcom/shabakaty/downloader/hg5;->o(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)I

    move-result v4

    int-to-long v13, v4

    cmp-long v4, v8, v13

    if-lez v4, :cond_18

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 90
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v4

    const-string v8, "Too many conversions. Not logging as conversion. appId"

    iget-object v9, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 91
    invoke-virtual {v9}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 92
    invoke-virtual {v4, v8, v9}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, -0x1

    .line 93
    :goto_9
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->m()I

    move-result v14

    if-ge v8, v14, :cond_14

    .line 94
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/pd6;->u(I)Lcom/shabakaty/downloader/ne6;

    move-result-object v14

    .line 95
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ne6;->y()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 96
    invoke-virtual {v14}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/je6;

    move v13, v8

    goto :goto_a

    .line 97
    :cond_12
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ne6;->y()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v9, 0x1

    :cond_13
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_14
    if-eqz v9, :cond_16

    if-eqz v4, :cond_15

    .line 98
    invoke-virtual {v3, v13}, Lcom/shabakaty/downloader/pd6;->r(I)Lcom/shabakaty/downloader/pd6;

    goto :goto_b

    :cond_15
    const/4 v4, 0x0

    :cond_16
    if-eqz v4, :cond_17

    .line 99
    invoke-virtual {v4}, Lcom/shabakaty/downloader/lu6;->j()Lcom/shabakaty/downloader/lu6;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/je6;

    .line 100
    invoke-virtual {v4, v10}, Lcom/shabakaty/downloader/je6;->o(Ljava/lang/String;)Lcom/shabakaty/downloader/je6;

    const-wide/16 v8, 0xa

    .line 101
    invoke-virtual {v4, v8, v9}, Lcom/shabakaty/downloader/je6;->n(J)Lcom/shabakaty/downloader/je6;

    .line 102
    invoke-virtual {v4}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ne6;

    .line 103
    invoke-virtual {v3, v13, v4}, Lcom/shabakaty/downloader/pd6;->t(ILcom/shabakaty/downloader/ne6;)Lcom/shabakaty/downloader/pd6;

    goto :goto_b

    .line 104
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 105
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v4

    const-string v8, "Did not find conversion parameter. appId"

    iget-object v9, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 106
    invoke-virtual {v9}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 107
    invoke-virtual {v4, v8, v9}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_b
    if-eqz v2, :cond_20

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->w()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 110
    :goto_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v13, "currency"

    const-string v14, "value"

    if-ge v4, v10, :cond_1b

    .line 111
    :try_start_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/ne6;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/ne6;->y()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    move v8, v4

    goto :goto_d

    .line 112
    :cond_19
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/ne6;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/ne6;->y()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    move v9, v4

    :cond_1a
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1b
    const/4 v4, -0x1

    if-ne v8, v4, :cond_1c

    goto/16 :goto_11

    .line 113
    :cond_1c
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ne6;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ne6;->N()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ne6;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ne6;->L()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->s()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v4, "Value must be specified with a numeric type."

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/pd6;->r(I)Lcom/shabakaty/downloader/pd6;

    .line 116
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/uw6;->w(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 117
    invoke-static {v3, v2, v14}, Lcom/shabakaty/downloader/uw6;->v(Lcom/shabakaty/downloader/pd6;ILjava/lang/String;)V

    goto :goto_10

    :cond_1d
    const/4 v4, -0x1

    if-ne v9, v4, :cond_1e

    goto :goto_f

    .line 118
    :cond_1e
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ne6;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ne6;->z()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1f

    const/4 v9, 0x0

    .line 120
    :goto_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_21

    .line 121
    invoke-virtual {v2, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 122
    invoke-static {v10}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 123
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_e

    .line 124
    :cond_1f
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->s()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v9, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 126
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/pd6;->r(I)Lcom/shabakaty/downloader/pd6;

    .line 128
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/uw6;->w(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 129
    invoke-static {v3, v2, v13}, Lcom/shabakaty/downloader/uw6;->v(Lcom/shabakaty/downloader/pd6;ILjava/lang/String;)V

    goto :goto_11

    :cond_20
    :goto_10
    const/4 v4, -0x1

    .line 130
    :cond_21
    :goto_11
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_24

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 131
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 132
    invoke-virtual {v3}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ud6;

    invoke-static {v2, v12}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v2

    if-nez v2, :cond_23

    if-eqz v20, :cond_22

    .line 133
    invoke-virtual/range {v20 .. v20}, Lcom/shabakaty/downloader/pd6;->o()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->o()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v2, v12, v8

    if-gtz v2, :cond_22

    .line 134
    invoke-virtual/range {v20 .. v20}, Lcom/shabakaty/downloader/lu6;->j()Lcom/shabakaty/downloader/lu6;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/pd6;

    .line 135
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/uw6;->H(Lcom/shabakaty/downloader/pd6;Lcom/shabakaty/downloader/pd6;)Z

    move-result v6

    if-eqz v6, :cond_22

    move-object/from16 v6, v34

    .line 136
    invoke-virtual {v6, v11, v2}, Lcom/shabakaty/downloader/jf6;->B(ILcom/shabakaty/downloader/pd6;)Lcom/shabakaty/downloader/jf6;

    move/from16 v14, v28

    const/4 v2, 0x0

    const/16 v20, 0x0

    goto :goto_12

    :cond_22
    move-object/from16 v6, v34

    move-object v2, v3

    move/from16 v14, v18

    :goto_12
    move-object/from16 v19, v2

    move v13, v14

    move-object/from16 v4, v24

    move-object/from16 v14, v25

    :goto_13
    move-object/from16 v9, v32

    move-object/from16 v10, v33

    :goto_14
    move/from16 v24, v11

    goto/16 :goto_1a

    :cond_23
    move-object/from16 v6, v34

    move-object/from16 v4, v24

    move-object/from16 v14, v25

    move/from16 v13, v28

    goto :goto_13

    :cond_24
    move-object/from16 v6, v34

    const-string v2, "_vs"

    .line 137
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 138
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 139
    invoke-virtual {v3}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ud6;

    move-object/from16 v10, v33

    invoke-static {v2, v10}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v2

    if-nez v2, :cond_27

    if-eqz v19, :cond_26

    .line 140
    invoke-virtual/range {v19 .. v19}, Lcom/shabakaty/downloader/pd6;->o()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->o()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v2, v12, v8

    if-gtz v2, :cond_26

    .line 141
    invoke-virtual/range {v19 .. v19}, Lcom/shabakaty/downloader/lu6;->j()Lcom/shabakaty/downloader/lu6;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/pd6;

    .line 142
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/uw6;->H(Lcom/shabakaty/downloader/pd6;Lcom/shabakaty/downloader/pd6;)Z

    move-result v8

    if-eqz v8, :cond_25

    move/from16 v13, v28

    .line 143
    invoke-virtual {v6, v13, v2}, Lcom/shabakaty/downloader/jf6;->B(ILcom/shabakaty/downloader/pd6;)Lcom/shabakaty/downloader/jf6;

    move v9, v11

    const/4 v2, 0x0

    const/16 v19, 0x0

    goto :goto_15

    :cond_25
    move/from16 v13, v28

    move-object v2, v3

    move/from16 v9, v18

    :goto_15
    move-object/from16 v20, v2

    goto :goto_16

    :cond_26
    move/from16 v13, v28

    move-object/from16 v20, v3

    move/from16 v9, v18

    :goto_16
    move-object/from16 v4, v24

    move-object/from16 v14, v25

    move/from16 v24, v9

    move-object/from16 v9, v32

    goto/16 :goto_1a

    :cond_27
    move/from16 v13, v28

    goto/16 :goto_19

    :cond_28
    move/from16 v13, v28

    move-object/from16 v10, v33

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v2

    iget-object v8, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 145
    invoke-virtual {v8}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/shabakaty/downloader/d46;->g0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v2, v8, v9}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "_ab"

    .line 146
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 147
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 148
    invoke-virtual {v3}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ud6;

    invoke-static {v2, v10}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v2

    if-nez v2, :cond_2e

    if-eqz v19, :cond_2e

    .line 149
    invoke-virtual/range {v19 .. v19}, Lcom/shabakaty/downloader/pd6;->o()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->o()J

    move-result-wide v14

    sub-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v14, 0xfa0

    cmp-long v2, v8, v14

    if-gtz v2, :cond_2e

    .line 150
    invoke-virtual/range {v19 .. v19}, Lcom/shabakaty/downloader/lu6;->j()Lcom/shabakaty/downloader/lu6;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/pd6;

    .line 151
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/uw6;->C(Lcom/shabakaty/downloader/pd6;Lcom/shabakaty/downloader/pd6;)V

    .line 152
    invoke-virtual {v2}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 153
    invoke-static {v8}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    iget-object v8, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 154
    invoke-static {v8}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 155
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/ud6;

    move-object/from16 v9, v32

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v8

    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 156
    invoke-static {v12}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 157
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/ud6;

    move-object/from16 v14, v25

    invoke-static {v12, v14}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v12

    iget-object v15, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 158
    invoke-static {v15}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 159
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v15

    check-cast v15, Lcom/shabakaty/downloader/ud6;

    move-object/from16 v4, v24

    invoke-static {v15, v4}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v19, ""

    if-eqz v8, :cond_29

    :try_start_7
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ne6;->z()Ljava/lang/String;

    move-result-object v8

    goto :goto_17

    :cond_29
    move-object/from16 v8, v19

    .line 160
    :goto_17
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2a

    move/from16 v24, v11

    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 161
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 162
    invoke-static {v3, v9, v8}, Lcom/shabakaty/downloader/ny6;->i(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_18

    :cond_2a
    move/from16 v24, v11

    :goto_18
    if-eqz v12, :cond_2b

    invoke-virtual {v12}, Lcom/shabakaty/downloader/ne6;->z()Ljava/lang/String;

    move-result-object v19

    :cond_2b
    move-object/from16 v8, v19

    .line 163
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2c

    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 164
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 165
    invoke-static {v3, v14, v8}, Lcom/shabakaty/downloader/ny6;->i(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2c
    if-eqz v15, :cond_2d

    iget-object v8, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 166
    invoke-static {v8}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    invoke-virtual {v15}, Lcom/shabakaty/downloader/ne6;->v()J

    move-result-wide v11

    .line 167
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/shabakaty/downloader/ny6;->i(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :cond_2d
    invoke-virtual {v6, v13, v2}, Lcom/shabakaty/downloader/jf6;->B(ILcom/shabakaty/downloader/pd6;)Lcom/shabakaty/downloader/jf6;

    const/16 v19, 0x0

    goto :goto_1a

    :cond_2e
    :goto_19
    move-object/from16 v4, v24

    move-object/from16 v14, v25

    move-object/from16 v9, v32

    goto/16 :goto_14

    :goto_1a
    if-nez v23, :cond_31

    .line 169
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 170
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pd6;->m()I

    move-result v2

    if-nez v2, :cond_2f

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v5, "Engagement event does not contain any parameters. appId"

    iget-object v8, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 173
    invoke-virtual {v8}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 174
    invoke-virtual {v2, v5, v8}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1b

    .line 175
    :cond_2f
    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 176
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 177
    invoke-virtual {v3}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ud6;

    invoke-static {v2, v10}, Lcom/shabakaty/downloader/ny6;->o(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_30

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v5, "Engagement event does not include duration. appId"

    iget-object v8, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 180
    invoke-virtual {v8}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 181
    invoke-virtual {v2, v5, v8}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1b

    .line 182
    :cond_30
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long v16, v16, v10

    .line 183
    :cond_31
    :goto_1b
    iget-object v2, v7, Lcom/shabakaty/downloader/sw6;->c:Ljava/util/List;

    .line 184
    invoke-virtual {v3}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ud6;

    move/from16 v8, v30

    invoke-interface {v2, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v18, v18, 0x1

    .line 185
    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/jf6;->k0(Lcom/shabakaty/downloader/pd6;)Lcom/shabakaty/downloader/jf6;

    :goto_1c
    add-int/lit8 v15, v8, 0x1

    move-object v2, v4

    move-object v8, v6

    move-object v4, v9

    move-object v3, v14

    move-object/from16 v5, v22

    move/from16 v10, v23

    move/from16 v9, v24

    move-object/from16 v6, v31

    move v14, v13

    goto/16 :goto_0

    :cond_32
    move-object v6, v8

    move-object v10, v13

    if-eqz v23, :cond_36

    move/from16 v3, v18

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v3, :cond_36

    .line 186
    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/jf6;->g0(I)Lcom/shabakaty/downloader/ud6;

    move-result-object v4

    .line 187
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ud6;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    iget-object v8, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 188
    invoke-static {v8}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 189
    invoke-static {v4, v12}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v8

    if-eqz v8, :cond_33

    .line 190
    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/jf6;->y0(I)Lcom/shabakaty/downloader/jf6;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    :cond_33
    iget-object v8, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 191
    invoke-static {v8}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 192
    invoke-static {v4, v10}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ne6;->N()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ne6;->v()J

    move-result-wide v8

    .line 193
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1e

    :cond_34
    const/4 v4, 0x0

    :goto_1e
    if-eqz v4, :cond_35

    .line 194
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v13, 0x0

    cmp-long v11, v8, v13

    if-lez v11, :cond_35

    .line 195
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long v16, v16, v8

    :cond_35
    :goto_1f
    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_1d

    :cond_36
    move-wide/from16 v2, v16

    const/4 v4, 0x0

    .line 196
    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/shabakaty/downloader/uw6;->B(Lcom/shabakaty/downloader/jf6;JZ)V

    .line 197
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->a0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v8, "_se"

    if-eqz v5, :cond_38

    :try_start_8
    const-string v5, "_s"

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ud6;

    .line 198
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ud6;->z()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 199
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 200
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->X()Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-virtual {v4, v5, v8}, Lcom/shabakaty/downloader/mh5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    const-string v4, "_sid"

    .line 202
    invoke-static {v6, v4}, Lcom/shabakaty/downloader/ny6;->w(Lcom/shabakaty/downloader/jf6;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_39

    const/4 v4, 0x1

    .line 203
    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/shabakaty/downloader/uw6;->B(Lcom/shabakaty/downloader/jf6;JZ)V

    goto :goto_20

    .line 204
    :cond_39
    invoke-static {v6, v8}, Lcom/shabakaty/downloader/ny6;->w(Lcom/shabakaty/downloader/jf6;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3a

    .line 205
    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/jf6;->z0(I)Lcom/shabakaty/downloader/jf6;

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v3, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v4, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 208
    invoke-virtual {v4}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 209
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    :cond_3a
    :goto_20
    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 211
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 212
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->q()Lcom/shabakaty/downloader/s66;

    move-result-object v3

    const-string v4, "Checking account type status for ad personalization signals"

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    iget-object v3, v3, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 214
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 215
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->X()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/wc6;->n(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    iget-object v3, v3, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 216
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 217
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->X()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 218
    invoke-virtual {v3}, Lcom/shabakaty/downloader/xf6;->z()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 219
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->q()Lcom/shabakaty/downloader/ti5;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ti5;->r()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 221
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->o()Lcom/shabakaty/downloader/s66;

    move-result-object v3

    const-string v4, "Turning off ad personalization due to account type"

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/shabakaty/downloader/th6;->v()Lcom/shabakaty/downloader/mh6;

    move-result-object v3

    move-object/from16 v4, v22

    .line 224
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/mh6;->n(Ljava/lang/String;)Lcom/shabakaty/downloader/mh6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->q()Lcom/shabakaty/downloader/ti5;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ti5;->o()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/shabakaty/downloader/mh6;->o(J)Lcom/shabakaty/downloader/mh6;

    const-wide/16 v8, 0x1

    .line 227
    invoke-virtual {v3, v8, v9}, Lcom/shabakaty/downloader/mh6;->m(J)Lcom/shabakaty/downloader/mh6;

    .line 228
    invoke-virtual {v3}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/th6;

    const/4 v3, 0x0

    .line 229
    :goto_21
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->d0()I

    move-result v5

    if-ge v3, v5, :cond_3c

    .line 230
    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/jf6;->W(I)Lcom/shabakaty/downloader/th6;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shabakaty/downloader/th6;->x()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 232
    invoke-virtual {v6, v3, v2}, Lcom/shabakaty/downloader/jf6;->U(ILcom/shabakaty/downloader/th6;)Lcom/shabakaty/downloader/jf6;

    goto :goto_22

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 233
    :cond_3c
    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/jf6;->n0(Lcom/shabakaty/downloader/th6;)Lcom/shabakaty/downloader/jf6;

    :cond_3d
    :goto_22
    const-wide v2, 0x7fffffffffffffffL

    .line 234
    invoke-virtual {v6, v2, v3}, Lcom/shabakaty/downloader/jf6;->R(J)Lcom/shabakaty/downloader/jf6;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v6, v2, v3}, Lcom/shabakaty/downloader/jf6;->A(J)Lcom/shabakaty/downloader/jf6;

    const/4 v2, 0x0

    .line 235
    :goto_23
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->M()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 236
    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/jf6;->g0(I)Lcom/shabakaty/downloader/ud6;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ud6;->v()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->f0()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-gez v10, :cond_3e

    .line 238
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ud6;->v()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lcom/shabakaty/downloader/jf6;->R(J)Lcom/shabakaty/downloader/jf6;

    .line 239
    :cond_3e
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ud6;->v()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->e0()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-lez v10, :cond_3f

    .line 240
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ud6;->v()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/shabakaty/downloader/jf6;->A(J)Lcom/shabakaty/downloader/jf6;

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 241
    :cond_40
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->x0()Lcom/shabakaty/downloader/jf6;

    .line 242
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->p0()Lcom/shabakaty/downloader/jf6;

    iget-object v8, v1, Lcom/shabakaty/downloader/uw6;->f:Lcom/shabakaty/downloader/qg7;

    .line 243
    invoke-static {v8}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 244
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->X()Ljava/lang/String;

    move-result-object v9

    .line 245
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->a0()Ljava/util/List;

    move-result-object v10

    .line 246
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->b0()Ljava/util/List;

    move-result-object v11

    .line 247
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->f0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 248
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->e0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 249
    invoke-virtual/range {v8 .. v13}, Lcom/shabakaty/downloader/qg7;->i(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 250
    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/jf6;->h0(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/jf6;

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v2

    iget-object v3, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/hg5;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    new-instance v2, Ljava/util/HashMap;

    .line 252
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 253
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f;->s()Ljava/security/SecureRandom;

    move-result-object v4

    const/4 v5, 0x0

    .line 255
    :goto_24
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->M()I

    move-result v8

    if-ge v5, v8, :cond_56

    .line 256
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/jf6;->g0(I)Lcom/shabakaty/downloader/ud6;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/pd6;

    .line 257
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v10, "_sr"

    const-string v11, "_efs"

    if-eqz v9, :cond_45

    :try_start_9
    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 258
    invoke-static {v9}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 259
    invoke-virtual {v8}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ud6;

    const-string v12, "_en"

    invoke-static {v9, v12}, Lcom/shabakaty/downloader/ny6;->o(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 260
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/jj5;

    if-nez v12, :cond_41

    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 261
    invoke-static {v12}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v13, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 262
    invoke-virtual {v13}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {v12, v13, v9}, Lcom/shabakaty/downloader/mh5;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/jj5;

    move-result-object v12

    if-eqz v12, :cond_41

    .line 264
    invoke-virtual {v2, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    if-eqz v12, :cond_44

    iget-object v9, v12, Lcom/shabakaty/downloader/jj5;->i:Ljava/lang/Long;

    if-nez v9, :cond_44

    iget-object v9, v12, Lcom/shabakaty/downloader/jj5;->j:Ljava/lang/Long;

    if-eqz v9, :cond_42

    .line 265
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x1

    cmp-long v9, v13, v15

    if-lez v9, :cond_42

    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 266
    invoke-static {v9}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v9, v12, Lcom/shabakaty/downloader/jj5;->j:Ljava/lang/Long;

    .line 267
    invoke-static {v8, v10, v9}, Lcom/shabakaty/downloader/ny6;->i(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_42
    iget-object v9, v12, Lcom/shabakaty/downloader/jj5;->k:Ljava/lang/Boolean;

    if-eqz v9, :cond_43

    .line 268
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_43

    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 269
    invoke-static {v9}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const-wide/16 v9, 0x1

    .line 270
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v11, v12}, Lcom/shabakaty/downloader/ny6;->i(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    :cond_43
    invoke-virtual {v8}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_44
    invoke-virtual {v6, v5, v8}, Lcom/shabakaty/downloader/jf6;->B(ILcom/shabakaty/downloader/pd6;)Lcom/shabakaty/downloader/jf6;

    goto/16 :goto_2b

    :cond_45
    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 273
    invoke-static {v9}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v12, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 274
    invoke-virtual {v12}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v12

    const-string v13, "measurement.account.time_zone_offset_minutes"

    .line 275
    invoke-virtual {v9, v12, v13}, Lcom/shabakaty/downloader/wc6;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 276
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v14, :cond_46

    .line 277
    :try_start_a
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_25

    :catch_0
    move-exception v0

    move-object v13, v0

    .line 278
    :try_start_b
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 279
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v9

    .line 280
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v9

    const-string v14, "Unable to parse timezone offset. appId"

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 281
    invoke-virtual {v9, v14, v12, v13}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    const-wide/16 v12, 0x0

    .line 282
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v9

    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->o()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15, v12, v13}, Lcom/google/android/gms/measurement/internal/f;->o0(JJ)J

    move-result-wide v14

    .line 283
    invoke-virtual {v8}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ud6;

    move-object/from16 p3, v11

    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-wide/from16 v16, v12

    const-string v12, "_dbg"

    .line 284
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_49

    .line 285
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ud6;->A()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_49

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/ne6;

    move-object/from16 v18, v9

    .line 286
    invoke-virtual {v13}, Lcom/shabakaty/downloader/ne6;->y()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 287
    invoke-virtual {v13}, Lcom/shabakaty/downloader/ne6;->v()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_47

    goto :goto_27

    :cond_47
    const/4 v9, 0x1

    goto :goto_28

    :cond_48
    move-object/from16 v9, v18

    goto :goto_26

    :cond_49
    :goto_27
    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 288
    invoke-static {v9}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v11, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 289
    invoke-virtual {v11}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/shabakaty/downloader/wc6;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    :goto_28
    if-gtz v9, :cond_4a

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v10

    .line 291
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v10

    const-string v11, "Sample rate must be positive. event, rate"

    .line 292
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v12, v9}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v8}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {v6, v5, v8}, Lcom/shabakaty/downloader/jf6;->B(ILcom/shabakaty/downloader/pd6;)Lcom/shabakaty/downloader/jf6;

    goto/16 :goto_2b

    .line 295
    :cond_4a
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/jj5;

    if-nez v11, :cond_4b

    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 296
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v12, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 297
    invoke-virtual {v12}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/shabakaty/downloader/mh5;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/jj5;

    move-result-object v11

    if-nez v11, :cond_4b

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v11

    .line 299
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v11

    const-string v12, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v13, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 300
    invoke-virtual {v13}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v18, v14

    .line 301
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v14

    .line 302
    invoke-virtual {v11, v12, v13, v14}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lcom/shabakaty/downloader/jj5;

    iget-object v12, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 303
    invoke-virtual {v12}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v31

    .line 304
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v32

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x1

    const-wide/16 v37, 0x1

    .line 305
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->o()J

    move-result-wide v39

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v30, v11

    invoke-direct/range {v30 .. v46}, Lcom/shabakaty/downloader/jj5;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_29

    :cond_4b
    move-wide/from16 v18, v14

    :goto_29
    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 306
    invoke-static {v12}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 307
    invoke-virtual {v8}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/ud6;

    const-string v13, "_eid"

    invoke-static {v12, v13}, Lcom/shabakaty/downloader/ny6;->o(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_4c

    const/4 v13, 0x1

    goto :goto_2a

    :cond_4c
    const/4 v13, 0x0

    .line 308
    :goto_2a
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x1

    if-ne v9, v14, :cond_4f

    .line 309
    invoke-virtual {v8}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4e

    iget-object v9, v11, Lcom/shabakaty/downloader/jj5;->i:Ljava/lang/Long;

    if-nez v9, :cond_4d

    iget-object v9, v11, Lcom/shabakaty/downloader/jj5;->j:Ljava/lang/Long;

    if-nez v9, :cond_4d

    iget-object v9, v11, Lcom/shabakaty/downloader/jj5;->k:Ljava/lang/Boolean;

    if-eqz v9, :cond_4e

    :cond_4d
    const/4 v9, 0x0

    .line 311
    invoke-virtual {v11, v9, v9, v9}, Lcom/shabakaty/downloader/jj5;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/shabakaty/downloader/jj5;

    move-result-object v10

    .line 312
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_4e
    invoke-virtual {v6, v5, v8}, Lcom/shabakaty/downloader/jf6;->B(ILcom/shabakaty/downloader/pd6;)Lcom/shabakaty/downloader/jf6;

    :goto_2b
    move-object/from16 v18, v4

    move v9, v5

    const-wide/16 v4, 0x1

    goto/16 :goto_30

    .line 314
    :cond_4f
    invoke-virtual {v4, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_51

    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 315
    invoke-static {v12}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    int-to-long v14, v9

    .line 316
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v10, v9}, Lcom/shabakaty/downloader/ny6;->i(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v8}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_50

    const/4 v10, 0x0

    .line 319
    invoke-virtual {v11, v10, v9, v10}, Lcom/shabakaty/downloader/jj5;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/shabakaty/downloader/jj5;

    move-result-object v11

    .line 320
    :cond_50
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v9

    .line 321
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->o()J

    move-result-wide v12

    move-wide/from16 v14, v18

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/shabakaty/downloader/jj5;->b(JJ)Lcom/shabakaty/downloader/jj5;

    move-result-object v10

    .line 322
    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v4

    move v9, v5

    const-wide/16 v4, 0x1

    goto/16 :goto_2f

    :cond_51
    move-wide/from16 v14, v18

    move-object/from16 v18, v4

    .line 323
    iget-object v4, v11, Lcom/shabakaty/downloader/jj5;->h:Ljava/lang/Long;

    if-eqz v4, :cond_52

    .line 324
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move/from16 v19, v5

    move-object/from16 v34, v6

    move-object/from16 v22, v11

    move-object/from16 v20, v12

    goto :goto_2c

    .line 325
    :cond_52
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v4

    move/from16 v19, v5

    move-object/from16 v34, v6

    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->n()J

    move-result-wide v5

    move-object/from16 v22, v11

    move-object/from16 v20, v12

    move-wide/from16 v11, v16

    invoke-virtual {v4, v5, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/f;->o0(JJ)J

    move-result-wide v16

    :goto_2c
    cmp-long v4, v16, v14

    if-eqz v4, :cond_54

    .line 326
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 327
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const-wide/16 v4, 0x1

    .line 328
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v11, p3

    invoke-static {v8, v11, v6}, Lcom/shabakaty/downloader/ny6;->i(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 329
    invoke-static {v6}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    int-to-long v11, v9

    .line 330
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v10, v6}, Lcom/shabakaty/downloader/ny6;->i(Lcom/shabakaty/downloader/pd6;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    invoke-virtual {v8}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_53

    .line 333
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v11, v22

    const/4 v10, 0x0

    invoke-virtual {v11, v10, v6, v9}, Lcom/shabakaty/downloader/jj5;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/shabakaty/downloader/jj5;

    move-result-object v11

    goto :goto_2d

    :cond_53
    move-object/from16 v11, v22

    .line 334
    :goto_2d
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->o()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10, v14, v15}, Lcom/shabakaty/downloader/jj5;->b(JJ)Lcom/shabakaty/downloader/jj5;

    move-result-object v9

    .line 336
    invoke-virtual {v2, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_54
    move-object/from16 v11, v22

    const-wide/16 v4, 0x1

    .line 337
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 338
    invoke-virtual {v8}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, v20

    const/4 v9, 0x0

    invoke-virtual {v11, v12, v9, v9}, Lcom/shabakaty/downloader/jj5;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/shabakaty/downloader/jj5;

    move-result-object v10

    .line 339
    invoke-virtual {v2, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    :goto_2e
    move/from16 v9, v19

    move-object/from16 v6, v34

    .line 340
    :goto_2f
    invoke-virtual {v6, v9, v8}, Lcom/shabakaty/downloader/jf6;->B(ILcom/shabakaty/downloader/pd6;)Lcom/shabakaty/downloader/jf6;

    :goto_30
    add-int/lit8 v8, v9, 0x1

    move v5, v8

    move-object/from16 v4, v18

    goto/16 :goto_24

    .line 341
    :cond_56
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->M()I

    move-result v5

    if-ge v4, v5, :cond_57

    .line 342
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->r0()Lcom/shabakaty/downloader/jf6;

    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/jf6;->i0(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/jf6;

    .line 343
    :cond_57
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 344
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 345
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/jj5;

    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/mh5;->o(Lcom/shabakaty/downloader/jj5;)V

    goto :goto_31

    :cond_58
    iget-object v2, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 346
    invoke-virtual {v2}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 347
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 348
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v3

    if-nez v3, :cond_59

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 350
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v3

    const-string v4, "Bundling raw events w/o app info. appId"

    iget-object v5, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 351
    invoke-virtual {v5}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 352
    invoke-virtual {v3, v4, v5}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    .line 353
    :cond_59
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->M()I

    move-result v4

    if-lez v4, :cond_5e

    .line 354
    invoke-virtual {v3}, Lcom/shabakaty/downloader/xf6;->H()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-eqz v10, :cond_5a

    .line 355
    invoke-virtual {v6, v4, v5}, Lcom/shabakaty/downloader/jf6;->K(J)Lcom/shabakaty/downloader/jf6;

    goto :goto_32

    .line 356
    :cond_5a
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->u0()Lcom/shabakaty/downloader/jf6;

    .line 357
    :goto_32
    invoke-virtual {v3}, Lcom/shabakaty/downloader/xf6;->J()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_5b

    goto :goto_33

    :cond_5b
    move-wide v4, v8

    :goto_33
    cmp-long v8, v4, v10

    if-eqz v8, :cond_5c

    .line 358
    invoke-virtual {v6, v4, v5}, Lcom/shabakaty/downloader/jf6;->L(J)Lcom/shabakaty/downloader/jf6;

    goto :goto_34

    .line 359
    :cond_5c
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->v0()Lcom/shabakaty/downloader/jf6;

    .line 360
    :goto_34
    invoke-virtual {v3}, Lcom/shabakaty/downloader/xf6;->b()V

    .line 361
    invoke-virtual {v3}, Lcom/shabakaty/downloader/xf6;->I()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/jf6;->s(I)Lcom/shabakaty/downloader/jf6;

    .line 362
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->f0()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/shabakaty/downloader/xf6;->v(J)V

    .line 363
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->e0()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/shabakaty/downloader/xf6;->t(J)V

    .line 364
    invoke-virtual {v3}, Lcom/shabakaty/downloader/xf6;->L()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5d

    .line 365
    invoke-virtual {v6, v4}, Lcom/shabakaty/downloader/jf6;->G(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    goto :goto_35

    .line 366
    :cond_5d
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->s0()Lcom/shabakaty/downloader/jf6;

    .line 367
    :goto_35
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 368
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 369
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/mh5;->n(Lcom/shabakaty/downloader/xf6;)V

    .line 370
    :cond_5e
    :goto_36
    invoke-virtual {v6}, Lcom/shabakaty/downloader/jf6;->M()I

    move-result v3

    if-lez v3, :cond_62

    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 371
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 372
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v4, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 373
    invoke-virtual {v4}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/wc6;->j(Ljava/lang/String;)Lcom/shabakaty/downloader/kb6;

    move-result-object v3

    if-eqz v3, :cond_60

    invoke-virtual {v3}, Lcom/shabakaty/downloader/kb6;->H()Z

    move-result v4

    if-nez v4, :cond_5f

    goto :goto_37

    .line 374
    :cond_5f
    invoke-virtual {v3}, Lcom/shabakaty/downloader/kb6;->u()J

    move-result-wide v3

    .line 375
    invoke-virtual {v6, v3, v4}, Lcom/shabakaty/downloader/jf6;->u(J)Lcom/shabakaty/downloader/jf6;

    goto :goto_38

    .line 376
    :cond_60
    :goto_37
    iget-object v3, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 377
    invoke-virtual {v3}, Lcom/shabakaty/downloader/nf6;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    const-wide/16 v3, -0x1

    .line 378
    invoke-virtual {v6, v3, v4}, Lcom/shabakaty/downloader/jf6;->u(J)Lcom/shabakaty/downloader/jf6;

    goto :goto_38

    .line 379
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 380
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v3

    const-string v4, "Did not find measurement config or missing version info. appId"

    iget-object v5, v7, Lcom/shabakaty/downloader/sw6;->a:Lcom/shabakaty/downloader/nf6;

    .line 381
    invoke-virtual {v5}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 382
    invoke-virtual {v3, v4, v5}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    :goto_38
    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 384
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 385
    invoke-virtual {v6}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/nf6;

    move/from16 v9, v21

    invoke-virtual {v3, v4, v9}, Lcom/shabakaty/downloader/mh5;->q(Lcom/shabakaty/downloader/nf6;Z)Z

    :cond_62
    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 386
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v4, v7, Lcom/shabakaty/downloader/sw6;->b:Ljava/util/List;

    .line 387
    invoke-static {v4}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 389
    invoke-virtual {v3}, Lcom/shabakaty/downloader/uv6;->f()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    .line 390
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 391
    :goto_39
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_64

    if-eqz v6, :cond_63

    const-string v7, ","

    .line 392
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_63
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_64
    const-string v6, ")"

    .line 394
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 396
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 397
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_65

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 398
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 399
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v3

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 400
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 401
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 402
    invoke-virtual {v3, v6, v5, v4}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 403
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 404
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v5, 0x2

    :try_start_c
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const-string v6, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    .line 405
    invoke-virtual {v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3a

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 406
    :try_start_d
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 407
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 408
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v3

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 409
    invoke-virtual {v3, v5, v2, v4}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    :goto_3a
    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 411
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 412
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 413
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 414
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->R()V

    const/4 v2, 0x1

    return v2

    .line 415
    :cond_66
    :goto_3b
    :try_start_e
    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 416
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 417
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 418
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 419
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->R()V

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 420
    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 421
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 422
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mh5;->R()V

    .line 423
    throw v2
.end method

.method public final G()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->d()V

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const/4 v1, 0x0

    const-string v2, "select count(1) > 0 from raw_events"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/mh5;->y(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mh5;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v5

    :cond_2
    :goto_1
    return v4
.end method

.method public final H(Lcom/shabakaty/downloader/pd6;Lcom/shabakaty/downloader/pd6;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pd6;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ud6;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ne6;->z()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 7
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 8
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ud6;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/ny6;->n(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)Lcom/shabakaty/downloader/ne6;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ne6;->z()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/uw6;->C(Lcom/shabakaty/downloader/pd6;Lcom/shabakaty/downloader/pd6;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->d()V

    const-string v0, "null reference"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 6
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/uw6;->L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v1

    iget-object v2, p1, Lcom/shabakaty/downloader/ma7;->M:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Lcom/shabakaty/downloader/qg5;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/qg5;->c(Lcom/shabakaty/downloader/qg5;)Lcom/shabakaty/downloader/qg5;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qg5;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 11
    iget-object v3, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/bt6;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/shabakaty/downloader/xf6;

    iget-object v4, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 12
    iget-object v5, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/shabakaty/downloader/xf6;-><init>(Lcom/google/android/gms/measurement/internal/d;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qg5;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/uw6;->S(Lcom/shabakaty/downloader/qg5;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/xf6;->f(Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qg5;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/xf6;->x(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 17
    :cond_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qg5;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 18
    iget-object v4, v0, Lcom/shabakaty/downloader/xf6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/shabakaty/downloader/de6;->e()V

    iget-object v4, v0, Lcom/shabakaty/downloader/xf6;->e:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 22
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/xf6;->x(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/uw6;->S(Lcom/shabakaty/downloader/qg5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/xf6;->f(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/shabakaty/downloader/y57;->c()Z

    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/d46;->t0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 25
    iget-object v4, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, v4, v1}, Lcom/shabakaty/downloader/bt6;->j(Ljava/lang/String;Lcom/shabakaty/downloader/qg5;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v2, "00000000-0000-0000-0000-000000000000"

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 28
    invoke-static {v1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 29
    iget-object v2, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v4, "_id"

    .line 30
    invoke-virtual {v1, v2, v4}, Lcom/shabakaty/downloader/mh5;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/uy6;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 31
    invoke-static {v1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 32
    iget-object v2, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v4, "_lair"

    .line 33
    invoke-virtual {v1, v2, v4}, Lcom/shabakaty/downloader/mh5;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/uy6;

    move-result-object v1

    if-nez v1, :cond_4

    .line 34
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 36
    new-instance v1, Lcom/shabakaty/downloader/uy6;

    .line 37
    iget-object v5, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-wide/16 v6, 0x1

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v6, "auto"

    const-string v7, "_lair"

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/shabakaty/downloader/uy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 39
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 40
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mh5;->u(Lcom/shabakaty/downloader/uy6;)Z

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xf6;->N()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qg5;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 43
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/uw6;->S(Lcom/shabakaty/downloader/qg5;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xf6;->f(Ljava/lang/String;)V

    .line 44
    :cond_4
    :goto_1
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xf6;->p(Ljava/lang/String;)V

    .line 45
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xf6;->c(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/shabakaty/downloader/n97;->c()Z

    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/d46;->d0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v1, v2, v4}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xf6;->o(Ljava/lang/String;)V

    .line 48
    :cond_5
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->B:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 49
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xf6;->n(Ljava/lang/String;)V

    .line 50
    :cond_6
    iget-wide v1, p1, Lcom/shabakaty/downloader/ma7;->v:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_7

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/xf6;->q(J)V

    .line 52
    :cond_7
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 53
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xf6;->h(Ljava/lang/String;)V

    .line 54
    :cond_8
    iget-wide v1, p1, Lcom/shabakaty/downloader/ma7;->A:J

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/xf6;->i(J)V

    .line 55
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->u:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 56
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xf6;->g(Ljava/lang/String;)V

    .line 57
    :cond_9
    iget-wide v1, p1, Lcom/shabakaty/downloader/ma7;->w:J

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/xf6;->k(J)V

    .line 58
    iget-boolean v1, p1, Lcom/shabakaty/downloader/ma7;->y:Z

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xf6;->w(Z)V

    .line 59
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 60
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xf6;->s(Ljava/lang/String;)V

    .line 61
    :cond_a
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/d46;->m0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 62
    iget-wide v1, p1, Lcom/shabakaty/downloader/ma7;->C:J

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/xf6;->e(J)V

    .line 63
    :cond_b
    iget-boolean v1, p1, Lcom/shabakaty/downloader/ma7;->F:Z

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xf6;->d(Z)V

    .line 64
    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->I:Ljava/lang/Boolean;

    .line 65
    iget-object v2, v0, Lcom/shabakaty/downloader/xf6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/shabakaty/downloader/de6;->e()V

    iget-boolean v2, v0, Lcom/shabakaty/downloader/xf6;->D:Z

    iget-object v3, v0, Lcom/shabakaty/downloader/xf6;->s:Ljava/lang/Boolean;

    .line 68
    sget-object v4, Lcom/google/android/gms/measurement/internal/f;->g:[Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_c

    if-nez v1, :cond_c

    const/4 v3, 0x1

    goto :goto_2

    :cond_c
    if-nez v3, :cond_d

    const/4 v3, 0x0

    goto :goto_2

    .line 69
    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_2
    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 70
    iput-boolean v2, v0, Lcom/shabakaty/downloader/xf6;->D:Z

    iput-object v1, v0, Lcom/shabakaty/downloader/xf6;->s:Ljava/lang/Boolean;

    .line 71
    iget-wide v1, p1, Lcom/shabakaty/downloader/ma7;->J:J

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/xf6;->l(J)V

    .line 72
    iget-object p1, v0, Lcom/shabakaty/downloader/xf6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/shabakaty/downloader/de6;->e()V

    iget-boolean p1, v0, Lcom/shabakaty/downloader/xf6;->D:Z

    if-eqz p1, :cond_e

    .line 75
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 76
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 77
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/mh5;->n(Lcom/shabakaty/downloader/xf6;)V

    :cond_e
    return-object v0
.end method

.method public final K()Lcom/shabakaty/downloader/hg5;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    const-string v1, "null reference"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    return-object v0
.end method

.method public final L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->d()V

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->A:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qg5;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const-string v1, "null reference"

    .line 5
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uv6;->f()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select consent_state from consent_settings where app_id=? limit 1;"

    const/4 v5, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 10
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const-string v0, "G1"

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/qg5;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/uw6;->r(Ljava/lang/String;Lcom/shabakaty/downloader/qg5;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v1, "Database error"

    .line 18
    invoke-virtual {v0, v1, v4, p1}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v5, :cond_1

    .line 20
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_1
    throw p1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final M()Lcom/shabakaty/downloader/mh5;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    return-object v0
.end method

.method public final N()Lcom/shabakaty/downloader/e66;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v0

    return-object v0
.end method

.method public final O()Lcom/shabakaty/downloader/n86;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->d:Lcom/shabakaty/downloader/n86;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Q()Lcom/shabakaty/downloader/ny6;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    return-object v0
.end method

.method public final R()Lcom/google/android/gms/measurement/internal/f;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    const-string v1, "null reference"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public final S(Lcom/shabakaty/downloader/qg5;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qg5;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f;->s()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    .line 3
    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    const-string p1, "%032x"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Lcom/shabakaty/downloader/de6;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    const-string v1, "null reference"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/b;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    const-string v1, "null reference"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->d()V

    iget-boolean v0, p0, Lcom/shabakaty/downloader/uw6;->n:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/downloader/uw6;->n:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/de6;->e()V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/d46;->c0:Lcom/shabakaty/downloader/z36;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v1

    const-string v2, "Storage concurrent access okay"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->v:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 8
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_3

    .line 9
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 11
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    const-string v6, "google_app_measurement.db"

    .line 13
    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    .line 14
    invoke-direct {v1, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/uw6;->w:Ljava/nio/channels/FileChannel;

    .line 15
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/uw6;->v:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 18
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Storage concurrent data access panic"

    .line 21
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 23
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v5, "Storage lock already acquired"

    .line 24
    invoke-virtual {v2, v5, v1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v1

    .line 25
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 26
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v5, "Failed to access storage lock file"

    .line 27
    invoke-virtual {v2, v5, v1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v1

    .line 28
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 29
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v5, "Failed to acquire storage lock"

    .line 30
    invoke-virtual {v2, v5, v1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_b

    .line 31
    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->w:Ljava/nio/channels/FileChannel;

    .line 32
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/de6;->e()V

    const-wide/16 v5, 0x0

    const-string v2, "Bad channel to read from"

    const/4 v7, 0x4

    if-eqz v1, :cond_5

    .line 33
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_4

    .line 34
    :cond_3
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 35
    :try_start_1
    invoke-virtual {v1, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 36
    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v7, :cond_4

    const/4 v8, -0x1

    if-eq v1, v8, :cond_6

    .line 37
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v8

    .line 38
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v9, "Unexpected data length. Bytes read"

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 40
    :cond_4
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 41
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 42
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v8

    .line 43
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v9, "Failed to read from channel"

    .line 44
    invoke-virtual {v8, v9, v1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 45
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 46
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 47
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->r()Lcom/google/android/gms/measurement/internal/a;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka6;->f()V

    iget v1, v1, Lcom/google/android/gms/measurement/internal/a;->e:I

    .line 50
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shabakaty/downloader/de6;->e()V

    if-le v4, v1, :cond_7

    .line 51
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 52
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 55
    invoke-virtual {v0, v3, v2, v1}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    if-ge v4, v1, :cond_b

    iget-object v8, p0, Lcom/shabakaty/downloader/uw6;->w:Ljava/nio/channels/FileChannel;

    .line 56
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v9

    invoke-virtual {v9}, Lcom/shabakaty/downloader/de6;->e()V

    if-eqz v8, :cond_a

    .line 57
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_6

    .line 58
    :cond_8
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 61
    :try_start_2
    invoke-virtual {v8, v5, v6}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 62
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/d46;->l0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v5, v3, v6}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v3

    .line 63
    invoke-virtual {v8, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 64
    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 65
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v5, 0x4

    cmp-long v0, v2, v5

    if-eqz v0, :cond_9

    .line 66
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 67
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Error writing to channel. Bytes written"

    .line 68
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 69
    :cond_9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 70
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_4
    move-exception v0

    .line 72
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 73
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "Failed to write to channel"

    .line 74
    invoke-virtual {v2, v3, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 75
    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 76
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 77
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 78
    :goto_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 79
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 82
    invoke-virtual {v0, v3, v2, v1}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Lcom/shabakaty/downloader/uw6;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Lcom/shabakaty/downloader/xf6;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/n97;->c()Z

    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/d46;->d0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    const-string v1, "null reference"

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v5, 0xcc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 8
    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/uw6;->i(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v5, 0xcc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 12
    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/uw6;->i(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->j:Lcom/shabakaty/downloader/xv6;

    new-instance v3, Landroid/net/Uri$Builder;

    .line 14
    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->S()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 17
    invoke-static {}, Lcom/shabakaty/downloader/n97;->c()Z

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 18
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 19
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->R()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->K()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->K()Ljava/lang/String;

    move-result-object v4

    .line 24
    :cond_4
    :goto_1
    sget-object v2, Lcom/shabakaty/downloader/d46;->e:Lcom/shabakaty/downloader/z36;

    const/4 v5, 0x0

    .line 25
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v6, Lcom/shabakaty/downloader/d46;->f:Lcom/shabakaty/downloader/z36;

    .line 26
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "config/app/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 27
    :cond_5
    new-instance v4, Ljava/lang/String;

    .line 28
    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 29
    :goto_2
    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 30
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->N()Ljava/lang/String;

    move-result-object v4

    const-string v6, "app_instance_id"

    invoke-virtual {v2, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "platform"

    const-string v6, "android"

    .line 31
    invoke-virtual {v2, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 32
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 33
    invoke-virtual {v4}, Lcom/shabakaty/downloader/hg5;->q()J

    const-wide/32 v6, 0xa471

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v6, "gmp_version"

    invoke-virtual {v2, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    invoke-static {}, Lcom/shabakaty/downloader/jb7;->c()Z

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 35
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 36
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/d46;->s0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v0, v2, v4}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "runtime_version"

    const-string v2, "0"

    .line 37
    invoke-virtual {v3, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 38
    :cond_6
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v8

    .line 40
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 43
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "Fetching remote configuration"

    .line 44
    invoke-virtual {v1, v2, v8}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 45
    invoke-static {v1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 46
    invoke-virtual {v1, v8}, Lcom/shabakaty/downloader/wc6;->j(Ljava/lang/String;)Lcom/shabakaty/downloader/kb6;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 47
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e()V

    iget-object v2, v2, Lcom/shabakaty/downloader/wc6;->k:Ljava/util/Map;

    .line 49
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 51
    new-instance v5, Lcom/shabakaty/downloader/ad;

    invoke-direct {v5}, Lcom/shabakaty/downloader/ad;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 52
    invoke-virtual {v5, v1, v2}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object v11, v5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shabakaty/downloader/uw6;->s:Z

    iget-object v7, p0, Lcom/shabakaty/downloader/uw6;->b:Lcom/shabakaty/downloader/e86;

    .line 53
    invoke-static {v7}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    new-instance v12, Lcom/shabakaty/downloader/gw6;

    const/4 v1, 0x0

    .line 54
    invoke-direct {v12, p0, v1}, Lcom/shabakaty/downloader/gw6;-><init>(Lcom/shabakaty/downloader/uw6;I)V

    .line 55
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 56
    invoke-virtual {v7}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 57
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/y76;

    const/4 v10, 0x0

    move-object v6, v2

    .line 59
    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/y76;-><init>(Lcom/shabakaty/downloader/e86;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/shabakaty/downloader/m76;)V

    .line 60
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/de6;->q(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 61
    :catch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 62
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 63
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 64
    invoke-virtual {v1, v2, p1, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "null reference"

    .line 1
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/de6;->e()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->d()V

    .line 5
    iget-object v3, v0, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    move-object/from16 v4, p1

    .line 6
    iget-wide v11, v4, Lcom/shabakaty/downloader/ek5;->u:J

    .line 7
    sget-object v5, Lcom/shabakaty/downloader/zb7;->s:Lcom/shabakaty/downloader/zb7;

    .line 8
    invoke-virtual {v5}, Lcom/shabakaty/downloader/zb7;->b()Lcom/shabakaty/downloader/ac7;

    move-result-object v5

    invoke-interface {v5}, Lcom/shabakaty/downloader/ac7;->a()Z

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/d46;->v0:Lcom/shabakaty/downloader/z36;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/h76;->c(Lcom/shabakaty/downloader/ek5;)Lcom/shabakaty/downloader/h76;

    move-result-object v4

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shabakaty/downloader/de6;->e()V

    iget-object v5, v4, Lcom/shabakaty/downloader/h76;->e:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 12
    invoke-static {v7, v5, v6}, Lcom/google/android/gms/measurement/internal/f;->w(Lcom/shabakaty/downloader/jp6;Landroid/os/Bundle;Z)V

    .line 13
    invoke-virtual {v4}, Lcom/shabakaty/downloader/h76;->a()Lcom/shabakaty/downloader/ek5;

    move-result-object v4

    :cond_0
    iget-object v5, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 14
    invoke-static {v5}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 15
    invoke-static {v4, v0}, Lcom/shabakaty/downloader/ny6;->j(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 16
    :cond_1
    iget-boolean v5, v0, Lcom/shabakaty/downloader/ma7;->y:Z

    if-nez v5, :cond_2

    .line 17
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    return-void

    .line 18
    :cond_2
    iget-object v5, v0, Lcom/shabakaty/downloader/ma7;->K:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 19
    iget-object v7, v4, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    iget-object v5, v4, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/uj5;->W0()Landroid/os/Bundle;

    move-result-object v5

    const-wide/16 v7, 0x1

    const-string v9, "ga_safelisted"

    .line 21
    invoke-virtual {v5, v9, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v7, Lcom/shabakaty/downloader/ek5;

    .line 22
    iget-object v14, v4, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    new-instance v15, Lcom/shabakaty/downloader/uj5;

    invoke-direct {v15, v5}, Lcom/shabakaty/downloader/uj5;-><init>(Landroid/os/Bundle;)V

    iget-object v5, v4, Lcom/shabakaty/downloader/ek5;->t:Ljava/lang/String;

    iget-wide v8, v4, Lcom/shabakaty/downloader/ek5;->u:J

    move-object v13, v7

    move-object/from16 v16, v5

    move-wide/from16 v17, v8

    invoke-direct/range {v13 .. v18}, Lcom/shabakaty/downloader/ek5;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/uj5;Ljava/lang/String;J)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    .line 25
    iget-object v2, v4, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    iget-object v4, v4, Lcom/shabakaty/downloader/ek5;->t:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 26
    invoke-virtual {v0, v5, v3, v2, v4}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    move-object v13, v4

    .line 27
    :goto_0
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 28
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 29
    invoke-virtual {v4}, Lcom/shabakaty/downloader/mh5;->Q()V

    :try_start_0
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 30
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 31
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 33
    invoke-virtual {v4}, Lcom/shabakaty/downloader/uv6;->f()V

    const-wide/16 v7, 0x0

    const/4 v5, 0x2

    const/4 v14, 0x1

    cmp-long v9, v11, v7

    if-gez v9, :cond_5

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 35
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v7, "Invalid time querying timed out conditional properties"

    .line 36
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 37
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 38
    invoke-virtual {v4, v7, v8, v10}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_5
    new-array v7, v5, [Ljava/lang/String;

    aput-object v3, v7, v6

    .line 40
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 41
    invoke-virtual {v4, v8, v7}, Lcom/shabakaty/downloader/mh5;->N(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 42
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ve5;

    if-eqz v7, :cond_6

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v8

    .line 44
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v10, "User property timed out"

    .line 45
    iget-object v15, v7, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    iget-object v14, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 46
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v14

    iget-object v6, v7, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 47
    iget-object v6, v6, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v14, v6}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v14, v7, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 48
    invoke-virtual {v14}, Lcom/shabakaty/downloader/qy6;->W0()Ljava/lang/Object;

    move-result-object v14

    .line 49
    invoke-virtual {v8, v10, v15, v6, v14}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v7, Lcom/shabakaty/downloader/ve5;->x:Lcom/shabakaty/downloader/ek5;

    if-eqz v6, :cond_7

    new-instance v8, Lcom/shabakaty/downloader/ek5;

    .line 50
    invoke-direct {v8, v6, v11, v12}, Lcom/shabakaty/downloader/ek5;-><init>(Lcom/shabakaty/downloader/ek5;J)V

    invoke-virtual {v1, v8, v0}, Lcom/shabakaty/downloader/uw6;->u(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    :cond_7
    iget-object v6, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 51
    invoke-static {v6}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v7, v7, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 52
    iget-object v7, v7, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lcom/shabakaty/downloader/mh5;->x(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v14, 0x1

    goto :goto_2

    :cond_8
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 53
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 54
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 56
    invoke-virtual {v4}, Lcom/shabakaty/downloader/uv6;->f()V

    if-gez v9, :cond_9

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 58
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v6, "Invalid time querying expired conditional properties"

    .line 59
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 60
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 61
    invoke-virtual {v4, v6, v7, v8}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_9
    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 63
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 64
    invoke-virtual {v4, v7, v6}, Lcom/shabakaty/downloader/mh5;->N(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 65
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    .line 66
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ve5;

    if-eqz v7, :cond_a

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v8

    .line 69
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v10, "User property expired"

    .line 70
    iget-object v14, v7, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    iget-object v15, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 71
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v15

    iget-object v5, v7, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 72
    iget-object v5, v5, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v7, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 73
    invoke-virtual {v15}, Lcom/shabakaty/downloader/qy6;->W0()Ljava/lang/Object;

    move-result-object v15

    .line 74
    invoke-virtual {v8, v10, v14, v5, v15}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 75
    invoke-static {v5}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v8, v7, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 76
    iget-object v8, v8, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v5, v3, v8}, Lcom/shabakaty/downloader/mh5;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v7, Lcom/shabakaty/downloader/ve5;->B:Lcom/shabakaty/downloader/ek5;

    if-eqz v5, :cond_b

    .line 77
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v5, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 78
    invoke-static {v5}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v7, v7, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 79
    iget-object v7, v7, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v5, v3, v7}, Lcom/shabakaty/downloader/mh5;->x(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_4

    .line 80
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ek5;

    new-instance v6, Lcom/shabakaty/downloader/ek5;

    .line 81
    invoke-direct {v6, v5, v11, v12}, Lcom/shabakaty/downloader/ek5;-><init>(Lcom/shabakaty/downloader/ek5;J)V

    invoke-virtual {v1, v6, v0}, Lcom/shabakaty/downloader/uw6;->u(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    goto :goto_5

    :cond_d
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 82
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 83
    iget-object v5, v13, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    .line 84
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    invoke-static {v5}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 87
    invoke-virtual {v4}, Lcom/shabakaty/downloader/uv6;->f()V

    if-gez v9, :cond_e

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 88
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v6

    .line 89
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 90
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 91
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v4

    .line 92
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 94
    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_6

    :cond_e
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v5, v6, v3

    .line 96
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v6, v5

    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 97
    invoke-virtual {v4, v3, v6}, Lcom/shabakaty/downloader/mh5;->N(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 98
    :goto_6
    new-instance v14, Ljava/util/ArrayList;

    .line 99
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/shabakaty/downloader/ve5;

    if-eqz v15, :cond_f

    iget-object v4, v15, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    new-instance v10, Lcom/shabakaty/downloader/uy6;

    iget-object v5, v15, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    .line 101
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v6, v15, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    iget-object v7, v4, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    .line 103
    invoke-virtual {v4}, Lcom/shabakaty/downloader/qy6;->W0()Ljava/lang/Object;

    move-result-object v8

    .line 104
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v10

    move-object/from16 v16, v8

    move-wide v8, v11

    move-object/from16 v17, v2

    move-object v2, v10

    move-object/from16 v10, v16

    .line 105
    invoke-direct/range {v4 .. v10}, Lcom/shabakaty/downloader/uy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 106
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 107
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/mh5;->u(Lcom/shabakaty/downloader/uy6;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 109
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v5, "User property triggered"

    .line 110
    iget-object v6, v15, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    iget-object v7, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 111
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v7

    iget-object v8, v2, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    .line 112
    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    .line 113
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 114
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 115
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v5, "Too many active user properties, ignoring"

    .line 116
    iget-object v6, v15, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 117
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v7

    iget-object v8, v2, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    .line 118
    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    .line 119
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    :goto_8
    iget-object v4, v15, Lcom/shabakaty/downloader/ve5;->z:Lcom/shabakaty/downloader/ek5;

    if-eqz v4, :cond_11

    .line 121
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    new-instance v4, Lcom/shabakaty/downloader/qy6;

    .line 122
    invoke-direct {v4, v2}, Lcom/shabakaty/downloader/qy6;-><init>(Lcom/shabakaty/downloader/uy6;)V

    iput-object v4, v15, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/shabakaty/downloader/ve5;->v:Z

    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 123
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 124
    invoke-virtual {v4, v15}, Lcom/shabakaty/downloader/mh5;->t(Lcom/shabakaty/downloader/ve5;)Z

    move-object/from16 v2, v17

    goto/16 :goto_7

    .line 125
    :cond_12
    invoke-virtual {v1, v13, v0}, Lcom/shabakaty/downloader/uw6;->u(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    .line 126
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ek5;

    new-instance v4, Lcom/shabakaty/downloader/ek5;

    .line 127
    invoke-direct {v4, v3, v11, v12}, Lcom/shabakaty/downloader/ek5;-><init>(Lcom/shabakaty/downloader/ek5;J)V

    invoke-virtual {v1, v4, v0}, Lcom/shabakaty/downloader/uw6;->u(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    goto :goto_9

    :cond_13
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 128
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 129
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 130
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 131
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mh5;->R()V

    return-void

    :catchall_0
    move-exception v0

    .line 132
    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 133
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 134
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->R()V

    .line 135
    throw v0
.end method

.method public final g(Lcom/shabakaty/downloader/ek5;Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    iget-object v2, v0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 1
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 2
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->P()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/uw6;->z(Lcom/shabakaty/downloader/xf6;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5
    iget-object v4, v1, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 7
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 12
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 13
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_2
    :goto_0
    new-instance v14, Lcom/shabakaty/downloader/ma7;

    .line 15
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->S()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->P()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->B()J

    move-result-wide v6

    .line 18
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->O()Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->G()J

    move-result-wide v9

    .line 20
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->D()J

    move-result-wide v11

    .line 21
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->A()Z

    move-result v16

    .line 22
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->Q()Ljava/lang/String;

    move-result-object v17

    .line 23
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->r()J

    move-result-wide v24

    .line 24
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->z()Z

    move-result v22

    .line 25
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->K()Ljava/lang/String;

    move-result-object v26

    .line 26
    iget-object v13, v2, Lcom/shabakaty/downloader/xf6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 27
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v13

    .line 28
    invoke-virtual {v13}, Lcom/shabakaty/downloader/de6;->e()V

    iget-object v15, v2, Lcom/shabakaty/downloader/xf6;->s:Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->E()J

    move-result-wide v27

    .line 30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->a()Ljava/util/List;

    move-result-object v29

    .line 31
    invoke-static {}, Lcom/shabakaty/downloader/n97;->c()Z

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v13

    move-object/from16 v18, v15

    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/shabakaty/downloader/d46;->d0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v13, v15, v1}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->R()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v31, v18

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    .line 33
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/uw6;->L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/qg5;->e()Ljava/lang/String;

    move-result-object v30

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v32, v14

    move/from16 v14, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v24

    move-object/from16 v24, v26

    move-object/from16 v25, v31

    move-wide/from16 v26, v27

    move-object/from16 v28, v29

    move-object/from16 v29, v1

    invoke-direct/range {v2 .. v30}, Lcom/shabakaty/downloader/ma7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/uw6;->h(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    return-void

    .line 35
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 36
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v2, "No app data available; dropping event"

    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/h76;->c(Lcom/shabakaty/downloader/ek5;)Lcom/shabakaty/downloader/h76;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/downloader/h76;->e:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 4
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 5
    iget-object v3, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/mh5;->D(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f;->x(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v1

    iget-object v2, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/hg5;->n(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/f;->y(Lcom/shabakaty/downloader/h76;I)V

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/h76;->a()Lcom/shabakaty/downloader/ek5;

    move-result-object p1

    iget-object v0, p1, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    const-string v1, "_cmp"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/uj5;->r:Landroid/os/Bundle;

    const-string v1, "_cis"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/uj5;->r:Landroid/os/Bundle;

    const-string v1, "gclid"

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/qy6;

    iget-wide v4, p1, Lcom/shabakaty/downloader/ek5;->u:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/qy6;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/uw6;->s(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/uw6;->f(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    return-void
.end method

.method public final i(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->d()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 6
    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/mh5;->Q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 9
    invoke-static {v1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 10
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v1

    const/16 v3, 0xc8

    const/16 v4, 0x130

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_2

    const/16 p2, 0x130

    :cond_1
    if-nez p3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_3
    const/16 v5, 0x194

    const/4 v6, 0x0

    if-nez v3, :cond_7

    if-ne p2, v5, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object p4

    check-cast p4, Lcom/shabakaty/downloader/mn0;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    .line 17
    invoke-virtual {v1, p4, p5}, Lcom/shabakaty/downloader/xf6;->m(J)V

    iget-object p4, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 18
    invoke-static {p4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 19
    invoke-virtual {p4, v1}, Lcom/shabakaty/downloader/mh5;->n(Lcom/shabakaty/downloader/xf6;)V

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p4

    .line 21
    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string p5, "Fetching config failed. code, error"

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 23
    invoke-static {p3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e;->e()V

    iget-object p3, p3, Lcom/shabakaty/downloader/wc6;->k:Ljava/util/Map;

    .line 25
    invoke-interface {p3, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 27
    iget-object p1, p1, Lcom/shabakaty/downloader/bt6;->j:Lcom/shabakaty/downloader/f96;

    .line 28
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/mn0;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 30
    invoke-virtual {p1, p3, p4}, Lcom/shabakaty/downloader/f96;->b(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 31
    iget-object p1, p1, Lcom/shabakaty/downloader/bt6;->h:Lcom/shabakaty/downloader/f96;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/mn0;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 33
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/f96;->b(J)V

    .line 34
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->D()V

    goto/16 :goto_7

    :cond_7
    :goto_1
    if-eqz p5, :cond_8

    const-string p3, "Last-Modified"

    .line 35
    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    goto :goto_2

    :cond_8
    move-object p3, v6

    :goto_2
    if-eqz p3, :cond_9

    .line 36
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_9

    .line 37
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object p3, v6

    :goto_3
    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_a

    goto :goto_4

    .line 38
    :cond_a
    iget-object p5, p0, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 39
    invoke-static {p5}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 40
    invoke-virtual {p5, p1, p4, p3}, Lcom/shabakaty/downloader/wc6;->t(Ljava/lang/String;[BLjava/lang/String;)Z

    goto :goto_5

    .line 41
    :cond_b
    :goto_4
    iget-object p3, p0, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 42
    invoke-static {p3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 43
    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/wc6;->j(Ljava/lang/String;)Lcom/shabakaty/downloader/kb6;

    move-result-object p3

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 44
    invoke-static {p3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 45
    invoke-virtual {p3, p1, v6, v6}, Lcom/shabakaty/downloader/wc6;->t(Ljava/lang/String;[BLjava/lang/String;)Z

    .line 46
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/mn0;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 48
    invoke-virtual {v1, p3, p4}, Lcom/shabakaty/downloader/xf6;->j(J)V

    iget-object p3, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 49
    invoke-static {p3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 50
    invoke-virtual {p3, v1}, Lcom/shabakaty/downloader/mh5;->n(Lcom/shabakaty/downloader/xf6;)V

    if-ne p2, v5, :cond_d

    .line 51
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 52
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->k:Lcom/shabakaty/downloader/s66;

    const-string p3, "Config not found. Using empty config. appId"

    .line 53
    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 54
    :cond_d
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 55
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 57
    invoke-virtual {p1, p3, p2, v2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    :goto_6
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->b:Lcom/shabakaty/downloader/e86;

    .line 59
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 60
    invoke-virtual {p1}, Lcom/shabakaty/downloader/e86;->j()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->G()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 61
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->t()V

    goto :goto_7

    .line 62
    :cond_e
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->D()V

    .line 63
    :goto_7
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 64
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 65
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 66
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 67
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mh5;->R()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v0, p0, Lcom/shabakaty/downloader/uw6;->s:Z

    .line 68
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->A()V

    return-void

    .line 69
    :goto_8
    :try_start_3
    iget-object p2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 70
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 71
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mh5;->R()V

    .line 72
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 73
    iput-boolean v0, p0, Lcom/shabakaty/downloader/uw6;->s:Z

    .line 74
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->A()V

    .line 75
    throw p1
.end method

.method public final j(Lcom/shabakaty/downloader/ma7;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "com.android.vending"

    const-string v6, "_pfo"

    const-string v7, "_uwa"

    const-string v0, "app_id=?"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->d()V

    const-string v8, "null reference"

    .line 3
    invoke-static {v2, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v9, v2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/uw6;->E(Lcom/shabakaty/downloader/ma7;)Z

    move-result v9

    if-eqz v9, :cond_28

    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 6
    invoke-static {v9}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 7
    iget-object v10, v2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_0

    .line 8
    invoke-virtual {v9}, Lcom/shabakaty/downloader/xf6;->S()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, v2, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    .line 9
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 10
    invoke-virtual {v9, v10, v11}, Lcom/shabakaty/downloader/xf6;->j(J)V

    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 11
    invoke-static {v12}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 12
    invoke-virtual {v12, v9}, Lcom/shabakaty/downloader/mh5;->n(Lcom/shabakaty/downloader/xf6;)V

    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 13
    invoke-static {v9}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 14
    iget-object v12, v2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 15
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/e;->e()V

    iget-object v9, v9, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    .line 16
    invoke-interface {v9, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_0
    iget-boolean v9, v2, Lcom/shabakaty/downloader/ma7;->y:Z

    if-nez v9, :cond_1

    .line 18
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    return-void

    .line 19
    :cond_1
    iget-wide v12, v2, Lcom/shabakaty/downloader/ma7;->D:J

    cmp-long v9, v12, v10

    if-nez v9, :cond_2

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/mn0;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 22
    :cond_2
    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 23
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d;->q()Lcom/shabakaty/downloader/ti5;

    move-result-object v9

    .line 24
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/e;->e()V

    const/4 v15, 0x0

    iput-object v15, v9, Lcom/shabakaty/downloader/ti5;->f:Ljava/lang/Boolean;

    iput-wide v10, v9, Lcom/shabakaty/downloader/ti5;->g:J

    .line 25
    iget v9, v2, Lcom/shabakaty/downloader/ma7;->E:I

    const/4 v14, 0x1

    if-eqz v9, :cond_3

    if-eq v9, v14, :cond_3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v11

    .line 27
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    .line 28
    iget-object v15, v2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 29
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Incorrect app type, assuming installed app. appId, appType"

    .line 30
    invoke-virtual {v11, v10, v15, v9}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x0

    :cond_3
    iget-object v10, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 31
    invoke-static {v10}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 32
    invoke-virtual {v10}, Lcom/shabakaty/downloader/mh5;->Q()V

    :try_start_0
    iget-object v10, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 33
    invoke-static {v10}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 34
    iget-object v11, v2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v15, "_npa"

    .line 35
    invoke-virtual {v10, v11, v15}, Lcom/shabakaty/downloader/mh5;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/uy6;

    move-result-object v10

    if-eqz v10, :cond_5

    const-string v11, "auto"

    iget-object v14, v10, Lcom/shabakaty/downloader/uy6;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_0

    :cond_4
    move-object/from16 v22, v3

    goto :goto_2

    .line 37
    :cond_5
    :goto_0
    iget-object v11, v2, Lcom/shabakaty/downloader/ma7;->I:Ljava/lang/Boolean;

    if-eqz v11, :cond_8

    .line 38
    new-instance v15, Lcom/shabakaty/downloader/qy6;

    const-string v20, "_npa"

    .line 39
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/4 v14, 0x1

    if-eq v14, v11, :cond_6

    const-wide/16 v21, 0x0

    goto :goto_1

    :cond_6
    const-wide/16 v21, 0x1

    :goto_1
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v21, "auto"

    move-object/from16 v22, v3

    const/4 v3, 0x1

    move-object v14, v15

    move-object v3, v15

    move-object/from16 v15, v20

    move-wide/from16 v16, v12

    move-object/from16 v18, v11

    move-object/from16 v19, v21

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/qy6;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_7

    iget-object v10, v10, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    iget-object v11, v3, Lcom/shabakaty/downloader/qy6;->u:Ljava/lang/Long;

    .line 40
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 41
    :cond_7
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/uw6;->s(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V

    goto :goto_2

    :cond_8
    move-object/from16 v22, v3

    if-eqz v10, :cond_9

    .line 42
    new-instance v3, Lcom/shabakaty/downloader/qy6;

    const-string v15, "_npa"

    const/16 v18, 0x0

    const-string v19, "auto"

    move-object v14, v3

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/qy6;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/uw6;->o(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V

    .line 44
    :cond_9
    :goto_2
    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 45
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 46
    iget-object v10, v2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 47
    invoke-static {v10, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    iget-object v10, v2, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    .line 50
    invoke-virtual {v15}, Lcom/shabakaty/downloader/xf6;->S()Ljava/lang/String;

    move-result-object v11

    iget-object v14, v2, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    move-object/from16 v20, v4

    .line 51
    invoke-virtual {v15}, Lcom/shabakaty/downloader/xf6;->K()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v3, v10, v11, v14, v4}, Lcom/google/android/gms/measurement/internal/f;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 54
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v4, "New GMP App Id passed in. Removing cached database data. appId"

    .line 55
    invoke-virtual {v15}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 56
    invoke-virtual {v3, v4, v10}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 57
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 58
    invoke-virtual {v15}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {v3}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 61
    invoke-static {v4}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v14, v11

    const-string v11, "events"

    .line 63
    invoke-virtual {v10, v11, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    const-string v15, "user_attributes"

    .line 64
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "conditional_properties"

    .line 65
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "apps"

    .line 66
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "raw_events"

    .line 67
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "raw_events_metadata"

    .line 68
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "event_filters"

    .line 69
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "property_filters"

    .line 70
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "audience_filter_values"

    .line 71
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v11, v15

    const-string v15, "consent_settings"

    .line 72
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v11, v0

    if-lez v11, :cond_a

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 74
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v10, "Deleted application data. app, records"

    .line 75
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v4, v11}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 76
    :try_start_2
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 78
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v10, "Error deleting application data. appId, error"

    .line 79
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 80
    invoke-virtual {v3, v10, v4, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    :goto_3
    const/4 v15, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v20, v4

    :cond_c
    :goto_4
    if-eqz v15, :cond_f

    .line 81
    invoke-virtual {v15}, Lcom/shabakaty/downloader/xf6;->B()J

    move-result-wide v3

    const-wide/32 v10, -0x80000000

    cmp-long v0, v3, v10

    if-eqz v0, :cond_d

    .line 82
    invoke-virtual {v15}, Lcom/shabakaty/downloader/xf6;->B()J

    move-result-wide v3

    iget-wide v10, v2, Lcom/shabakaty/downloader/ma7;->A:J

    cmp-long v0, v3, v10

    if-eqz v0, :cond_d

    const/4 v14, 0x1

    goto :goto_5

    :cond_d
    const/4 v14, 0x0

    .line 83
    :goto_5
    invoke-virtual {v15}, Lcom/shabakaty/downloader/xf6;->P()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v15}, Lcom/shabakaty/downloader/xf6;->B()J

    move-result-wide v3

    const-wide/32 v10, -0x80000000

    cmp-long v15, v3, v10

    if-nez v15, :cond_e

    if-eqz v0, :cond_e

    iget-object v3, v2, Lcom/shabakaty/downloader/ma7;->t:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_6
    or-int/2addr v3, v14

    if-eqz v3, :cond_f

    new-instance v3, Landroid/os/Bundle;

    .line 86
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_pv"

    .line 87
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/shabakaty/downloader/ek5;

    new-instance v4, Lcom/shabakaty/downloader/uj5;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/uj5;-><init>(Landroid/os/Bundle;)V

    const-string v15, "_au"

    const-string v17, "auto"

    move-object v14, v0

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/ek5;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/uj5;Ljava/lang/String;J)V

    .line 89
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/uw6;->f(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    .line 90
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    if-nez v9, :cond_10

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 91
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 92
    iget-object v3, v2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v4, "_f"

    .line 93
    invoke-virtual {v0, v3, v4}, Lcom/shabakaty/downloader/mh5;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/jj5;

    move-result-object v0

    const/4 v14, 0x0

    goto :goto_7

    .line 94
    :cond_10
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 95
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 96
    iget-object v3, v2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v4, "_v"

    .line 97
    invoke-virtual {v0, v3, v4}, Lcom/shabakaty/downloader/mh5;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/jj5;

    move-result-object v0

    const/4 v14, 0x1

    :goto_7
    if-nez v0, :cond_26

    const-wide/32 v3, 0x36ee80

    .line 98
    div-long v9, v12, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v6

    move-object/from16 v21, v7

    const-wide/16 v6, 0x1

    add-long/2addr v9, v6

    mul-long v9, v9, v3

    const-string v3, "_dac"

    const-string v4, "_r"

    const-string v15, "_c"

    const-string v6, "_et"

    if-nez v14, :cond_24

    .line 99
    :try_start_3
    new-instance v0, Lcom/shabakaty/downloader/qy6;

    const-string v7, "_fot"

    .line 100
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v14, v0

    move-object v9, v15

    move-object v15, v7

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/qy6;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/uw6;->s(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    iget-object v7, v1, Lcom/shabakaty/downloader/uw6;->k:Lcom/shabakaty/downloader/cb6;

    .line 103
    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v0, v2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    goto/16 :goto_9

    .line 106
    :cond_11
    iget-object v10, v7, Lcom/shabakaty/downloader/cb6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 107
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v10

    .line 108
    invoke-virtual {v10}, Lcom/shabakaty/downloader/de6;->e()V

    .line 109
    invoke-virtual {v7}, Lcom/shabakaty/downloader/cb6;->a()Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v0, v7, Lcom/shabakaty/downloader/cb6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 111
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->l:Lcom/shabakaty/downloader/s66;

    const-string v5, "Install Referrer Reporter is not available"

    .line 112
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_12
    new-instance v10, Lcom/shabakaty/downloader/ga6;

    .line 113
    invoke-direct {v10, v7, v0}, Lcom/shabakaty/downloader/ga6;-><init>(Lcom/shabakaty/downloader/cb6;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/shabakaty/downloader/cb6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    new-instance v0, Landroid/content/Intent;

    const-string v14, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 116
    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 117
    invoke-direct {v14, v5, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v14, v7, Lcom/shabakaty/downloader/cb6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 118
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 119
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    if-nez v14, :cond_13

    iget-object v0, v7, Lcom/shabakaty/downloader/cb6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 121
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->j:Lcom/shabakaty/downloader/s66;

    const-string v5, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 122
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_13
    const/4 v15, 0x0

    .line 123
    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_16

    .line 124
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_16

    .line 125
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 126
    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v14, :cond_18

    .line 127
    iget-object v15, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 128
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v14, :cond_15

    .line 129
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 130
    invoke-virtual {v7}, Lcom/shabakaty/downloader/cb6;->a()Z

    move-result v5

    if-eqz v5, :cond_15

    new-instance v5, Landroid/content/Intent;

    .line 131
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    :try_start_4
    invoke-static {}, Lcom/shabakaty/downloader/kb0;->b()Lcom/shabakaty/downloader/kb0;

    move-result-object v0

    iget-object v14, v7, Lcom/shabakaty/downloader/cb6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 133
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    const/4 v15, 0x1

    .line 134
    invoke-virtual {v0, v14, v5, v10, v15}, Lcom/shabakaty/downloader/kb0;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v5, v7, Lcom/shabakaty/downloader/cb6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 135
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v5

    .line 136
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/b;->q()Lcom/shabakaty/downloader/s66;

    move-result-object v5

    const-string v10, "Install Referrer Service is"
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v14, "available"

    const-string v15, "not available"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v16, v14

    const/4 v14, 0x1

    if-eq v14, v0, :cond_14

    move-object v14, v15

    goto :goto_8

    :cond_14
    move-object/from16 v14, v16

    .line 137
    :goto_8
    :try_start_6
    invoke-virtual {v5, v10, v14}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 138
    :try_start_7
    iget-object v5, v7, Lcom/shabakaty/downloader/cb6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 139
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v5

    .line 140
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v5

    const-string v7, "Exception occurred while binding to Install Referrer Service"

    .line 141
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v5, v7, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    .line 143
    :cond_15
    iget-object v0, v7, Lcom/shabakaty/downloader/cb6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 145
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v5, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 146
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_a

    :cond_16
    iget-object v0, v7, Lcom/shabakaty/downloader/cb6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 147
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 148
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->l:Lcom/shabakaty/downloader/s66;

    const-string v5, "Play Service for fetching Install Referrer is unavailable on device"

    .line 149
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_a

    .line 150
    :cond_17
    :goto_9
    iget-object v0, v7, Lcom/shabakaty/downloader/cb6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 152
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->j:Lcom/shabakaty/downloader/s66;

    const-string v5, "Install Referrer Reporter was called with invalid app package name"

    .line 153
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 154
    :cond_18
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->d()V

    new-instance v5, Landroid/os/Bundle;

    .line 156
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v14, 0x1

    .line 157
    invoke-virtual {v5, v9, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 158
    invoke-virtual {v5, v4, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v4, v21

    const-wide/16 v9, 0x0

    .line 159
    invoke-virtual {v5, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 160
    invoke-virtual {v5, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v7, v20

    .line 161
    invoke-virtual {v5, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v15, v22

    .line 162
    invoke-virtual {v5, v15, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v9, 0x1

    .line 163
    invoke-virtual {v5, v6, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 164
    iget-boolean v0, v2, Lcom/shabakaty/downloader/ma7;->G:Z

    if-eqz v0, :cond_19

    .line 165
    invoke-virtual {v5, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 166
    :cond_19
    iget-object v3, v2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 167
    invoke-static {v3, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 169
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 170
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 172
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uv6;->f()V

    const-string v8, "first_open_count"

    .line 173
    invoke-virtual {v0, v3, v8}, Lcom/shabakaty/downloader/mh5;->A(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 174
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 175
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 177
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v4, "PackageManager is null, first open report might be inaccurate. appId"

    .line 178
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 179
    invoke-virtual {v0, v4, v3}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v20, v11

    :cond_1a
    :goto_b
    const-wide/16 v3, 0x0

    goto/16 :goto_12

    .line 180
    :cond_1b
    :try_start_8
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 181
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 182
    invoke-static {v0}, Lcom/shabakaty/downloader/z85;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/q93;

    move-result-object v0

    .line 183
    iget-object v0, v0, Lcom/shabakaty/downloader/q93;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v22, v15

    move-object v15, v0

    goto :goto_c

    :catch_2
    move-exception v0

    .line 184
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v10

    .line 185
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v14, "Package info is null, first open report might be inaccurate. appId"

    move-object/from16 v22, v15

    .line 186
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 187
    invoke-virtual {v10, v14, v15, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x0

    :goto_c
    if-eqz v15, :cond_20

    move-object/from16 v20, v11

    .line 188
    iget-wide v10, v15, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v16, 0x0

    cmp-long v0, v10, v16

    if-eqz v0, :cond_21

    .line 189
    iget-wide v14, v15, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v10, v14

    if-eqz v0, :cond_1e

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v0

    sget-object v10, Lcom/shabakaty/downloader/d46;->h0:Lcom/shabakaty/downloader/z36;

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v14, 0x0

    cmp-long v0, v8, v14

    if-nez v0, :cond_1c

    const-wide/16 v14, 0x1

    .line 191
    invoke-virtual {v5, v4, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1c
    :goto_d
    const/4 v14, 0x0

    goto :goto_e

    :cond_1d
    const-wide/16 v14, 0x1

    .line 192
    invoke-virtual {v5, v4, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_d

    :cond_1e
    const/4 v11, 0x0

    const/4 v14, 0x1

    .line 193
    :goto_e
    new-instance v0, Lcom/shabakaty/downloader/qy6;

    const-string v15, "_fi"

    const/4 v4, 0x1

    if-eq v4, v14, :cond_1f

    const-wide/16 v16, 0x0

    goto :goto_f

    :cond_1f
    const-wide/16 v16, 0x1

    .line 194
    :goto_f
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v14, v0

    move-object/from16 v4, v22

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/qy6;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/uw6;->s(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_10

    :cond_20
    move-object/from16 v20, v11

    :cond_21
    move-object/from16 v4, v22

    const/4 v11, 0x0

    :goto_10
    :try_start_a
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 196
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->m()Landroid/content/Context;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/shabakaty/downloader/z85;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/q93;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Lcom/shabakaty/downloader/q93;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_11

    :catch_3
    move-exception v0

    .line 198
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v10

    .line 199
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v10

    const-string v14, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 200
    invoke-virtual {v10, v14, v3, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v15, v11

    :goto_11
    if-eqz v15, :cond_1a

    .line 201
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_22

    const-wide/16 v10, 0x1

    .line 202
    invoke-virtual {v5, v7, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 203
    :cond_22
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1a

    const-wide/16 v10, 0x1

    .line 204
    invoke-virtual {v5, v4, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_b

    :goto_12
    cmp-long v0, v8, v3

    if-ltz v0, :cond_23

    move-object/from16 v3, v20

    .line 205
    invoke-virtual {v5, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 206
    :cond_23
    new-instance v0, Lcom/shabakaty/downloader/ek5;

    new-instance v3, Lcom/shabakaty/downloader/uj5;

    invoke-direct {v3, v5}, Lcom/shabakaty/downloader/uj5;-><init>(Landroid/os/Bundle;)V

    const-string v15, "_f"

    const-string v17, "auto"

    move-object v14, v0

    move-object/from16 v16, v3

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/ek5;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/uj5;Ljava/lang/String;J)V

    .line 207
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/uw6;->h(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    goto :goto_13

    :cond_24
    move-object v5, v15

    .line 208
    new-instance v0, Lcom/shabakaty/downloader/qy6;

    const-string v15, "_fvt"

    .line 209
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v14, v0

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/qy6;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/uw6;->s(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->d()V

    new-instance v0, Landroid/os/Bundle;

    .line 213
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v7, 0x1

    .line 214
    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 215
    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 216
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 217
    iget-boolean v4, v2, Lcom/shabakaty/downloader/ma7;->G:Z

    if-eqz v4, :cond_25

    .line 218
    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 219
    :cond_25
    new-instance v3, Lcom/shabakaty/downloader/ek5;

    new-instance v4, Lcom/shabakaty/downloader/uj5;

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/uj5;-><init>(Landroid/os/Bundle;)V

    const-string v15, "_v"

    const-string v17, "auto"

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/ek5;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/uj5;Ljava/lang/String;J)V

    .line 220
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/uw6;->h(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    .line 221
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v0

    iget-object v3, v2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    sget-object v4, Lcom/shabakaty/downloader/d46;->U:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v0, v3, v4}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Landroid/os/Bundle;

    .line 222
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v3, 0x1

    .line 223
    invoke-virtual {v0, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "_fr"

    .line 224
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/shabakaty/downloader/ek5;

    const-string v15, "_e"

    new-instance v4, Lcom/shabakaty/downloader/uj5;

    .line 225
    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/uj5;-><init>(Landroid/os/Bundle;)V

    const-string v17, "auto"

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/ek5;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/uj5;Ljava/lang/String;J)V

    .line 226
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/uw6;->h(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    goto :goto_14

    .line 227
    :cond_26
    iget-boolean v0, v2, Lcom/shabakaty/downloader/ma7;->z:Z

    if-eqz v0, :cond_27

    new-instance v0, Landroid/os/Bundle;

    .line 228
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 229
    new-instance v3, Lcom/shabakaty/downloader/ek5;

    new-instance v4, Lcom/shabakaty/downloader/uj5;

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/uj5;-><init>(Landroid/os/Bundle;)V

    const-string v15, "_cd"

    const-string v17, "auto"

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/ek5;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/uj5;Ljava/lang/String;J)V

    .line 230
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/uw6;->h(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    .line 231
    :cond_27
    :goto_14
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 232
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 233
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 234
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 235
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mh5;->R()V

    return-void

    :catchall_0
    move-exception v0

    .line 236
    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 237
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 238
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->R()V

    .line 239
    throw v0

    :cond_28
    return-void
.end method

.method public final k()Lcom/shabakaty/downloader/x30;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    const-string v1, "null reference"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    return-object v0
.end method

.method public final l()Lcom/shabakaty/downloader/wt2;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final m()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final n(Lcom/shabakaty/downloader/ve5;Lcom/shabakaty/downloader/ma7;)V
    .locals 11

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 4
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/de6;->e()V

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->d()V

    .line 9
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uw6;->E(Lcom/shabakaty/downloader/ma7;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-boolean v1, p2, Lcom/shabakaty/downloader/ma7;->y:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 11
    invoke-static {v1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/mh5;->Q()V

    .line 13
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    iget-object v3, p1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    .line 14
    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 16
    invoke-static {v1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v2, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 17
    iget-object v2, v2, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/mh5;->F(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ve5;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 19
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v4, "Removing conditional user property"

    .line 20
    iget-object v5, p1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    iget-object v6, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 21
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v6

    iget-object v7, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 22
    iget-object v7, v7, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {v2, v4, v5, v6}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 24
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v4, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 25
    iget-object v4, v4, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/mh5;->x(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v1, Lcom/shabakaty/downloader/ve5;->v:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 26
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v4, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 27
    iget-object v4, v4, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/mh5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p1, Lcom/shabakaty/downloader/ve5;->B:Lcom/shabakaty/downloader/ek5;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {v2}, Lcom/shabakaty/downloader/uj5;->W0()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move-object v5, v2

    .line 29
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    iget-object v4, p1, Lcom/shabakaty/downloader/ve5;->B:Lcom/shabakaty/downloader/ek5;

    .line 30
    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iget-object v4, v4, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    iget-object v6, v1, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/ve5;->B:Lcom/shabakaty/downloader/ek5;

    iget-wide v7, p1, Lcom/shabakaty/downloader/ek5;->u:J

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 32
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/measurement/internal/f;->s0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/shabakaty/downloader/ek5;

    move-result-object p1

    .line 33
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/uw6;->u(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    goto :goto_1

    .line 35
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 36
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v0, "Conditional user property doesn\'t exist"

    .line 37
    iget-object v1, p1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v2

    iget-object p1, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 39
    iget-object p1, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p2, v0, v1, p1}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 42
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 43
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 44
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 45
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mh5;->R()V

    return-void

    :catchall_0
    move-exception p1

    .line 46
    iget-object p2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 47
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 48
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mh5;->R()V

    .line 49
    throw p1

    .line 50
    :cond_5
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    return-void
.end method

.method public final o(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->d()V

    .line 3
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uw6;->E(Lcom/shabakaty/downloader/ma7;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p2, Lcom/shabakaty/downloader/ma7;->y:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    return-void

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/shabakaty/downloader/ma7;->I:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    .line 9
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    new-instance p1, Lcom/shabakaty/downloader/qy6;

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 12
    iget-object v1, p2, Lcom/shabakaty/downloader/ma7;->I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/qy6;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/uw6;->s(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V

    return-void

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v1

    .line 18
    iget-object v2, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 20
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 21
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mh5;->Q()V

    .line 22
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 23
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 24
    iget-object p2, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v1, "null reference"

    .line 25
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v1, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, p2, v1}, Lcom/shabakaty/downloader/mh5;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 28
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 29
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mh5;->j()V

    .line 30
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 31
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v0, "User property removed"

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v1

    .line 34
    iget-object p1, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {p2, v0, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 37
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 38
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mh5;->R()V

    return-void

    :catchall_0
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 40
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 41
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mh5;->R()V

    .line 42
    throw p1
.end method

.method public final p(Lcom/shabakaty/downloader/ma7;)V
    .locals 7

    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->x:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/uw6;->y:Ljava/util/List;

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->x:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 3
    invoke-static {v1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 4
    iget-object v2, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v3, "null reference"

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 9
    :try_start_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "apps"

    .line 10
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 15
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 16
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 17
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 18
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 19
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v3, "Reset analytics data. app, records"

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 25
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 26
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    .line 27
    invoke-virtual {v1, v3, v2, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/shabakaty/downloader/ma7;->y:Z

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/uw6;->j(Lcom/shabakaty/downloader/ma7;)V

    :cond_2
    return-void
.end method

.method public final q(Lcom/shabakaty/downloader/ve5;Lcom/shabakaty/downloader/ma7;)V
    .locals 11

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p1, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    .line 4
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 6
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v1, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/de6;->e()V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->d()V

    .line 11
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uw6;->E(Lcom/shabakaty/downloader/ma7;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-boolean v1, p2, Lcom/shabakaty/downloader/ma7;->y:Z

    if-nez v1, :cond_1

    .line 13
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    return-void

    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/ve5;

    .line 14
    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ve5;-><init>(Lcom/shabakaty/downloader/ve5;)V

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/shabakaty/downloader/ve5;->v:Z

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 15
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 16
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->Q()V

    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 17
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v3, v1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    .line 18
    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v4, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    iget-object v4, v4, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/mh5;->F(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ve5;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    iget-object v4, v1, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v4, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 24
    iget-object v5, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v5

    iget-object v6, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 26
    iget-object v6, v6, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    iget-object v7, v2, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    .line 27
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-boolean v4, v2, Lcom/shabakaty/downloader/ve5;->v:Z

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    iput-object v4, v1, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    iget-wide v4, v2, Lcom/shabakaty/downloader/ve5;->u:J

    iput-wide v4, v1, Lcom/shabakaty/downloader/ve5;->u:J

    iget-wide v4, v2, Lcom/shabakaty/downloader/ve5;->y:J

    iput-wide v4, v1, Lcom/shabakaty/downloader/ve5;->y:J

    iget-object v4, v2, Lcom/shabakaty/downloader/ve5;->w:Ljava/lang/String;

    iput-object v4, v1, Lcom/shabakaty/downloader/ve5;->w:Ljava/lang/String;

    iget-object v4, v2, Lcom/shabakaty/downloader/ve5;->z:Lcom/shabakaty/downloader/ek5;

    iput-object v4, v1, Lcom/shabakaty/downloader/ve5;->z:Lcom/shabakaty/downloader/ek5;

    iput-boolean v3, v1, Lcom/shabakaty/downloader/ve5;->v:Z

    new-instance v3, Lcom/shabakaty/downloader/qy6;

    iget-object v4, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 28
    iget-object v6, v4, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    iget-object v5, v2, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    iget-wide v7, v5, Lcom/shabakaty/downloader/qy6;->t:J

    .line 29
    invoke-virtual {v4}, Lcom/shabakaty/downloader/qy6;->W0()Ljava/lang/Object;

    move-result-object v9

    iget-object v2, v2, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    iget-object v10, v2, Lcom/shabakaty/downloader/qy6;->w:Ljava/lang/String;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/shabakaty/downloader/qy6;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    goto :goto_0

    .line 30
    :cond_3
    iget-object v2, v1, Lcom/shabakaty/downloader/ve5;->w:Ljava/lang/String;

    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p1, Lcom/shabakaty/downloader/qy6;

    iget-object v2, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 32
    iget-object v5, v2, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    iget-wide v6, v1, Lcom/shabakaty/downloader/ve5;->u:J

    .line 33
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qy6;->W0()Ljava/lang/Object;

    move-result-object v8

    iget-object v2, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    iget-object v9, v2, Lcom/shabakaty/downloader/qy6;->w:Ljava/lang/String;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/qy6;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    iput-boolean v3, v1, Lcom/shabakaty/downloader/ve5;->v:Z

    const/4 p1, 0x1

    .line 34
    :cond_4
    :goto_0
    iget-boolean v2, v1, Lcom/shabakaty/downloader/ve5;->v:Z

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    new-instance v10, Lcom/shabakaty/downloader/uy6;

    iget-object v4, v1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    .line 35
    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v5, v1, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    iget-object v6, v2, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    iget-wide v7, v2, Lcom/shabakaty/downloader/qy6;->t:J

    .line 37
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qy6;->W0()Ljava/lang/Object;

    move-result-object v9

    .line 38
    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v10

    .line 39
    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/uy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 40
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 41
    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/mh5;->u(Lcom/shabakaty/downloader/uy6;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v2, "User property updated immediately"

    .line 44
    iget-object v3, v1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 45
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v4

    iget-object v5, v10, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    .line 47
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 48
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 49
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "(2)Too many active user properties, ignoring"

    .line 50
    iget-object v3, v1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 51
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v4

    iget-object v5, v10, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    .line 52
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    .line 53
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 54
    iget-object p1, v1, Lcom/shabakaty/downloader/ve5;->z:Lcom/shabakaty/downloader/ek5;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/shabakaty/downloader/ek5;

    iget-wide v2, v1, Lcom/shabakaty/downloader/ve5;->u:J

    .line 55
    invoke-direct {v0, p1, v2, v3}, Lcom/shabakaty/downloader/ek5;-><init>(Lcom/shabakaty/downloader/ek5;J)V

    .line 56
    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/uw6;->u(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 57
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 58
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/mh5;->t(Lcom/shabakaty/downloader/ve5;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 59
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 60
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string p2, "Conditional property added"

    .line 61
    iget-object v0, v1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v2

    iget-object v3, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 63
    iget-object v3, v3, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 64
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qy6;->W0()Ljava/lang/Object;

    move-result-object v1

    .line 65
    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 66
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 67
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string p2, "Too many conditional properties, ignoring"

    .line 68
    iget-object v0, v1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v2

    iget-object v3, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 70
    iget-object v3, v3, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 71
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qy6;->W0()Ljava/lang/Object;

    move-result-object v1

    .line 72
    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 74
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 75
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 76
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 77
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mh5;->R()V

    return-void

    :catchall_0
    move-exception p1

    .line 78
    iget-object p2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 79
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 80
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mh5;->R()V

    .line 81
    throw p1
.end method

.method public final r(Ljava/lang/String;Lcom/shabakaty/downloader/qg5;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->d()V

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->A:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const-string v1, "null reference"

    .line 5
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uv6;->f()V

    new-instance v1, Landroid/content/ContentValues;

    .line 8
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 9
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qg5;->e()Ljava/lang/String;

    move-result-object p2

    const-string v2, "consent_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "consent_settings"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 12
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 14
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    invoke-virtual {p2, v1, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    .line 20
    invoke-virtual {v0, v1, p1, p2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->d()V

    .line 3
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uw6;->E(Lcom/shabakaty/downloader/ma7;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p2, Lcom/shabakaty/downloader/ma7;->y:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/f;->k0(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x1

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eqz v5, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    iget-object v4, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    .line 9
    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/f;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v8, p1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/uw6;->B:Lcom/shabakaty/downloader/xy6;

    iget-object v4, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v6, "_ev"

    .line 12
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    iget-object v4, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qy6;->W0()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/f;->g0(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v9

    if-eqz v9, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    iget-object v4, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    .line 16
    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/f;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qy6;->W0()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 18
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 19
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v12, v2

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    .line 21
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v6

    iget-object v7, p0, Lcom/shabakaty/downloader/uw6;->B:Lcom/shabakaty/downloader/xy6;

    iget-object v8, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v10, "_ev"

    .line 22
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 23
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qy6;->W0()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 25
    :cond_7
    iget-object v1, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "null reference"

    if-eqz v1, :cond_b

    .line 26
    iget-wide v5, p1, Lcom/shabakaty/downloader/qy6;->t:J

    iget-object v8, p1, Lcom/shabakaty/downloader/qy6;->w:Ljava/lang/String;

    .line 27
    iget-object v1, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 28
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iget-object v3, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 30
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const-string v4, "_sno"

    .line 31
    invoke-virtual {v3, v1, v4}, Lcom/shabakaty/downloader/mh5;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/uy6;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v4, v3, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    .line 32
    instance-of v7, v4, Ljava/lang/Long;

    if-eqz v7, :cond_8

    .line 33
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 34
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 35
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    .line 36
    iget-object v3, v3, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    const-string v7, "Retrieved last session number from database does not contain a valid (long) value"

    .line 37
    invoke-virtual {v4, v7, v3}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget-object v3, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 38
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    const-string v4, "_s"

    .line 39
    invoke-virtual {v3, v1, v4}, Lcom/shabakaty/downloader/mh5;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/jj5;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-wide v3, v1, Lcom/shabakaty/downloader/jj5;->c:J

    .line 40
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 41
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 42
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "Backfill the session number. Last used session number"

    invoke-virtual {v1, v9, v7}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    const-wide/16 v3, 0x0

    .line 43
    :goto_2
    new-instance v1, Lcom/shabakaty/downloader/qy6;

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v4, "_sno"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/qy6;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, v1, p2}, Lcom/shabakaty/downloader/uw6;->s(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V

    :cond_b
    new-instance v1, Lcom/shabakaty/downloader/uy6;

    .line 46
    iget-object v4, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 47
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v5, p1, Lcom/shabakaty/downloader/qy6;->w:Ljava/lang/String;

    .line 49
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v6, p1, Lcom/shabakaty/downloader/qy6;->s:Ljava/lang/String;

    iget-wide v7, p1, Lcom/shabakaty/downloader/qy6;->t:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/uy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 52
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 53
    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v2

    iget-object v3, v1, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    .line 55
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    .line 56
    invoke-virtual {p1, v3, v2, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 57
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 58
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mh5;->Q()V

    .line 59
    :try_start_0
    invoke-static {}, Lcom/shabakaty/downloader/y57;->c()Z

    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 60
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 61
    sget-object v0, Lcom/shabakaty/downloader/d46;->t0:Lcom/shabakaty/downloader/z36;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "_id"

    iget-object v0, v1, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 63
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 64
    iget-object v0, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v2, "_lair"

    .line 65
    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/mh5;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_c
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 67
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 68
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/mh5;->u(Lcom/shabakaty/downloader/uy6;)Z

    move-result p1

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 69
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 70
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mh5;->j()V

    if-nez p1, :cond_d

    .line 71
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 72
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 73
    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v2

    iget-object v3, v1, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    .line 76
    invoke-virtual {p1, v0, v2, v1}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    iget-object v4, p0, Lcom/shabakaty/downloader/uw6;->B:Lcom/shabakaty/downloader/xy6;

    iget-object v5, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 78
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    iget-object p1, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 79
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 80
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mh5;->R()V

    return-void

    :catchall_0
    move-exception p1

    .line 81
    iget-object p2, p0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 82
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 83
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mh5;->R()V

    .line 84
    throw p1
.end method

.method public final t()V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->d()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/shabakaty/downloader/uw6;->u:Z

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/zs6;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 8
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    iput-boolean v3, v1, Lcom/shabakaty/downloader/uw6;->u:Z

    goto/16 :goto_1d

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Upload called in the client side when service should be used"

    .line 12
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    iput-boolean v3, v1, Lcom/shabakaty/downloader/uw6;->u:Z

    goto/16 :goto_1d

    .line 13
    :cond_1
    :try_start_2
    iget-wide v4, v1, Lcom/shabakaty/downloader/uw6;->o:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->D()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    iput-boolean v3, v1, Lcom/shabakaty/downloader/uw6;->u:Z

    goto/16 :goto_1d

    .line 15
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->x:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "Uploading requested multiple times"

    .line 18
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    iput-boolean v3, v1, Lcom/shabakaty/downloader/uw6;->u:Z

    goto/16 :goto_1d

    .line 19
    :cond_3
    :try_start_4
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->b:Lcom/shabakaty/downloader/e86;

    .line 20
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 21
    invoke-virtual {v0}, Lcom/shabakaty/downloader/e86;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "Network not connected, ignoring upload request"

    .line 24
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->D()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    iput-boolean v3, v1, Lcom/shabakaty/downloader/uw6;->u:Z

    goto/16 :goto_1d

    .line 26
    :cond_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v0

    sget-object v8, Lcom/shabakaty/downloader/d46;->Q:Lcom/shabakaty/downloader/z36;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/shabakaty/downloader/hg5;->o(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)I

    move-result v0

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    .line 30
    sget-object v8, Lcom/shabakaty/downloader/d46;->d:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v4, v10

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v0, :cond_5

    .line 31
    invoke-virtual {v1, v9, v10, v11}, Lcom/shabakaty/downloader/uw6;->F(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 32
    iget-object v0, v0, Lcom/shabakaty/downloader/bt6;->i:Lcom/shabakaty/downloader/f96;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f96;->a()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_6

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v4, v10

    .line 35
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 36
    invoke-virtual {v0, v6, v7}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 37
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 38
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mh5;->L()Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v7, -0x1

    if-nez v0, :cond_24

    iget-wide v10, v1, Lcom/shabakaty/downloader/uw6;->z:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_a

    iget-object v10, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 40
    invoke-static {v10}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 41
    :try_start_6
    invoke-virtual {v10}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "select rowid from raw_events order by rowid desc limit 1;"

    .line 42
    invoke-virtual {v0, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 43
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 44
    :cond_7
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v11, v9

    .line 45
    :goto_1
    :try_start_8
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 46
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v10

    .line 47
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v12, "Error querying raw events"

    .line 48
    invoke-virtual {v10, v12, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v11, :cond_8

    .line 49
    :goto_2
    :try_start_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    iput-wide v7, v1, Lcom/shabakaty/downloader/uw6;->z:J

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v9, v11

    :goto_3
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_9
    throw v0

    .line 51
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v0

    sget-object v7, Lcom/shabakaty/downloader/d46;->g:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v0, v6, v7}, Lcom/shabakaty/downloader/hg5;->o(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)I

    move-result v0

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v7

    sget-object v8, Lcom/shabakaty/downloader/d46;->h:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v7, v6, v8}, Lcom/shabakaty/downloader/hg5;->o(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)I

    move-result v7

    .line 53
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 54
    invoke-static {v8}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 55
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 56
    invoke-virtual {v8}, Lcom/shabakaty/downloader/uv6;->f()V

    if-lez v0, :cond_b

    const/4 v10, 0x1

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    .line 57
    :goto_5
    invoke-static {v10}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    if-lez v7, :cond_c

    const/4 v10, 0x1

    goto :goto_6

    :cond_c
    const/4 v10, 0x0

    .line 58
    :goto_6
    invoke-static {v10}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    .line 59
    invoke-static {v6}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 60
    :try_start_a
    invoke-virtual {v8}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "rowid"

    const-string v13, "data"

    const-string v14, "retry_count"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v13

    new-array v15, v2, [Ljava/lang/String;

    aput-object v6, v15, v3

    const-string v12, "queue"

    const-string v14, "app_id=?"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid"

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 62
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 63
    :try_start_b
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_d

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 65
    :try_start_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-wide/from16 v20, v4

    goto/16 :goto_e

    .line 66
    :cond_d
    :try_start_d
    new-instance v12, Ljava/util/ArrayList;

    .line 67
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 68
    :goto_7
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 69
    :try_start_e
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v2, v8, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    iget-object v2, v2, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 70
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 71
    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 72
    invoke-direct {v0, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v10, 0x400

    new-array v10, v10, [B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-wide/from16 v20, v4

    .line 74
    :goto_8
    :try_start_10
    invoke-virtual {v0, v10}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_10

    .line 75
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 76
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    .line 77
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 78
    :try_start_11
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    array-length v2, v0
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    add-int/2addr v2, v13

    if-le v2, v7, :cond_e

    goto/16 :goto_c

    .line 79
    :cond_e
    :try_start_12
    invoke-static {}, Lcom/shabakaty/downloader/nf6;->z1()Lcom/shabakaty/downloader/jf6;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/ny6;->C(Lcom/shabakaty/downloader/vp6;[B)Lcom/shabakaty/downloader/vp6;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/jf6;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const/4 v3, 0x2

    .line 80
    :try_start_13
    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 81
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->P(I)Lcom/shabakaty/downloader/jf6;

    .line 82
    :cond_f
    array-length v0, v0

    add-int/2addr v13, v0

    .line 83
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catch_2
    move-exception v0

    .line 84
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 85
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 86
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "Failed to merge queued bundle. appId"

    .line 87
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 88
    invoke-virtual {v2, v3, v4, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_d

    :cond_10
    const/4 v5, 0x0

    .line 89
    :try_start_14
    invoke-virtual {v3, v10, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    move-wide/from16 v20, v4

    .line 90
    :goto_9
    :try_start_15
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 92
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "Failed to ungzip content"

    .line 93
    invoke-virtual {v2, v3, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    move-wide/from16 v20, v4

    .line 95
    :goto_a
    :try_start_16
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 96
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 97
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "Failed to unzip queued bundle. appId"

    .line 98
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 99
    invoke-virtual {v2, v3, v4, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    :goto_b
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v0, :cond_12

    if-le v13, v7, :cond_11

    goto :goto_c

    :cond_11
    move-wide/from16 v4, v20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_7

    .line 101
    :cond_12
    :goto_c
    :try_start_17
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    move-object v0, v12

    goto :goto_e

    :catch_8
    move-exception v0

    move-wide/from16 v20, v4

    goto :goto_d

    :catchall_2
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_17

    :catch_9
    move-exception v0

    move-wide/from16 v20, v4

    const/4 v11, 0x0

    .line 102
    :goto_d
    :try_start_18
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 103
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 104
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "Error querying bundles. appId"

    .line 105
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-eqz v11, :cond_13

    .line 107
    :try_start_19
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_13
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 109
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/uw6;->L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/qg5;->f()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 111
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/nf6;

    .line 112
    invoke-virtual {v3}, Lcom/shabakaty/downloader/nf6;->D()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 113
    invoke-virtual {v3}, Lcom/shabakaty/downloader/nf6;->D()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_15
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_18

    const/4 v3, 0x0

    .line 114
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_18

    .line 115
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/nf6;

    .line 116
    invoke-virtual {v4}, Lcom/shabakaty/downloader/nf6;->D()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_11

    .line 117
    :cond_16
    invoke-virtual {v4}, Lcom/shabakaty/downloader/nf6;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x0

    .line 118
    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_12

    :cond_17
    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 119
    :cond_18
    :goto_12
    invoke-static {}, Lcom/shabakaty/downloader/ef6;->s()Lcom/shabakaty/downloader/ze6;

    move-result-object v2

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v5

    .line 123
    iget-object v5, v5, Lcom/shabakaty/downloader/hg5;->c:Lcom/shabakaty/downloader/xf5;

    const-string v7, "gaia_collection_enabled"

    .line 124
    invoke-interface {v5, v6, v7}, Lcom/shabakaty/downloader/xf5;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 125
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/uw6;->L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shabakaty/downloader/qg5;->f()Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    goto :goto_13

    :cond_19
    const/4 v5, 0x0

    .line 126
    :goto_13
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/uw6;->L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shabakaty/downloader/qg5;->f()Z

    move-result v7

    .line 127
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/uw6;->L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shabakaty/downloader/qg5;->g()Z

    move-result v8

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v3, :cond_1f

    .line 128
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/jf6;

    .line 129
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v11

    invoke-virtual {v11}, Lcom/shabakaty/downloader/hg5;->q()J

    .line 131
    iget-boolean v11, v10, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v11, :cond_1a

    .line 132
    invoke-virtual {v10}, Lcom/shabakaty/downloader/lu6;->i()V

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_1a
    iget-object v11, v10, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 133
    check-cast v11, Lcom/shabakaty/downloader/nf6;

    invoke-static {v11}, Lcom/shabakaty/downloader/nf6;->Q0(Lcom/shabakaty/downloader/nf6;)V

    move-wide/from16 v11, v20

    .line 134
    invoke-virtual {v10, v11, v12}, Lcom/shabakaty/downloader/jf6;->T(J)Lcom/shabakaty/downloader/jf6;

    iget-object v13, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 135
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x0

    .line 136
    invoke-virtual {v10, v13}, Lcom/shabakaty/downloader/jf6;->Q(Z)Lcom/shabakaty/downloader/jf6;

    if-nez v5, :cond_1b

    .line 137
    invoke-virtual {v10}, Lcom/shabakaty/downloader/jf6;->q0()Lcom/shabakaty/downloader/jf6;

    :cond_1b
    if-nez v7, :cond_1c

    .line 138
    invoke-virtual {v10}, Lcom/shabakaty/downloader/jf6;->w0()Lcom/shabakaty/downloader/jf6;

    .line 139
    invoke-virtual {v10}, Lcom/shabakaty/downloader/jf6;->t0()Lcom/shabakaty/downloader/jf6;

    :cond_1c
    if-nez v8, :cond_1d

    .line 140
    invoke-virtual {v10}, Lcom/shabakaty/downloader/jf6;->o0()Lcom/shabakaty/downloader/jf6;

    .line 141
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v13

    sget-object v14, Lcom/shabakaty/downloader/d46;->V:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v13, v6, v14}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 142
    invoke-virtual {v10}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v13}, Lcom/shabakaty/downloader/xp6;->i()[B

    move-result-object v13

    iget-object v14, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 143
    invoke-static {v14}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 144
    invoke-virtual {v14, v13}, Lcom/shabakaty/downloader/ny6;->x([B)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/shabakaty/downloader/jf6;->t(J)Lcom/shabakaty/downloader/jf6;

    .line 145
    :cond_1e
    invoke-virtual {v2, v10}, Lcom/shabakaty/downloader/ze6;->m(Lcom/shabakaty/downloader/jf6;)Lcom/shabakaty/downloader/ze6;

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v20, v11

    goto/16 :goto_14

    :cond_1f
    move-wide/from16 v11, v20

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->w()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    .line 147
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 148
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 149
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ef6;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/ny6;->D(Lcom/shabakaty/downloader/ef6;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_20
    const/4 v0, 0x0

    :goto_15
    iget-object v5, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 150
    invoke-static {v5}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 151
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ef6;

    .line 152
    invoke-virtual {v5}, Lcom/shabakaty/downloader/xp6;->i()[B

    move-result-object v14

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    sget-object v5, Lcom/shabakaty/downloader/d46;->q:Lcom/shabakaty/downloader/z36;

    const/4 v7, 0x0

    .line 154
    invoke-virtual {v5, v7}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 155
    :try_start_1a
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-static {v7}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    iget-object v7, v1, Lcom/shabakaty/downloader/uw6;->x:Ljava/util/List;

    if-eqz v7, :cond_21

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 158
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v7, "Set uploading progress before finishing the previous upload"

    .line 159
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_16

    .line 160
    :cond_21
    new-instance v7, Ljava/util/ArrayList;

    .line 161
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v1, Lcom/shabakaty/downloader/uw6;->x:Ljava/util/List;

    .line 162
    :goto_16
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 163
    iget-object v4, v4, Lcom/shabakaty/downloader/bt6;->j:Lcom/shabakaty/downloader/f96;

    invoke-virtual {v4, v11, v12}, Lcom/shabakaty/downloader/f96;->b(J)V

    const-string v4, "?"

    if-lez v3, :cond_22

    .line 164
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ze6;->n()Lcom/shabakaty/downloader/nf6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v4

    .line 165
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 166
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v3, "Uploading data. app, uncompressed size, data"

    .line 167
    array-length v7, v14

    .line 168
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7, v0}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/shabakaty/downloader/uw6;->t:Z

    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->b:Lcom/shabakaty/downloader/e86;

    .line 169
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    new-instance v0, Lcom/shabakaty/downloader/ag6;

    .line 170
    invoke-direct {v0, v1, v6}, Lcom/shabakaty/downloader/ag6;-><init>(Lcom/shabakaty/downloader/uw6;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 172
    invoke-virtual {v11}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 173
    invoke-static {v14}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v11, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 175
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/y76;

    const/4 v15, 0x0

    move-object v10, v3

    move-object v12, v6

    move-object/from16 v16, v0

    .line 176
    invoke-direct/range {v10 .. v16}, Lcom/shabakaty/downloader/y76;-><init>(Lcom/shabakaty/downloader/e86;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/shabakaty/downloader/m76;)V

    .line 177
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/de6;->q(Ljava/lang/Runnable;)V
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto/16 :goto_1c

    .line 178
    :catch_a
    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 179
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    .line 180
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 181
    invoke-virtual {v0, v2, v3, v5}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1c

    :catchall_3
    move-exception v0

    move-object v9, v11

    :goto_17
    if-eqz v9, :cond_23

    .line 182
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_23
    throw v0

    :cond_24
    move-wide v11, v4

    .line 184
    iput-wide v7, v1, Lcom/shabakaty/downloader/uw6;->z:J

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 185
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    .line 187
    sget-object v0, Lcom/shabakaty/downloader/d46;->d:Lcom/shabakaty/downloader/z36;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v4, v11, v3

    .line 188
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 189
    invoke-virtual {v2}, Lcom/shabakaty/downloader/uv6;->f()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 190
    :try_start_1c
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 191
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 192
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 193
    :try_start_1d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 194
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 195
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v4, "No expired configs for apps with pending events"

    .line 196
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_19

    :catch_b
    move-exception v0

    goto :goto_18

    :cond_25
    const/4 v4, 0x0

    .line 197
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    move-object v9, v0

    goto :goto_1a

    :catchall_4
    move-exception v0

    move-object v9, v7

    goto :goto_1e

    :catch_c
    move-exception v0

    move-object v3, v7

    .line 198
    :goto_18
    :try_start_1e
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 199
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 200
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v4, "Error selecting expired configs"

    .line 201
    invoke-virtual {v2, v4, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    if-eqz v3, :cond_26

    :goto_19
    move-object v9, v7

    .line 202
    :goto_1a
    :try_start_1f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    :cond_26
    move-object v9, v7

    .line 203
    :goto_1b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 204
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 205
    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 206
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/uw6;->e(Lcom/shabakaty/downloader/xf6;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    :cond_27
    :goto_1c
    const/4 v2, 0x0

    .line 207
    iput-boolean v2, v1, Lcom/shabakaty/downloader/uw6;->u:Z

    .line 208
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->A()V

    return-void

    :catchall_5
    move-exception v0

    move-object v9, v3

    :goto_1e
    if-eqz v9, :cond_28

    .line 209
    :try_start_20
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_28
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    .line 211
    iput-boolean v2, v1, Lcom/shabakaty/downloader/uw6;->u:Z

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->A()V

    .line 213
    throw v0
.end method

.method public final u(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "metadata_fingerprint"

    const-string v5, "app_id"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v8, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v10

    invoke-virtual {v10}, Lcom/shabakaty/downloader/de6;->e()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->d()V

    .line 6
    iget-object v10, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 7
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/shabakaty/downloader/ny6;->j(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v11, v3, Lcom/shabakaty/downloader/ma7;->y:Z

    if-eqz v11, :cond_43

    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 10
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 11
    iget-object v12, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lcom/shabakaty/downloader/wc6;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v15, "_err"

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v3

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blocked event. appId"

    .line 16
    invoke-virtual {v3, v6, v4, v5}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 17
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 18
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/wc6;->p(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 19
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 20
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/wc6;->s(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    iget-object v3, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v11

    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->B:Lcom/shabakaty/downloader/xy6;

    const/16 v14, 0xb

    iget-object v2, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    const/16 v17, 0x0

    const-string v15, "_ev"

    move-object v13, v10

    move-object/from16 v16, v2

    .line 23
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 24
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 25
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 26
    invoke-virtual {v2, v10}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->F()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/shabakaty/downloader/xf6;->C()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/mn0;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/mn0;->a()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 29
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    .line 31
    sget-object v5, Lcom/shabakaty/downloader/d46;->z:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v5, v12}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->o()Lcom/shabakaty/downloader/s66;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/uw6;->e(Lcom/shabakaty/downloader/xf6;)V

    :cond_3
    return-void

    .line 34
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/h76;->c(Lcom/shabakaty/downloader/ek5;)Lcom/shabakaty/downloader/h76;

    move-result-object v2

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v11

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/shabakaty/downloader/hg5;->n(Ljava/lang/String;)I

    move-result v12

    .line 37
    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/f;->y(Lcom/shabakaty/downloader/h76;I)V

    .line 38
    invoke-virtual {v2}, Lcom/shabakaty/downloader/h76;->a()Lcom/shabakaty/downloader/ek5;

    move-result-object v2

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/b;->w()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    .line 40
    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v11

    .line 42
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/b;->q()Lcom/shabakaty/downloader/s66;

    move-result-object v11

    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 43
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v12

    .line 44
    invoke-virtual {v12}, Lcom/shabakaty/downloader/e66;->t()Z

    move-result v13

    if-nez v13, :cond_5

    .line 45
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ek5;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_5
    const-string v13, "origin="

    .line 46
    invoke-static {v13}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 47
    iget-object v14, v2, Lcom/shabakaty/downloader/ek5;->t:Ljava/lang/String;

    .line 48
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",name="

    .line 49
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    .line 50
    invoke-virtual {v12, v14}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 51
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",params="

    .line 52
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    if-nez v14, :cond_6

    const/4 v12, 0x0

    goto :goto_1

    .line 53
    :cond_6
    invoke-virtual {v12}, Lcom/shabakaty/downloader/e66;->t()Z

    move-result v16

    if-nez v16, :cond_7

    .line 54
    invoke-virtual {v14}, Lcom/shabakaty/downloader/uj5;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 55
    :cond_7
    invoke-virtual {v14}, Lcom/shabakaty/downloader/uj5;->W0()Landroid/os/Bundle;

    move-result-object v14

    .line 56
    invoke-virtual {v12, v14}, Lcom/shabakaty/downloader/e66;->p(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    .line 57
    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    const-string v13, "Logging event"

    .line 59
    invoke-virtual {v11, v13, v12}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 60
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 61
    invoke-virtual {v11}, Lcom/shabakaty/downloader/mh5;->Q()V

    .line 62
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    .line 63
    invoke-static {}, Lcom/shabakaty/downloader/y57;->c()Z

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v11

    sget-object v12, Lcom/shabakaty/downloader/d46;->t0:Lcom/shabakaty/downloader/z36;

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v11

    sget-object v12, Lcom/shabakaty/downloader/d46;->u0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v11, v13, v12}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 66
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 67
    iget-object v12, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v13, "_lair"

    .line 68
    invoke-virtual {v11, v12, v13}, Lcom/shabakaty/downloader/mh5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v11, "ecommerce_purchase"

    iget-object v12, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    .line 69
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "refund"

    const/16 v28, 0x1

    if-nez v11, :cond_b

    :try_start_1
    const-string v11, "purchase"

    iget-object v13, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    .line 70
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    .line 71
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_3

    :cond_a
    const/4 v11, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v11, 0x1

    :goto_4
    const-string v13, "_iap"

    iget-object v14, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    .line 72
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    goto :goto_5

    :cond_c
    move-wide/from16 v29, v8

    move-object v8, v15

    goto/16 :goto_e

    :cond_d
    :goto_5
    iget-object v13, v2, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    const-string v14, "currency"

    .line 73
    invoke-virtual {v13, v14}, Lcom/shabakaty/downloader/uj5;->F1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v11, :cond_10

    iget-object v11, v2, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    .line 74
    invoke-virtual {v11}, Lcom/shabakaty/downloader/uj5;->o1()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v18

    const-wide/16 v20, 0x0

    cmpl-double v11, v16, v20

    if-nez v11, :cond_e

    iget-object v11, v2, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    .line 75
    invoke-virtual {v11}, Lcom/shabakaty/downloader/uj5;->D1()Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v20, v15

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    mul-double v16, v14, v18

    goto :goto_6

    :cond_e
    move-object/from16 v20, v15

    :goto_6
    const-wide/high16 v14, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v11, v16, v14

    if-gtz v11, :cond_f

    const-wide/high16 v14, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v11, v16, v14

    if-ltz v11, :cond_f

    .line 76
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    iget-object v11, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    .line 77
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    neg-long v14, v14

    goto :goto_7

    .line 78
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 80
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 81
    invoke-virtual {v2, v3, v4, v5}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 82
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 83
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 84
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 85
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->R()V

    return-void

    :cond_10
    move-object/from16 v20, v15

    :try_start_2
    iget-object v11, v2, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    .line 86
    invoke-virtual {v11}, Lcom/shabakaty/downloader/uj5;->D1()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 87
    :cond_11
    :goto_7
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_15

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 88
    invoke-virtual {v13, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "[A-Z]{3}"

    .line 89
    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "_ltv_"

    .line 90
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_12

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_8
    move-object v13, v11

    goto :goto_9

    .line 91
    :cond_12
    new-instance v11, Ljava/lang/String;

    .line 92
    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_9
    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 93
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 94
    invoke-virtual {v11, v10, v13}, Lcom/shabakaty/downloader/mh5;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/uy6;

    move-result-object v11

    if-eqz v11, :cond_14

    iget-object v11, v11, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    .line 95
    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_13

    goto :goto_b

    .line 96
    :cond_13
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v18, Lcom/shabakaty/downloader/uy6;

    move-object/from16 v16, v13

    iget-object v13, v2, Lcom/shabakaty/downloader/ek5;->t:Ljava/lang/String;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v17

    check-cast v17, Lcom/shabakaty/downloader/mn0;

    invoke-virtual/range {v17 .. v17}, Lcom/shabakaty/downloader/mn0;->a()J

    move-result-wide v21

    add-long/2addr v11, v14

    .line 98
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    move-object/from16 v14, v16

    move-wide/from16 v29, v8

    move-object/from16 v8, v20

    move-wide/from16 v15, v21

    invoke-direct/range {v11 .. v17}, Lcom/shabakaty/downloader/uy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_a
    move-object/from16 v9, v18

    goto :goto_d

    :cond_14
    :goto_b
    move-wide/from16 v29, v8

    move-object/from16 v16, v13

    move-object/from16 v8, v20

    .line 99
    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 100
    invoke-static {v9}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v11

    sget-object v12, Lcom/shabakaty/downloader/d46;->E:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v11, v10, v12}, Lcom/shabakaty/downloader/hg5;->o(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .line 102
    invoke-static {v10}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 104
    invoke-virtual {v9}, Lcom/shabakaty/downloader/uv6;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :try_start_3
    invoke-virtual {v9}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v10, v13, v17

    aput-object v10, v13, v28

    .line 106
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x2

    aput-object v11, v13, v17

    const-string v11, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    .line 107
    invoke-virtual {v12, v11, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 108
    :try_start_4
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 109
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v9

    .line 110
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v9

    const-string v12, "Error pruning currencies. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v12, v13, v11}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    :goto_c
    new-instance v18, Lcom/shabakaty/downloader/uy6;

    iget-object v13, v2, Lcom/shabakaty/downloader/ek5;->t:Ljava/lang/String;

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/mn0;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/mn0;->a()J

    move-result-wide v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    move-object/from16 v14, v16

    move-wide/from16 v15, v19

    invoke-direct/range {v11 .. v17}, Lcom/shabakaty/downloader/uy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_a

    :goto_d
    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 113
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 114
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/mh5;->u(Lcom/shabakaty/downloader/uy6;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v11

    .line 116
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v11

    const-string v12, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 117
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v14

    iget-object v15, v9, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    .line 118
    invoke-virtual {v14, v15}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v9, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    .line 119
    invoke-virtual {v11, v12, v13, v14, v9}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v11

    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->B:Lcom/shabakaty/downloader/xy6;

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 121
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_e

    :cond_15
    move-wide/from16 v29, v8

    move-object/from16 v8, v20

    :cond_16
    :goto_e
    iget-object v9, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    .line 122
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/f;->V(Ljava/lang/String;)Z

    move-result v9

    iget-object v11, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    .line 123
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    iget-object v11, v2, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    if-nez v11, :cond_17

    const-wide/16 v11, 0x0

    goto :goto_10

    .line 125
    :cond_17
    iget-object v12, v11, Lcom/shabakaty/downloader/uj5;->r:Landroid/os/Bundle;

    .line 126
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-wide/16 v13, 0x0

    .line 127
    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    .line 128
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 129
    invoke-virtual {v11, v15}, Lcom/shabakaty/downloader/uj5;->E1(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v11

    .line 130
    instance-of v11, v15, [Landroid/os/Parcelable;

    if-eqz v11, :cond_18

    .line 131
    check-cast v15, [Landroid/os/Parcelable;

    array-length v11, v15

    move-object/from16 p1, v12

    int-to-long v11, v11

    add-long/2addr v13, v11

    move-object/from16 v12, p1

    :cond_18
    move-object/from16 v11, v16

    goto :goto_f

    :cond_19
    move-wide v11, v13

    :goto_10
    const-wide/16 v22, 0x1

    add-long v15, v11, v22

    .line 132
    iget-object v11, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 133
    invoke-static {v11}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->x()J

    move-result-wide v12

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v24, 0x0

    move-object v14, v10

    move/from16 v18, v9

    move/from16 v20, v8

    .line 135
    invoke-virtual/range {v11 .. v21}, Lcom/shabakaty/downloader/mh5;->H(JLjava/lang/String;JZZZZZ)Lcom/shabakaty/downloader/wg5;

    move-result-object v11

    iget-wide v12, v11, Lcom/shabakaty/downloader/wg5;->b:J

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    sget-object v14, Lcom/shabakaty/downloader/d46;->k:Lcom/shabakaty/downloader/z36;

    const/4 v15, 0x0

    .line 137
    invoke-virtual {v14, v15}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    cmp-long v16, v12, v24

    if-lez v16, :cond_1b

    rem-long/2addr v12, v14

    cmp-long v2, v12, v22

    if-nez v2, :cond_1a

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/shabakaty/downloader/wg5;->b:J

    .line 140
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 141
    invoke-virtual {v2, v3, v4, v5}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 142
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 143
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 144
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 145
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->R()V

    return-void

    :cond_1b
    if-eqz v9, :cond_1d

    :try_start_5
    iget-wide v12, v11, Lcom/shabakaty/downloader/wg5;->a:J

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    sget-object v14, Lcom/shabakaty/downloader/d46;->m:Lcom/shabakaty/downloader/z36;

    const/4 v15, 0x0

    .line 147
    invoke-virtual {v14, v15}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v12, v14

    cmp-long v14, v12, v24

    if-lez v14, :cond_1d

    const-wide/16 v3, 0x3e8

    rem-long/2addr v12, v3

    cmp-long v3, v12, v22

    if-nez v3, :cond_1c

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v11, Lcom/shabakaty/downloader/wg5;->a:J

    .line 150
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 151
    invoke-virtual {v3, v4, v5, v6}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v11

    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->B:Lcom/shabakaty/downloader/xy6;

    const/16 v14, 0x10

    const-string v15, "_ev"

    iget-object v2, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v13, v10

    move-object/from16 v16, v2

    .line 153
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 154
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 155
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 156
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 157
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->R()V

    return-void

    :cond_1d
    if-eqz v8, :cond_1f

    :try_start_6
    iget-wide v13, v11, Lcom/shabakaty/downloader/wg5;->d:J

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v8

    iget-object v15, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    sget-object v12, Lcom/shabakaty/downloader/d46;->l:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v8, v15, v12}, Lcom/shabakaty/downloader/hg5;->o(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)I

    move-result v8

    const v12, 0xf4240

    .line 159
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v12, 0x0

    .line 160
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    int-to-long v4, v8

    sub-long/2addr v13, v4

    const-wide/16 v4, 0x0

    cmp-long v8, v13, v4

    if-lez v8, :cond_20

    cmp-long v2, v13, v22

    if-nez v2, :cond_1e

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/shabakaty/downloader/wg5;->d:J

    .line 163
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 164
    invoke-virtual {v2, v3, v4, v5}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 165
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 166
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 167
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 168
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->R()V

    return-void

    :cond_1f
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    :cond_20
    :try_start_7
    iget-object v4, v2, Lcom/shabakaty/downloader/ek5;->s:Lcom/shabakaty/downloader/uj5;

    .line 169
    invoke-virtual {v4}, Lcom/shabakaty/downloader/uj5;->W0()Landroid/os/Bundle;

    move-result-object v4

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    const-string v8, "_o"

    iget-object v11, v2, Lcom/shabakaty/downloader/ek5;->t:Ljava/lang/String;

    invoke-virtual {v5, v4, v8, v11}, Lcom/google/android/gms/measurement/internal/f;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/f;->R(Ljava/lang/String;)Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v8, "_r"

    if-eqz v5, :cond_21

    .line 172
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    invoke-virtual {v5, v4, v12, v11}, Lcom/google/android/gms/measurement/internal/f;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    invoke-virtual {v5, v4, v8, v11}, Lcom/google/android/gms/measurement/internal/f;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    const-string v5, "_s"

    iget-object v11, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    .line 174
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v5, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 175
    invoke-static {v5}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 176
    iget-object v11, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 177
    invoke-virtual {v5, v11, v7}, Lcom/shabakaty/downloader/mh5;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/uy6;

    move-result-object v5

    if-eqz v5, :cond_22

    iget-object v11, v5, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    .line 178
    instance-of v11, v11, Ljava/lang/Long;

    if-eqz v11, :cond_22

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v11

    iget-object v5, v5, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    invoke-virtual {v11, v4, v7, v5}, Lcom/google/android/gms/measurement/internal/f;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    iget-object v5, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 180
    invoke-static {v5}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 181
    invoke-static {v10}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 183
    invoke-virtual {v5}, Lcom/shabakaty/downloader/uv6;->f()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 184
    :try_start_9
    invoke-virtual {v5}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 185
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/d;->p()Lcom/shabakaty/downloader/hg5;

    move-result-object v11

    sget-object v12, Lcom/shabakaty/downloader/d46;->p:Lcom/shabakaty/downloader/z36;

    .line 186
    invoke-virtual {v11, v10, v12}, Lcom/shabakaty/downloader/hg5;->o(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)I

    move-result v11

    const v12, 0xf4240

    .line 187
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    .line 188
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 189
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    aput-object v10, v13, v12

    aput-object v11, v13, v28

    const-string v11, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    .line 190
    invoke-virtual {v7, v6, v11, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    int-to-long v11, v5

    goto :goto_11

    :catch_1
    move-exception v0

    move-object v7, v0

    .line 191
    :try_start_a
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 192
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v5

    .line 193
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v5

    const-string v11, "Error deleting over the limit events. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 194
    invoke-virtual {v5, v11, v12, v7}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v11, 0x0

    :goto_11
    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-lez v5, :cond_23

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v5

    .line 196
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v5

    const-string v7, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 197
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 198
    invoke-virtual {v5, v7, v13, v11}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    new-instance v5, Lcom/shabakaty/downloader/bj5;

    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    iget-object v13, v2, Lcom/shabakaty/downloader/ek5;->t:Ljava/lang/String;

    iget-object v15, v2, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    move-object/from16 v33, v6

    iget-wide v6, v2, Lcom/shabakaty/downloader/ek5;->u:J

    const-wide/16 v18, 0x0

    move-object v11, v5

    move-object v14, v10

    move-wide/from16 v16, v6

    move-object/from16 v20, v4

    .line 199
    invoke-direct/range {v11 .. v20}, Lcom/shabakaty/downloader/bj5;-><init>(Lcom/google/android/gms/measurement/internal/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 200
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v4, v5, Lcom/shabakaty/downloader/bj5;->b:Ljava/lang/String;

    .line 201
    invoke-virtual {v2, v10, v4}, Lcom/shabakaty/downloader/mh5;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/jj5;

    move-result-object v2

    if-nez v2, :cond_25

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 202
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 203
    invoke-virtual {v2, v10}, Lcom/shabakaty/downloader/mh5;->B(Ljava/lang/String;)J

    move-result-wide v6

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/shabakaty/downloader/hg5;->i(Ljava/lang/String;)I

    move-result v2

    int-to-long v11, v2

    cmp-long v2, v6, v11

    if-ltz v2, :cond_24

    if-eqz v9, :cond_24

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 207
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v6

    iget-object v5, v5, Lcom/shabakaty/downloader/bj5;->b:Ljava/lang/String;

    .line 208
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/shabakaty/downloader/hg5;->i(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 210
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v11

    iget-object v12, v1, Lcom/shabakaty/downloader/uw6;->B:Lcom/shabakaty/downloader/xy6;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 212
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 213
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 214
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->R()V

    return-void

    :cond_24
    :try_start_b
    new-instance v2, Lcom/shabakaty/downloader/jj5;

    iget-object v13, v5, Lcom/shabakaty/downloader/bj5;->b:Ljava/lang/String;

    iget-wide v6, v5, Lcom/shabakaty/downloader/bj5;->d:J

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v11, v2

    move-object v12, v10

    move-wide/from16 v20, v6

    .line 215
    invoke-direct/range {v11 .. v27}, Lcom/shabakaty/downloader/jj5;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_12

    .line 216
    :cond_25
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    iget-wide v6, v2, Lcom/shabakaty/downloader/jj5;->f:J

    .line 217
    invoke-virtual {v5, v4, v6, v7}, Lcom/shabakaty/downloader/bj5;->a(Lcom/google/android/gms/measurement/internal/d;J)Lcom/shabakaty/downloader/bj5;

    move-result-object v5

    iget-wide v6, v5, Lcom/shabakaty/downloader/bj5;->d:J

    .line 218
    invoke-virtual {v2, v6, v7}, Lcom/shabakaty/downloader/jj5;->c(J)Lcom/shabakaty/downloader/jj5;

    move-result-object v2

    .line 219
    :goto_12
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 220
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 221
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/mh5;->o(Lcom/shabakaty/downloader/jj5;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/de6;->e()V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->d()V

    .line 224
    invoke-static {v5}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/shabakaty/downloader/bj5;->a:Ljava/lang/String;

    .line 226
    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v5, Lcom/shabakaty/downloader/bj5;->a:Ljava/lang/String;

    .line 227
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    .line 228
    invoke-static {}, Lcom/shabakaty/downloader/nf6;->z1()Lcom/shabakaty/downloader/jf6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/jf6;->N()Lcom/shabakaty/downloader/jf6;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/jf6;->J()Lcom/shabakaty/downloader/jf6;

    .line 229
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 230
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->m(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    .line 231
    :cond_26
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->u:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 232
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->u:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->o(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    .line 233
    :cond_27
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->t:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 234
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->t:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->q(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    .line 235
    :cond_28
    iget-wide v6, v3, Lcom/shabakaty/downloader/ma7;->A:J

    const-wide/32 v9, -0x80000000

    cmp-long v4, v6, v9

    if-eqz v4, :cond_29

    long-to-int v4, v6

    .line 236
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->r(I)Lcom/shabakaty/downloader/jf6;

    .line 237
    :cond_29
    iget-wide v6, v3, Lcom/shabakaty/downloader/ma7;->v:J

    invoke-virtual {v2, v6, v7}, Lcom/shabakaty/downloader/jf6;->F(J)Lcom/shabakaty/downloader/jf6;

    .line 238
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 239
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    .line 240
    :cond_2a
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 241
    invoke-static {v4}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/uw6;->L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v4

    iget-object v6, v3, Lcom/shabakaty/downloader/ma7;->M:Ljava/lang/String;

    .line 242
    invoke-static {v6}, Lcom/shabakaty/downloader/qg5;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/qg5;->c(Lcom/shabakaty/downloader/qg5;)Lcom/shabakaty/downloader/qg5;

    move-result-object v4

    .line 243
    invoke-virtual {v4}, Lcom/shabakaty/downloader/qg5;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->v(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    .line 244
    invoke-static {}, Lcom/shabakaty/downloader/n97;->c()Z

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v4

    iget-object v6, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    sget-object v7, Lcom/shabakaty/downloader/d46;->d0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v4, v6, v7}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 245
    invoke-virtual {v2}, Lcom/shabakaty/downloader/jf6;->Z()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->L:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 246
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->L:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->D(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    .line 247
    :cond_2b
    invoke-virtual {v2}, Lcom/shabakaty/downloader/jf6;->Z()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 248
    invoke-virtual {v2}, Lcom/shabakaty/downloader/jf6;->Y()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    .line 249
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 250
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->A0(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    goto :goto_13

    .line 251
    :cond_2c
    invoke-virtual {v2}, Lcom/shabakaty/downloader/jf6;->Z()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 252
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->A0(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    .line 253
    :cond_2d
    :goto_13
    iget-wide v6, v3, Lcom/shabakaty/downloader/ma7;->w:J

    const-wide/16 v9, 0x0

    cmp-long v4, v6, v9

    if-eqz v4, :cond_2e

    .line 254
    invoke-virtual {v2, v6, v7}, Lcom/shabakaty/downloader/jf6;->w(J)Lcom/shabakaty/downloader/jf6;

    .line 255
    :cond_2e
    iget-wide v6, v3, Lcom/shabakaty/downloader/ma7;->J:J

    invoke-virtual {v2, v6, v7}, Lcom/shabakaty/downloader/jf6;->z(J)Lcom/shabakaty/downloader/jf6;

    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 256
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v6, v4, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    iget-object v6, v6, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 257
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->m()Landroid/content/Context;

    move-result-object v6

    .line 258
    invoke-static {v6}, Lcom/shabakaty/downloader/d46;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_32

    .line 259
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_2f

    goto/16 :goto_16

    .line 260
    :cond_2f
    new-instance v7, Ljava/util/ArrayList;

    .line 261
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/shabakaty/downloader/d46;->P:Lcom/shabakaty/downloader/z36;

    const/4 v10, 0x0

    .line 262
    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/z36;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 263
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_30
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "measurement.id."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v11, :cond_30

    .line 265
    :try_start_c
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_30

    .line 266
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, v9, :cond_30

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 268
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v10

    .line 269
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v10

    const-string v11, "Too many experiment IDs. Number of IDs"

    .line 270
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_15

    :catch_2
    move-exception v0

    move-object v10, v0

    .line 271
    :try_start_d
    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 272
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v11

    .line 273
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/b;->r()Lcom/shabakaty/downloader/s66;

    move-result-object v11

    const-string v12, "Experiment ID NumberFormatException"

    invoke-virtual {v11, v12, v10}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    .line 274
    :cond_31
    :goto_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_33

    :cond_32
    :goto_16
    const/4 v7, 0x0

    :cond_33
    if-eqz v7, :cond_34

    .line 275
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/jf6;->j0(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/jf6;

    .line 276
    :cond_34
    iget-object v4, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 277
    invoke-static {v4}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/uw6;->L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v4

    iget-object v6, v3, Lcom/shabakaty/downloader/ma7;->M:Ljava/lang/String;

    .line 278
    invoke-static {v6}, Lcom/shabakaty/downloader/qg5;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/qg5;->c(Lcom/shabakaty/downloader/qg5;)Lcom/shabakaty/downloader/qg5;

    move-result-object v4

    .line 279
    invoke-virtual {v4}, Lcom/shabakaty/downloader/qg5;->f()Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, v1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 280
    iget-object v7, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 281
    invoke-virtual {v6, v7, v4}, Lcom/shabakaty/downloader/bt6;->j(Ljava/lang/String;Lcom/shabakaty/downloader/qg5;)Landroid/util/Pair;

    move-result-object v6

    .line 282
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 283
    iget-boolean v7, v3, Lcom/shabakaty/downloader/ma7;->F:Z

    if-eqz v7, :cond_35

    .line 284
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/jf6;->O(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    .line 285
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_35

    .line 286
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/jf6;->H(Z)Lcom/shabakaty/downloader/jf6;

    :cond_35
    iget-object v6, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 287
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->q()Lcom/shabakaty/downloader/ti5;

    move-result-object v6

    .line 288
    invoke-virtual {v6}, Lcom/shabakaty/downloader/mi6;->h()V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/jf6;->x(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    iget-object v6, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 289
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->q()Lcom/shabakaty/downloader/ti5;

    move-result-object v6

    .line 290
    invoke-virtual {v6}, Lcom/shabakaty/downloader/mi6;->h()V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/jf6;->I(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    iget-object v6, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 291
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->q()Lcom/shabakaty/downloader/ti5;

    move-result-object v6

    .line 292
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ti5;->p()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/jf6;->S(I)Lcom/shabakaty/downloader/jf6;

    iget-object v6, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 293
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->q()Lcom/shabakaty/downloader/ti5;

    move-result-object v6

    .line 294
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ti5;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/jf6;->V(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/d46;->m0:Lcom/shabakaty/downloader/z36;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 296
    iget-wide v9, v3, Lcom/shabakaty/downloader/ma7;->C:J

    invoke-virtual {v2, v9, v10}, Lcom/shabakaty/downloader/jf6;->B0(J)Lcom/shabakaty/downloader/jf6;

    :cond_36
    iget-object v6, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 297
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->d()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 298
    invoke-virtual {v2}, Lcom/shabakaty/downloader/jf6;->X()Ljava/lang/String;

    const/4 v6, 0x0

    .line 299
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_37

    goto :goto_17

    .line 300
    :cond_37
    invoke-virtual {v2}, Lcom/shabakaty/downloader/jf6;->y()Lcom/shabakaty/downloader/jf6;

    throw v6

    :cond_38
    :goto_17
    iget-object v6, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 301
    invoke-static {v6}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 302
    iget-object v9, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v6

    if-nez v6, :cond_3b

    new-instance v6, Lcom/shabakaty/downloader/xf6;

    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 303
    iget-object v10, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-direct {v6, v9, v10}, Lcom/shabakaty/downloader/xf6;-><init>(Lcom/google/android/gms/measurement/internal/d;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/uw6;->S(Lcom/shabakaty/downloader/qg5;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/xf6;->f(Ljava/lang/String;)V

    .line 305
    iget-object v9, v3, Lcom/shabakaty/downloader/ma7;->B:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/xf6;->n(Ljava/lang/String;)V

    .line 306
    iget-object v9, v3, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/xf6;->p(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v4}, Lcom/shabakaty/downloader/qg5;->f()Z

    move-result v9

    if-eqz v9, :cond_39

    iget-object v9, v1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 308
    iget-object v10, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/bt6;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 309
    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/xf6;->x(Ljava/lang/String;)V

    :cond_39
    const-wide/16 v9, 0x0

    .line 310
    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/xf6;->u(J)V

    .line 311
    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/xf6;->v(J)V

    .line 312
    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/xf6;->t(J)V

    .line 313
    iget-object v9, v3, Lcom/shabakaty/downloader/ma7;->t:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/xf6;->h(Ljava/lang/String;)V

    .line 314
    iget-wide v9, v3, Lcom/shabakaty/downloader/ma7;->A:J

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/xf6;->i(J)V

    .line 315
    iget-object v9, v3, Lcom/shabakaty/downloader/ma7;->u:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/xf6;->g(Ljava/lang/String;)V

    .line 316
    iget-wide v9, v3, Lcom/shabakaty/downloader/ma7;->v:J

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/xf6;->q(J)V

    .line 317
    iget-wide v9, v3, Lcom/shabakaty/downloader/ma7;->w:J

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/xf6;->k(J)V

    .line 318
    iget-boolean v9, v3, Lcom/shabakaty/downloader/ma7;->y:Z

    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/xf6;->w(Z)V

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 320
    iget-wide v9, v3, Lcom/shabakaty/downloader/ma7;->C:J

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/xf6;->e(J)V

    .line 321
    :cond_3a
    iget-wide v9, v3, Lcom/shabakaty/downloader/ma7;->J:J

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/xf6;->l(J)V

    iget-object v7, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 322
    invoke-static {v7}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 323
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/mh5;->n(Lcom/shabakaty/downloader/xf6;)V

    .line 324
    :cond_3b
    invoke-virtual {v4}, Lcom/shabakaty/downloader/qg5;->g()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 325
    invoke-virtual {v6}, Lcom/shabakaty/downloader/xf6;->N()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 326
    invoke-virtual {v6}, Lcom/shabakaty/downloader/xf6;->N()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->n(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    .line 327
    :cond_3c
    invoke-virtual {v6}, Lcom/shabakaty/downloader/xf6;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 328
    invoke-virtual {v6}, Lcom/shabakaty/downloader/xf6;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/jf6;->C(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;

    :cond_3d
    iget-object v4, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 329
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 330
    iget-object v3, v3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/mh5;->O(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 331
    :goto_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3e

    .line 332
    invoke-static {}, Lcom/shabakaty/downloader/th6;->v()Lcom/shabakaty/downloader/mh6;

    move-result-object v6

    .line 333
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/uy6;

    iget-object v7, v7, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/mh6;->n(Ljava/lang/String;)Lcom/shabakaty/downloader/mh6;

    .line 334
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/uy6;

    iget-wide v9, v7, Lcom/shabakaty/downloader/uy6;->d:J

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/mh6;->o(J)Lcom/shabakaty/downloader/mh6;

    iget-object v7, v1, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 335
    invoke-static {v7}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 336
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/uy6;

    iget-object v9, v9, Lcom/shabakaty/downloader/uy6;->e:Ljava/lang/Object;

    invoke-virtual {v7, v6, v9}, Lcom/shabakaty/downloader/ny6;->K(Lcom/shabakaty/downloader/mh6;Ljava/lang/Object;)V

    .line 337
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/jf6;->m0(Lcom/shabakaty/downloader/mh6;)Lcom/shabakaty/downloader/jf6;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_3e
    :try_start_e
    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 338
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 339
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/nf6;

    .line 340
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 341
    invoke-virtual {v3}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 342
    invoke-static {v4}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {v4}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    invoke-virtual {v4}, Lcom/shabakaty/downloader/xp6;->i()[B

    move-result-object v6

    iget-object v7, v3, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    iget-object v7, v7, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 345
    invoke-static {v7}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 346
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/ny6;->x([B)J

    move-result-wide v9

    new-instance v7, Landroid/content/ContentValues;

    .line 347
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 348
    invoke-virtual {v4}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v32

    invoke-virtual {v7, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v13, v31

    invoke-virtual {v7, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "metadata"

    .line 350
    invoke-virtual {v7, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 351
    :try_start_f
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v11, "raw_events_metadata"

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 352
    invoke-virtual {v6, v11, v15, v7, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 353
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v3, v5, Lcom/shabakaty/downloader/bj5;->f:Lcom/shabakaty/downloader/uj5;

    .line 354
    iget-object v3, v3, Lcom/shabakaty/downloader/uj5;->r:Landroid/os/Bundle;

    .line 355
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 356
    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 357
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 358
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_19

    .line 359
    :cond_40
    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->a:Lcom/shabakaty/downloader/wc6;

    .line 360
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    iget-object v4, v5, Lcom/shabakaty/downloader/bj5;->a:Ljava/lang/String;

    iget-object v6, v5, Lcom/shabakaty/downloader/bj5;->b:Ljava/lang/String;

    .line 361
    invoke-virtual {v3, v4, v6}, Lcom/shabakaty/downloader/wc6;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v14, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 362
    invoke-static {v14}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->x()J

    move-result-wide v15

    iget-object v4, v5, Lcom/shabakaty/downloader/bj5;->a:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v4

    invoke-virtual/range {v14 .. v19}, Lcom/shabakaty/downloader/mh5;->G(JLjava/lang/String;ZZ)Lcom/shabakaty/downloader/wg5;

    move-result-object v4

    if-eqz v3, :cond_41

    iget-wide v3, v4, Lcom/shabakaty/downloader/wg5;->e:J

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v6

    iget-object v7, v5, Lcom/shabakaty/downloader/bj5;->a:Ljava/lang/String;

    sget-object v8, Lcom/shabakaty/downloader/d46;->o:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v6, v7, v8}, Lcom/shabakaty/downloader/hg5;->o(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v3, v6

    if-gez v8, :cond_41

    goto :goto_19

    :cond_41
    const/16 v28, 0x0

    .line 365
    :goto_19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 366
    invoke-virtual {v2}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 367
    invoke-static {v5}, Lcom/google/android/gms/common/internal/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v5, Lcom/shabakaty/downloader/bj5;->a:Ljava/lang/String;

    .line 368
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v2, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    iget-object v3, v3, Lcom/shabakaty/downloader/uw6;->g:Lcom/shabakaty/downloader/ny6;

    .line 369
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 370
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ny6;->B(Lcom/shabakaty/downloader/bj5;)Lcom/shabakaty/downloader/ud6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/xp6;->i()[B

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    .line 371
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v6, v5, Lcom/shabakaty/downloader/bj5;->a:Ljava/lang/String;

    .line 372
    invoke-virtual {v4, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "name"

    iget-object v7, v5, Lcom/shabakaty/downloader/bj5;->b:Ljava/lang/String;

    .line 373
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "timestamp"

    iget-wide v7, v5, Lcom/shabakaty/downloader/bj5;->d:J

    .line 374
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 375
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "data"

    .line 376
    invoke-virtual {v4, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "realtime"

    .line 377
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 378
    :try_start_11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v7, v33

    .line 379
    invoke-virtual {v3, v7, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_42

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 380
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 381
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v3

    const-string v4, "Failed to insert raw event (got -1). appId"

    iget-object v6, v5, Lcom/shabakaty/downloader/bj5;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 382
    invoke-virtual {v3, v4, v6}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1b

    :cond_42
    const-wide/16 v2, 0x0

    .line 383
    :try_start_12
    iput-wide v2, v1, Lcom/shabakaty/downloader/uw6;->o:J

    goto :goto_1b

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 384
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 385
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 386
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    const-string v4, "Error storing raw event. appId"

    iget-object v5, v5, Lcom/shabakaty/downloader/bj5;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 387
    invoke-virtual {v2, v4, v5, v3}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_1b

    :catch_4
    move-exception v0

    move-object v3, v0

    goto :goto_1a

    :catch_5
    move-exception v0

    move-object v5, v0

    .line 388
    :try_start_13
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 389
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 390
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v3

    const-string v6, "Error storing raw event metadata. appId"

    .line 391
    invoke-virtual {v4}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 392
    invoke-virtual {v3, v6, v4, v5}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    throw v5
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 394
    :goto_1a
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 395
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/b;->p()Lcom/shabakaty/downloader/s66;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 396
    invoke-virtual {v2}, Lcom/shabakaty/downloader/jf6;->X()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 397
    invoke-virtual {v4, v5, v2, v3}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    :goto_1b
    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 399
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 400
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    iget-object v2, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 401
    invoke-static {v2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 402
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mh5;->R()V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->D()V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 405
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->q()Lcom/shabakaty/downloader/s66;

    move-result-object v2

    .line 406
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v29

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 407
    invoke-virtual {v2, v4, v3}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 408
    iget-object v3, v1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 409
    invoke-static {v3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 410
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mh5;->R()V

    .line 411
    throw v2

    .line 412
    :cond_43
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    return-void
.end method

.method public final x()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/uv6;->f()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e()V

    iget-object v3, v2, Lcom/shabakaty/downloader/bt6;->k:Lcom/shabakaty/downloader/f96;

    .line 4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/f96;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f;->s()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/shabakaty/downloader/bt6;->k:Lcom/shabakaty/downloader/f96;

    .line 7
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/f96;->b(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final y(Ljava/lang/String;)Lcom/shabakaty/downloader/ma7;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 1
    invoke-static {v1}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 2
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/mh5;->E(Ljava/lang/String;)Lcom/shabakaty/downloader/xf6;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->P()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uw6;->z(Lcom/shabakaty/downloader/xf6;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    .line 9
    invoke-virtual {v1, v4, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 10
    :cond_2
    :goto_0
    new-instance v30, Lcom/shabakaty/downloader/ma7;

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->S()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->P()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->B()J

    move-result-wide v6

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->O()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->G()J

    move-result-wide v9

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->D()J

    move-result-wide v15

    .line 17
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->A()Z

    move-result v13

    .line 18
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->Q()Ljava/lang/String;

    move-result-object v17

    .line 19
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->r()J

    move-result-wide v23

    .line 20
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->z()Z

    move-result v21

    .line 21
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->K()Ljava/lang/String;

    move-result-object v25

    .line 22
    iget-object v11, v1, Lcom/shabakaty/downloader/xf6;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 23
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v11

    .line 24
    invoke-virtual {v11}, Lcom/shabakaty/downloader/de6;->e()V

    iget-object v11, v1, Lcom/shabakaty/downloader/xf6;->s:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->E()J

    move-result-wide v26

    .line 26
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->a()Ljava/util/List;

    move-result-object v28

    .line 27
    invoke-static {}, Lcom/shabakaty/downloader/n97;->c()Z

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->K()Lcom/shabakaty/downloader/hg5;

    move-result-object v12

    sget-object v14, Lcom/shabakaty/downloader/d46;->d0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v12, v2, v14}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 28
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xf6;->R()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_1

    :cond_3
    move-object/from16 v31, v3

    :goto_1
    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    .line 29
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/uw6;->L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qg5;->e()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-object/from16 v32, v11

    move-wide v10, v15

    move-object/from16 v15, v17

    move-wide/from16 v16, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v32

    move-wide/from16 v25, v26

    move-object/from16 v27, v28

    move-object/from16 v28, v31

    invoke-direct/range {v1 .. v29}, Lcom/shabakaty/downloader/ma7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30

    .line 30
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 31
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v4, "No app data available; dropping"

    .line 32
    invoke-virtual {v1, v4, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final z(Lcom/shabakaty/downloader/xf6;)Ljava/lang/Boolean;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->B()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/z85;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/q93;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/shabakaty/downloader/q93;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->B()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/z85;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/q93;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/shabakaty/downloader/q93;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xf6;->P()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 12
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
