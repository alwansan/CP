.class public final Landroidx/mediarouter/media/g$e;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroidx/mediarouter/media/p$e;
.implements Landroidx/mediarouter/media/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/g$e$c;,
        Landroidx/mediarouter/media/g$e$g;,
        Landroidx/mediarouter/media/g$e$d;,
        Landroidx/mediarouter/media/g$e$e;,
        Landroidx/mediarouter/media/g$e$f;
    }
.end annotation


# instance fields
.field public A:Landroid/support/v4/media/session/MediaSessionCompat$g;

.field public B:Landroidx/mediarouter/media/c$b$b;

.field public final a:Landroid/content/Context;

.field public final b:Z

.field public final c:Landroidx/mediarouter/media/a;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/media/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/g$h;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/y93<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/g$g;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/g$e$g;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Landroidx/mediarouter/media/o$a;

.field public final j:Landroidx/mediarouter/media/g$e$f;

.field public final k:Landroidx/mediarouter/media/g$e$c;

.field public final l:Landroidx/mediarouter/media/p;

.field public final m:Z

.field public n:Landroidx/mediarouter/media/g$h;

.field public o:Landroidx/mediarouter/media/g$h;

.field public p:Landroidx/mediarouter/media/g$h;

.field public q:Landroidx/mediarouter/media/c$e;

.field public r:Landroidx/mediarouter/media/g$h;

.field public s:Landroidx/mediarouter/media/c$e;

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/mediarouter/media/c$e;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lcom/shabakaty/downloader/cq2;

.field public v:Lcom/shabakaty/downloader/cq2;

.field public w:I

.field public x:Landroidx/mediarouter/media/g$f;

.field public y:Landroidx/mediarouter/media/g$e$d;

.field public z:Landroid/support/v4/media/session/MediaSessionCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor",
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->d:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->f:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->g:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->h:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Landroidx/mediarouter/media/o$a;

    invoke-direct {v0}, Landroidx/mediarouter/media/o$a;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->i:Landroidx/mediarouter/media/o$a;

    .line 8
    new-instance v0, Landroidx/mediarouter/media/g$e$f;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/g$e$f;-><init>(Landroidx/mediarouter/media/g$e;)V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->j:Landroidx/mediarouter/media/g$e$f;

    .line 9
    new-instance v0, Landroidx/mediarouter/media/g$e$c;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/g$e$c;-><init>(Landroidx/mediarouter/media/g$e;)V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    .line 11
    new-instance v0, Landroidx/mediarouter/media/g$e$a;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/g$e$a;-><init>(Landroidx/mediarouter/media/g$e;)V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->A:Landroid/support/v4/media/session/MediaSessionCompat$g;

    .line 12
    new-instance v0, Landroidx/mediarouter/media/g$e$b;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/g$e$b;-><init>(Landroidx/mediarouter/media/g$e;)V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->B:Landroidx/mediarouter/media/c$b$b;

    .line 13
    iput-object p1, p0, Landroidx/mediarouter/media/g$e;->a:Landroid/content/Context;

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/ku0;->a:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 15
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ku0;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/shabakaty/downloader/ku0;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ku0;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "activity"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 20
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 21
    iput-boolean v0, p0, Landroidx/mediarouter/media/g$e;->m:Z

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 23
    sget v1, Lcom/shabakaty/downloader/er2;->a:I

    .line 24
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/shabakaty/downloader/er2;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 27
    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x1

    .line 29
    :cond_1
    iput-boolean v2, p0, Landroidx/mediarouter/media/g$e;->b:Z

    goto :goto_0

    .line 30
    :cond_2
    iput-boolean v2, p0, Landroidx/mediarouter/media/g$e;->b:Z

    .line 31
    :goto_0
    iget-boolean v1, p0, Landroidx/mediarouter/media/g$e;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 32
    new-instance v1, Landroidx/mediarouter/media/a;

    new-instance v3, Landroidx/mediarouter/media/g$e$e;

    invoke-direct {v3, p0, v2}, Landroidx/mediarouter/media/g$e$e;-><init>(Landroidx/mediarouter/media/g$e;Landroidx/mediarouter/media/g$a;)V

    invoke-direct {v1, p1, v3}, Landroidx/mediarouter/media/a;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/a$a;)V

    iput-object v1, p0, Landroidx/mediarouter/media/g$e;->c:Landroidx/mediarouter/media/a;

    goto :goto_1

    .line 33
    :cond_3
    iput-object v2, p0, Landroidx/mediarouter/media/g$e;->c:Landroidx/mediarouter/media/a;

    :goto_1
    const/16 v1, 0x18

    if-lt v0, v1, :cond_4

    .line 34
    new-instance v0, Landroidx/mediarouter/media/p$a;

    invoke-direct {v0, p1, p0}, Landroidx/mediarouter/media/p$a;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/p$e;)V

    goto :goto_2

    .line 35
    :cond_4
    new-instance v0, Landroidx/mediarouter/media/p$d;

    invoke-direct {v0, p1, p0}, Landroidx/mediarouter/media/p$d;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/p$e;)V

    .line 36
    :goto_2
    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    return-void

    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Landroidx/mediarouter/media/c;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/g$e;->d(Landroidx/mediarouter/media/c;)Landroidx/mediarouter/media/g$g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroidx/mediarouter/media/g$g;

    invoke-direct {v0, p1}, Landroidx/mediarouter/media/g$g;-><init>(Landroidx/mediarouter/media/c;)V

    .line 3
    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-boolean v1, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v2, 0x201

    invoke-virtual {v1, v2, v0}, Landroidx/mediarouter/media/g$e$c;->b(ILjava/lang/Object;)V

    .line 7
    iget-object v1, p1, Landroidx/mediarouter/media/c;->x:Lcom/shabakaty/downloader/fq2;

    .line 8
    invoke-virtual {p0, v0, v1}, Landroidx/mediarouter/media/g$e;->o(Landroidx/mediarouter/media/g$g;Lcom/shabakaty/downloader/fq2;)V

    .line 9
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->j:Landroidx/mediarouter/media/g$e$f;

    .line 10
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 11
    iput-object v0, p1, Landroidx/mediarouter/media/c;->u:Landroidx/mediarouter/media/c$a;

    .line 12
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->u:Lcom/shabakaty/downloader/cq2;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/c;->q(Lcom/shabakaty/downloader/cq2;)V

    :cond_1
    return-void
.end method

.method public b(Landroidx/mediarouter/media/g$g;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object p1, p1, Landroidx/mediarouter/media/g$g;->c:Landroidx/mediarouter/media/c$d;

    .line 2
    iget-object p1, p1, Landroidx/mediarouter/media/c$d;->a:Landroid/content/ComponentName;

    .line 3
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    .line 4
    invoke-static {p1, v0, p2}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/g$e;->e(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 6
    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->f:Ljava/util/Map;

    new-instance v2, Lcom/shabakaty/downloader/y93;

    invoke-direct {v2, p1, p2}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t unique in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or we\'re trying to assign a unique ID for an already added route"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouter"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v2, 0x2

    .line 8
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "%s_%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0, v3}, Landroidx/mediarouter/media/g$e;->e(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 10
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->f:Ljava/util/Map;

    new-instance v1, Lcom/shabakaty/downloader/y93;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public c()Landroidx/mediarouter/media/g$h;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/g$h;

    .line 2
    iget-object v2, p0, Landroidx/mediarouter/media/g$e;->n:Landroidx/mediarouter/media/g$h;

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroidx/mediarouter/media/g$e;->h(Landroidx/mediarouter/media/g$h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/mediarouter/media/g$h;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->n:Landroidx/mediarouter/media/g$h;

    return-object v0
.end method

.method public final d(Landroidx/mediarouter/media/c;)Landroidx/mediarouter/media/g$g;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/mediarouter/media/g$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/g$g;

    iget-object v2, v2, Landroidx/mediarouter/media/g$g;->a:Landroidx/mediarouter/media/c;

    if-ne v2, p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/mediarouter/media/g$e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/g$g;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/g$h;

    iget-object v2, v2, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public f()Landroidx/mediarouter/media/g$h;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->n:Landroidx/mediarouter/media/g$h;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Landroidx/mediarouter/media/g$h;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Landroidx/mediarouter/media/g$h;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    if-ne v0, v1, :cond_0

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 2
    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/g$h;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 3
    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/g$h;->n(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/g$h;

    .line 5
    iget-object v3, v3, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    .line 7
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 8
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/c$e;

    const/4 v4, 0x0

    .line 12
    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/c$e;->h(I)V

    .line 13
    invoke-virtual {v3}, Landroidx/mediarouter/media/c$e;->d()V

    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 15
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/g$h;

    .line 16
    iget-object v2, p0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    iget-object v3, v1, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 17
    invoke-virtual {v1}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v2

    iget-object v3, v1, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    iget-object v4, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    iget-object v4, v4, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v3, v4}, Landroidx/mediarouter/media/c;->n(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/c$e;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroidx/mediarouter/media/c$e;->e()V

    .line 20
    iget-object v3, p0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    iget-object v1, v1, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-void
.end method

.method public j(Landroidx/mediarouter/media/g$e;Landroidx/mediarouter/media/g$h;Landroidx/mediarouter/media/c$e;ILandroidx/mediarouter/media/g$h;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/mediarouter/media/g$e;",
            "Landroidx/mediarouter/media/g$h;",
            "Landroidx/mediarouter/media/c$e;",
            "I",
            "Landroidx/mediarouter/media/g$h;",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/c$b$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->x:Landroidx/mediarouter/media/g$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$f;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->x:Landroidx/mediarouter/media/g$f;

    .line 4
    :cond_0
    new-instance v0, Landroidx/mediarouter/media/g$f;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Landroidx/mediarouter/media/g$f;-><init>(Landroidx/mediarouter/media/g$e;Landroidx/mediarouter/media/g$h;Landroidx/mediarouter/media/c$e;ILandroidx/mediarouter/media/g$h;Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->x:Landroidx/mediarouter/media/g$f;

    .line 5
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$f;->b()V

    return-void
.end method

.method public k(Landroidx/mediarouter/media/g$h;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MediaRouter"

    if-nez v0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to select removed route: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p1, Landroidx/mediarouter/media/g$h;->g:Z

    if-nez v0, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to select disabled route: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->c:Landroidx/mediarouter/media/a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-eq v0, p1, :cond_2

    .line 7
    iget-object p1, p1, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/a;->s(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/mediarouter/media/g$e;->l(Landroidx/mediarouter/media/g$h;I)V

    return-void
.end method

.method public l(Landroidx/mediarouter/media/g$h;I)V
    .locals 11

    .line 1
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->o:Landroidx/mediarouter/media/g$h;

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 3
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$e;->f()Landroidx/mediarouter/media/g$h;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    .line 6
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 7
    aget-object v5, v0, v4

    .line 8
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    .line 9
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    .line 11
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  "

    .line 13
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    :cond_2
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    if-nez v0, :cond_3

    const-string v0, "MediaRouter"

    const-string v4, "setSelectedRouteInternal is called while sGlobal is null: pkgName="

    .line 15
    invoke-static {v4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/mediarouter/media/g$e;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v0, "MediaRouter"

    const-string v4, "Default route is selected while a BT route is available: pkgName="

    .line 18
    invoke-static {v4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/mediarouter/media/g$e;->a:Landroid/content/Context;

    .line 19
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-ne v0, p1, :cond_5

    return-void

    .line 22
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->r:Landroidx/mediarouter/media/g$h;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 23
    iput-object v3, p0, Landroidx/mediarouter/media/g$e;->r:Landroidx/mediarouter/media/g$h;

    .line 24
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->s:Landroidx/mediarouter/media/c$e;

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/c$e;->h(I)V

    .line 26
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->s:Landroidx/mediarouter/media/c$e;

    invoke-virtual {v0}, Landroidx/mediarouter/media/c$e;->d()V

    .line 27
    iput-object v3, p0, Landroidx/mediarouter/media/g$e;->s:Landroidx/mediarouter/media/c$e;

    .line 28
    :cond_6
    iget-boolean v0, p0, Landroidx/mediarouter/media/g$e;->b:Z

    if-eqz v0, :cond_c

    .line 29
    iget-object v0, p1, Landroidx/mediarouter/media/g$h;->a:Landroidx/mediarouter/media/g$g;

    .line 30
    iget-object v0, v0, Landroidx/mediarouter/media/g$g;->d:Lcom/shabakaty/downloader/fq2;

    if-eqz v0, :cond_7

    .line 31
    iget-boolean v0, v0, Lcom/shabakaty/downloader/fq2;->b:Z

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-eqz v2, :cond_c

    .line 32
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v0

    iget-object v1, p1, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/c;->l(Ljava/lang/String;)Landroidx/mediarouter/media/c$b;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 33
    iget-object p2, p0, Landroidx/mediarouter/media/g$e;->a:Landroid/content/Context;

    .line 34
    invoke-static {p2}, Lcom/shabakaty/downloader/ld0;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->B:Landroidx/mediarouter/media/c$b$b;

    .line 35
    iget-object v2, v0, Landroidx/mediarouter/media/c$b;->a:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p2, :cond_a

    if-eqz v1, :cond_9

    .line 36
    :try_start_0
    iput-object p2, v0, Landroidx/mediarouter/media/c$b;->b:Ljava/util/concurrent/Executor;

    .line 37
    iput-object v1, v0, Landroidx/mediarouter/media/c$b;->c:Landroidx/mediarouter/media/c$b$b;

    .line 38
    iget-object p2, v0, Landroidx/mediarouter/media/c$b;->e:Ljava/util/Collection;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 39
    iget-object p2, v0, Landroidx/mediarouter/media/c$b;->d:Landroidx/mediarouter/media/b;

    .line 40
    iget-object v4, v0, Landroidx/mediarouter/media/c$b;->e:Ljava/util/Collection;

    .line 41
    iput-object v3, v0, Landroidx/mediarouter/media/c$b;->d:Landroidx/mediarouter/media/b;

    .line 42
    iput-object v3, v0, Landroidx/mediarouter/media/c$b;->e:Ljava/util/Collection;

    .line 43
    iget-object v3, v0, Landroidx/mediarouter/media/c$b;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Landroidx/mediarouter/media/d;

    invoke-direct {v5, v0, v1, p2, v4}, Landroidx/mediarouter/media/d;-><init>(Landroidx/mediarouter/media/c$b;Landroidx/mediarouter/media/c$b$b;Landroidx/mediarouter/media/b;Ljava/util/Collection;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    :cond_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iput-object p1, p0, Landroidx/mediarouter/media/g$e;->r:Landroidx/mediarouter/media/g$h;

    .line 46
    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->s:Landroidx/mediarouter/media/c$e;

    .line 47
    invoke-virtual {v0}, Landroidx/mediarouter/media/c$e;->e()V

    return-void

    .line 48
    :cond_9
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Listener shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Executor shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 50
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_b
    const-string v0, "MediaRouter"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedRouteInternal: Failed to create dynamic group route controller. route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_c
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v0

    iget-object v1, p1, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/c;->m(Ljava/lang/String;)Landroidx/mediarouter/media/c$e;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 53
    invoke-virtual {v7}, Landroidx/mediarouter/media/c$e;->e()V

    .line 54
    :cond_d
    sget-boolean v0, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v0, :cond_e

    const-string v0, "MediaRouter"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_e
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-nez v0, :cond_f

    .line 57
    iput-object p1, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    .line 58
    iput-object v7, p0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    .line 59
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v1, 0x106

    new-instance v2, Lcom/shabakaty/downloader/y93;

    invoke-direct {v2, v3, p1}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, p2}, Landroidx/mediarouter/media/g$e$c;->c(ILjava/lang/Object;I)V

    return-void

    :cond_f
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p0

    move-object v6, p1

    move v8, p2

    .line 60
    invoke-virtual/range {v4 .. v10}, Landroidx/mediarouter/media/g$e;->j(Landroidx/mediarouter/media/g$e;Landroidx/mediarouter/media/g$h;Landroidx/mediarouter/media/c$e;ILandroidx/mediarouter/media/g$h;Ljava/util/Collection;)V

    return-void
.end method

.method public m()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/mediarouter/media/f$a;

    invoke-direct {v0}, Landroidx/mediarouter/media/f$a;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 3
    iget-object v6, p0, Landroidx/mediarouter/media/g$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/mediarouter/media/g;

    if-nez v6, :cond_1

    .line 4
    iget-object v6, p0, Landroidx/mediarouter/media/g$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v7, v6, Landroidx/mediarouter/media/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v3, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    .line 6
    iget-object v9, v6, Landroidx/mediarouter/media/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/mediarouter/media/g$c;

    .line 7
    iget-object v10, v9, Landroidx/mediarouter/media/g$c;->c:Landroidx/mediarouter/media/f;

    if-eqz v10, :cond_5

    .line 8
    invoke-virtual {v10}, Landroidx/mediarouter/media/f;->a()V

    .line 9
    iget-object v10, v10, Landroidx/mediarouter/media/f;->b:Ljava/util/List;

    .line 10
    invoke-virtual {v0, v10}, Landroidx/mediarouter/media/f$a;->a(Ljava/util/Collection;)Landroidx/mediarouter/media/f$a;

    .line 11
    iget v9, v9, Landroidx/mediarouter/media/g$c;->d:I

    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x1

    :cond_2
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_3

    .line 12
    iget-boolean v10, p0, Landroidx/mediarouter/media/g$e;->m:Z

    if-nez v10, :cond_3

    const/4 v4, 0x1

    :cond_3
    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_4

    const/4 v4, 0x1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 13
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_6
    iput v3, p0, Landroidx/mediarouter/media/g$e;->w:I

    if-eqz v4, :cond_7

    .line 15
    invoke-virtual {v0}, Landroidx/mediarouter/media/f$a;->c()Landroidx/mediarouter/media/f;

    move-result-object v1

    goto :goto_2

    :cond_7
    sget-object v1, Landroidx/mediarouter/media/f;->c:Landroidx/mediarouter/media/f;

    .line 16
    :goto_2
    invoke-virtual {v0}, Landroidx/mediarouter/media/f$a;->c()Landroidx/mediarouter/media/f;

    move-result-object v0

    .line 17
    iget-boolean v3, p0, Landroidx/mediarouter/media/g$e;->b:Z

    const/4 v6, 0x0

    const-string v7, "MediaRouter"

    if-nez v3, :cond_8

    goto :goto_4

    .line 18
    :cond_8
    iget-object v3, p0, Landroidx/mediarouter/media/g$e;->v:Lcom/shabakaty/downloader/cq2;

    if-eqz v3, :cond_9

    .line 19
    invoke-virtual {v3}, Lcom/shabakaty/downloader/cq2;->a()V

    .line 20
    iget-object v3, v3, Lcom/shabakaty/downloader/cq2;->b:Landroidx/mediarouter/media/f;

    .line 21
    invoke-virtual {v3, v0}, Landroidx/mediarouter/media/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroidx/mediarouter/media/g$e;->v:Lcom/shabakaty/downloader/cq2;

    .line 22
    invoke-virtual {v3}, Lcom/shabakaty/downloader/cq2;->b()Z

    move-result v3

    if-ne v3, v5, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    invoke-virtual {v0}, Landroidx/mediarouter/media/f;->c()Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez v5, :cond_b

    .line 24
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->v:Lcom/shabakaty/downloader/cq2;

    if-nez v0, :cond_a

    goto :goto_4

    .line 25
    :cond_a
    iput-object v6, p0, Landroidx/mediarouter/media/g$e;->v:Lcom/shabakaty/downloader/cq2;

    goto :goto_3

    .line 26
    :cond_b
    new-instance v3, Lcom/shabakaty/downloader/cq2;

    invoke-direct {v3, v0, v5}, Lcom/shabakaty/downloader/cq2;-><init>(Landroidx/mediarouter/media/f;Z)V

    iput-object v3, p0, Landroidx/mediarouter/media/g$e;->v:Lcom/shabakaty/downloader/cq2;

    .line 27
    :goto_3
    sget-boolean v0, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v0, :cond_c

    const-string v0, "Updated MediaRoute2Provider\'s discovery request: "

    .line 28
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroidx/mediarouter/media/g$e;->v:Lcom/shabakaty/downloader/cq2;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_c
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->c:Landroidx/mediarouter/media/a;

    iget-object v3, p0, Landroidx/mediarouter/media/g$e;->v:Lcom/shabakaty/downloader/cq2;

    invoke-virtual {v0, v3}, Landroidx/mediarouter/media/c;->q(Lcom/shabakaty/downloader/cq2;)V

    .line 30
    :goto_4
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->u:Lcom/shabakaty/downloader/cq2;

    if-eqz v0, :cond_d

    .line 31
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq2;->a()V

    .line 32
    iget-object v0, v0, Lcom/shabakaty/downloader/cq2;->b:Landroidx/mediarouter/media/f;

    .line 33
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->u:Lcom/shabakaty/downloader/cq2;

    .line 34
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq2;->b()Z

    move-result v0

    if-ne v0, v5, :cond_d

    return-void

    .line 35
    :cond_d
    invoke-virtual {v1}, Landroidx/mediarouter/media/f;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez v5, :cond_f

    .line 36
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->u:Lcom/shabakaty/downloader/cq2;

    if-nez v0, :cond_e

    return-void

    .line 37
    :cond_e
    iput-object v6, p0, Landroidx/mediarouter/media/g$e;->u:Lcom/shabakaty/downloader/cq2;

    goto :goto_5

    .line 38
    :cond_f
    new-instance v0, Lcom/shabakaty/downloader/cq2;

    invoke-direct {v0, v1, v5}, Lcom/shabakaty/downloader/cq2;-><init>(Landroidx/mediarouter/media/f;Z)V

    iput-object v0, p0, Landroidx/mediarouter/media/g$e;->u:Lcom/shabakaty/downloader/cq2;

    .line 39
    :goto_5
    sget-boolean v0, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v0, :cond_10

    const-string v0, "Updated discovery request: "

    .line 40
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->u:Lcom/shabakaty/downloader/cq2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v4, :cond_11

    if-nez v5, :cond_11

    .line 41
    iget-boolean v0, p0, Landroidx/mediarouter/media/g$e;->m:Z

    if-eqz v0, :cond_11

    const-string v0, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    .line 42
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_11
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v2, v0, :cond_13

    .line 44
    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/g$g;

    iget-object v1, v1, Landroidx/mediarouter/media/g$g;->a:Landroidx/mediarouter/media/c;

    .line 45
    iget-object v3, p0, Landroidx/mediarouter/media/g$e;->c:Landroidx/mediarouter/media/a;

    if-ne v1, v3, :cond_12

    goto :goto_7

    .line 46
    :cond_12
    iget-object v3, p0, Landroidx/mediarouter/media/g$e;->u:Lcom/shabakaty/downloader/cq2;

    invoke-virtual {v1, v3}, Landroidx/mediarouter/media/c;->q(Lcom/shabakaty/downloader/cq2;)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    return-void
.end method

.method public n()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-eqz v0, :cond_8

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->i:Landroidx/mediarouter/media/o$a;

    .line 3
    iget v2, v0, Landroidx/mediarouter/media/g$h;->o:I

    .line 4
    iput v2, v1, Landroidx/mediarouter/media/o$a;->a:I

    .line 5
    iget v2, v0, Landroidx/mediarouter/media/g$h;->p:I

    .line 6
    iput v2, v1, Landroidx/mediarouter/media/o$a;->b:I

    .line 7
    iget v2, v0, Landroidx/mediarouter/media/g$h;->n:I

    .line 8
    iput v2, v1, Landroidx/mediarouter/media/o$a;->c:I

    .line 9
    iget v2, v0, Landroidx/mediarouter/media/g$h;->l:I

    .line 10
    iput v2, v1, Landroidx/mediarouter/media/o$a;->d:I

    .line 11
    iget v2, v0, Landroidx/mediarouter/media/g$h;->k:I

    .line 12
    iput v2, v1, Landroidx/mediarouter/media/o$a;->e:I

    .line 13
    iget-boolean v1, p0, Landroidx/mediarouter/media/g$e;->b:Z

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->c:Landroidx/mediarouter/media/a;

    if-ne v0, v1, :cond_1

    .line 15
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->i:Landroidx/mediarouter/media/o$a;

    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    .line 16
    sget v2, Landroidx/mediarouter/media/a;->H:I

    .line 17
    instance-of v2, v1, Landroidx/mediarouter/media/a$c;

    if-nez v2, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    check-cast v1, Landroidx/mediarouter/media/a$c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->i:Landroidx/mediarouter/media/o$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    .line 22
    iget-object v3, p0, Landroidx/mediarouter/media/g$e;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/g$e$g;

    .line 23
    iget-object v4, v3, Landroidx/mediarouter/media/g$e$g;->a:Landroidx/mediarouter/media/o;

    iget-object v3, v3, Landroidx/mediarouter/media/g$e$g;->b:Landroidx/mediarouter/media/g$e;

    iget-object v3, v3, Landroidx/mediarouter/media/g$e;->i:Landroidx/mediarouter/media/o$a;

    invoke-virtual {v4, v3}, Landroidx/mediarouter/media/o;->a(Landroidx/mediarouter/media/o$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 24
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->y:Landroidx/mediarouter/media/g$e$d;

    if-eqz v0, :cond_9

    .line 25
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {p0}, Landroidx/mediarouter/media/g$e;->f()Landroidx/mediarouter/media/g$h;

    move-result-object v2

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    .line 26
    iget-object v2, p0, Landroidx/mediarouter/media/g$e;->o:Landroidx/mediarouter/media/g$h;

    if-ne v0, v2, :cond_3

    goto :goto_4

    .line 27
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->i:Landroidx/mediarouter/media/o$a;

    iget v2, v0, Landroidx/mediarouter/media/o$a;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v1, 0x2

    const/4 v4, 0x2

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 28
    :goto_3
    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->y:Landroidx/mediarouter/media/g$e$d;

    iget v5, v0, Landroidx/mediarouter/media/o$a;->b:I

    iget v6, v0, Landroidx/mediarouter/media/o$a;->a:I

    const/4 v7, 0x0

    .line 29
    iget-object v0, v1, Landroidx/mediarouter/media/g$e$d;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_9

    .line 30
    iget-object v2, v1, Landroidx/mediarouter/media/g$e$d;->b:Landroidx/media/a;

    if-eqz v2, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    .line 31
    iput v6, v2, Landroidx/media/a;->d:I

    .line 32
    invoke-virtual {v2}, Landroidx/media/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeProvider;

    .line 33
    invoke-virtual {v0, v6}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    .line 34
    iget-object v0, v2, Landroidx/media/a;->e:Landroidx/media/a$c;

    if-eqz v0, :cond_9

    .line 35
    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$f$a;

    .line 36
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$f$a;->a:Landroid/support/v4/media/session/MediaSessionCompat$f;

    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$f;->c:Landroidx/media/a;

    if-eq v1, v2, :cond_5

    goto :goto_5

    .line 37
    :cond_5
    new-instance v1, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v4, v0, Landroid/support/v4/media/session/MediaSessionCompat$f;->a:I

    iget v5, v0, Landroid/support/v4/media/session/MediaSessionCompat$f;->b:I

    .line 38
    iget v6, v2, Landroidx/media/a;->a:I

    .line 39
    iget v7, v2, Landroidx/media/a;->b:I

    .line 40
    iget v8, v2, Landroidx/media/a;->d:I

    move-object v3, v1

    .line 41
    invoke-direct/range {v3 .. v8}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$f;->o(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    goto :goto_5

    .line 43
    :cond_6
    new-instance v8, Landroidx/mediarouter/media/j;

    move-object v2, v8

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroidx/mediarouter/media/j;-><init>(Landroidx/mediarouter/media/g$e$d;IIILjava/lang/String;)V

    iput-object v8, v1, Landroidx/mediarouter/media/g$e$d;->b:Landroidx/media/a;

    .line 44
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v0, v8}, Landroid/support/v4/media/session/MediaSessionCompat$b;->l(Landroidx/media/a;)V

    goto :goto_5

    .line 45
    :cond_7
    :goto_4
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->y:Landroidx/mediarouter/media/g$e$d;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$e$d;->a()V

    goto :goto_5

    .line 46
    :cond_8
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->y:Landroidx/mediarouter/media/g$e$d;

    if-eqz v0, :cond_9

    .line 47
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$e$d;->a()V

    :cond_9
    :goto_5
    return-void
.end method

.method public final o(Landroidx/mediarouter/media/g$g;Lcom/shabakaty/downloader/fq2;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Landroidx/mediarouter/media/g$g;->d:Lcom/shabakaty/downloader/fq2;

    const/4 v5, 0x1

    if-eq v3, v2, :cond_0

    .line 2
    iput-object v2, v1, Landroidx/mediarouter/media/g$g;->d:Lcom/shabakaty/downloader/fq2;

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    return-void

    :cond_1
    const-string v3, "MediaRouter"

    if-eqz v2, :cond_11

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/fq2;->b()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    .line 4
    iget-object v6, v6, Landroidx/mediarouter/media/c;->x:Lcom/shabakaty/downloader/fq2;

    if-ne v2, v6, :cond_11

    .line 5
    :cond_2
    iget-object v2, v2, Lcom/shabakaty/downloader/fq2;->a:Ljava/util/List;

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "Route added: "

    const/16 v12, 0x101

    if-eqz v10, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/mediarouter/media/b;

    if-eqz v10, :cond_c

    .line 9
    invoke-virtual {v10}, Landroidx/mediarouter/media/b;->r()Z

    move-result v13

    if-nez v13, :cond_3

    goto/16 :goto_5

    .line 10
    :cond_3
    invoke-virtual {v10}, Landroidx/mediarouter/media/b;->i()Ljava/lang/String;

    move-result-object v13

    .line 11
    iget-object v14, v1, Landroidx/mediarouter/media/g$g;->b:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_5

    .line 12
    iget-object v4, v1, Landroidx/mediarouter/media/g$g;->b:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/g$h;

    iget-object v4, v4, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    const/4 v15, -0x1

    :goto_3
    if-gez v15, :cond_9

    .line 13
    invoke-virtual {v0, v1, v13}, Landroidx/mediarouter/media/g$e;->b(Landroidx/mediarouter/media/g$g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    new-instance v14, Landroidx/mediarouter/media/g$h;

    invoke-direct {v14, v1, v13, v4}, Landroidx/mediarouter/media/g$h;-><init>(Landroidx/mediarouter/media/g$g;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v4, v1, Landroidx/mediarouter/media/g$g;->b:Ljava/util/List;

    add-int/lit8 v13, v9, 0x1

    invoke-interface {v4, v9, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16
    iget-object v4, v0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v10}, Landroidx/mediarouter/media/b;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 18
    new-instance v4, Lcom/shabakaty/downloader/y93;

    invoke-direct {v4, v14, v10}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 19
    :cond_6
    invoke-virtual {v14, v10}, Landroidx/mediarouter/media/g$h;->j(Landroidx/mediarouter/media/b;)I

    .line 20
    sget-boolean v4, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v4, :cond_7

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_7
    iget-object v4, v0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    invoke-virtual {v4, v12, v14}, Landroidx/mediarouter/media/g$e$c;->b(ILjava/lang/Object;)V

    :cond_8
    :goto_4
    move v9, v13

    goto/16 :goto_1

    :cond_9
    if-ge v15, v9, :cond_a

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 24
    :cond_a
    iget-object v4, v1, Landroidx/mediarouter/media/g$g;->b:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/g$h;

    .line 25
    iget-object v11, v1, Landroidx/mediarouter/media/g$g;->b:Ljava/util/List;

    add-int/lit8 v13, v9, 0x1

    invoke-static {v11, v15, v9}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 26
    invoke-virtual {v10}, Landroidx/mediarouter/media/b;->g()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_b

    .line 27
    new-instance v9, Lcom/shabakaty/downloader/y93;

    invoke-direct {v9, v4, v10}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_b
    invoke-virtual {v0, v4, v10}, Landroidx/mediarouter/media/g$e;->p(Landroidx/mediarouter/media/g$h;Landroidx/mediarouter/media/b;)I

    move-result v9

    if-eqz v9, :cond_8

    .line 29
    iget-object v9, v0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-ne v4, v9, :cond_8

    move v9, v13

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 30
    :cond_c
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring invalid system route descriptor: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 31
    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/y93;

    .line 32
    iget-object v6, v4, Lcom/shabakaty/downloader/y93;->a:Ljava/lang/Object;

    check-cast v6, Landroidx/mediarouter/media/g$h;

    .line 33
    iget-object v4, v4, Lcom/shabakaty/downloader/y93;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/mediarouter/media/b;

    invoke-virtual {v6, v4}, Landroidx/mediarouter/media/g$h;->j(Landroidx/mediarouter/media/b;)I

    .line 34
    sget-boolean v4, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v4, :cond_e

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_e
    iget-object v4, v0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    invoke-virtual {v4, v12, v6}, Landroidx/mediarouter/media/g$e$c;->b(ILjava/lang/Object;)V

    goto :goto_6

    .line 37
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v8

    :cond_10
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/y93;

    .line 38
    iget-object v7, v6, Lcom/shabakaty/downloader/y93;->a:Ljava/lang/Object;

    check-cast v7, Landroidx/mediarouter/media/g$h;

    .line 39
    iget-object v6, v6, Lcom/shabakaty/downloader/y93;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/mediarouter/media/b;

    invoke-virtual {v0, v7, v6}, Landroidx/mediarouter/media/g$e;->p(Landroidx/mediarouter/media/g$h;Landroidx/mediarouter/media/b;)I

    move-result v6

    if-eqz v6, :cond_10

    .line 40
    iget-object v6, v0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-ne v7, v6, :cond_10

    const/4 v4, 0x1

    goto :goto_7

    .line 41
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring invalid provider descriptor: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 42
    :cond_12
    iget-object v2, v1, Landroidx/mediarouter/media/g$g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_8
    if-lt v2, v9, :cond_13

    .line 43
    iget-object v6, v1, Landroidx/mediarouter/media/g$g;->b:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/mediarouter/media/g$h;

    const/4 v7, 0x0

    .line 44
    invoke-virtual {v6, v7}, Landroidx/mediarouter/media/g$h;->j(Landroidx/mediarouter/media/b;)I

    .line 45
    iget-object v7, v0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 46
    :cond_13
    invoke-virtual {v0, v4}, Landroidx/mediarouter/media/g$e;->q(Z)V

    .line 47
    iget-object v2, v1, Landroidx/mediarouter/media/g$g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_9
    if-lt v2, v9, :cond_15

    .line 48
    iget-object v4, v1, Landroidx/mediarouter/media/g$g;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/g$h;

    .line 49
    sget-boolean v5, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v5, :cond_14

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Route removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_14
    iget-object v5, v0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v6, 0x102

    invoke-virtual {v5, v6, v4}, Landroidx/mediarouter/media/g$e$c;->b(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 52
    :cond_15
    sget-boolean v2, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v2, :cond_16

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider changed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_16
    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v3, 0x203

    invoke-virtual {v2, v3, v1}, Landroidx/mediarouter/media/g$e$c;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public p(Landroidx/mediarouter/media/g$h;Landroidx/mediarouter/media/b;)I
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/g$h;->j(Landroidx/mediarouter/media/b;)I

    move-result p2

    if-eqz p2, :cond_5

    and-int/lit8 v0, p2, 0x1

    const-string v1, "MediaRouter"

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v2, 0x103

    invoke-virtual {v0, v2, p1}, Landroidx/mediarouter/media/g$e$c;->b(ILjava/lang/Object;)V

    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    .line 5
    sget-boolean v0, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route volume changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v2, 0x104

    invoke-virtual {v0, v2, p1}, Landroidx/mediarouter/media/g$e$c;->b(ILjava/lang/Object;)V

    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5

    .line 8
    sget-boolean v0, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v0, :cond_4

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route presentation display changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v1, 0x105

    invoke-virtual {v0, v1, p1}, Landroidx/mediarouter/media/g$e$c;->b(ILjava/lang/Object;)V

    :cond_5
    return p2
.end method

.method public q(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->n:Landroidx/mediarouter/media/g$h;

    const/4 v1, 0x0

    const-string v2, "MediaRouter"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$h;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Clearing the default route because it is no longer selectable: "

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroidx/mediarouter/media/g$e;->n:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object v1, p0, Landroidx/mediarouter/media/g$e;->n:Landroidx/mediarouter/media/g$h;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->n:Landroidx/mediarouter/media/g$h;

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/g$h;

    .line 6
    invoke-virtual {v4}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v5

    iget-object v6, p0, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    if-ne v5, v6, :cond_2

    iget-object v5, v4, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    const-string v6, "DEFAULT_ROUTE"

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v4}, Landroidx/mediarouter/media/g$h;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    iput-object v4, p0, Landroidx/mediarouter/media/g$e;->n:Landroidx/mediarouter/media/g$h;

    const-string v0, "Found default route: "

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroidx/mediarouter/media/g$e;->n:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->o:Landroidx/mediarouter/media/g$h;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$h;->g()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Clearing the bluetooth route because it is no longer selectable: "

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroidx/mediarouter/media/g$e;->o:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iput-object v1, p0, Landroidx/mediarouter/media/g$e;->o:Landroidx/mediarouter/media/g$h;

    .line 14
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->o:Landroidx/mediarouter/media/g$h;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/g$h;

    .line 16
    invoke-virtual {p0, v1}, Landroidx/mediarouter/media/g$e;->h(Landroidx/mediarouter/media/g$h;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroidx/mediarouter/media/g$h;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    iput-object v1, p0, Landroidx/mediarouter/media/g$e;->o:Landroidx/mediarouter/media/g$h;

    const-string v0, "Found bluetooth route: "

    .line 18
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/g$e;->o:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_6
    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-eqz v0, :cond_8

    .line 20
    iget-boolean v0, v0, Landroidx/mediarouter/media/g$h;->g:Z

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_9

    .line 21
    invoke-virtual {p0}, Landroidx/mediarouter/media/g$e;->i()V

    .line 22
    invoke-virtual {p0}, Landroidx/mediarouter/media/g$e;->n()V

    goto :goto_2

    :cond_8
    :goto_1
    const-string p1, "Unselecting the current route because it is no longer selectable: "

    .line 23
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Landroidx/mediarouter/media/g$e;->c()Landroidx/mediarouter/media/g$h;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Landroidx/mediarouter/media/g$e;->l(Landroidx/mediarouter/media/g$h;I)V

    :cond_9
    :goto_2
    return-void
.end method
