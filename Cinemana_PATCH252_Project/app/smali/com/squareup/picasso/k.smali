.class public Lcom/squareup/picasso/k;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/k$d;,
        Lcom/squareup/picasso/k$b;,
        Lcom/squareup/picasso/k$e;,
        Lcom/squareup/picasso/k$c;
    }
.end annotation


# static fields
.field public static final n:Landroid/os/Handler;

.field public static volatile o:Lcom/squareup/picasso/k;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/squareup/picasso/k$c;

.field public final b:Lcom/squareup/picasso/k$e;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;

.field public final e:Lcom/squareup/picasso/f;

.field public final f:Lcom/shabakaty/downloader/pp;

.field public final g:Lcom/shabakaty/downloader/tc4;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Lcom/shabakaty/downloader/op0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Landroid/graphics/Bitmap$Config;

.field public l:Z

.field public volatile m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/picasso/k$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/picasso/k$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/squareup/picasso/k;->n:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/squareup/picasso/k;->o:Lcom/squareup/picasso/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/f;Lcom/shabakaty/downloader/pp;Lcom/squareup/picasso/k$c;Lcom/squareup/picasso/k$e;Ljava/util/List;Lcom/shabakaty/downloader/tc4;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/squareup/picasso/f;",
            "Lcom/shabakaty/downloader/pp;",
            "Lcom/squareup/picasso/k$c;",
            "Lcom/squareup/picasso/k$e;",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/o;",
            ">;",
            "Lcom/shabakaty/downloader/tc4;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/picasso/k;->d:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/squareup/picasso/k;->e:Lcom/squareup/picasso/f;

    .line 4
    iput-object p3, p0, Lcom/squareup/picasso/k;->f:Lcom/shabakaty/downloader/pp;

    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lcom/squareup/picasso/k;->a:Lcom/squareup/picasso/k$c;

    .line 6
    iput-object p5, p0, Lcom/squareup/picasso/k;->b:Lcom/squareup/picasso/k$e;

    .line 7
    iput-object p8, p0, Lcom/squareup/picasso/k;->k:Landroid/graphics/Bitmap$Config;

    .line 8
    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x7

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance p4, Lcom/squareup/picasso/p;

    invoke-direct {p4, p1}, Lcom/squareup/picasso/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p4, Lcom/squareup/picasso/d;

    invoke-direct {p4, p1}, Lcom/squareup/picasso/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p4, Lcom/squareup/picasso/i;

    invoke-direct {p4, p1}, Lcom/squareup/picasso/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p4, Lcom/squareup/picasso/e;

    invoke-direct {p4, p1}, Lcom/squareup/picasso/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p4, Lcom/squareup/picasso/b;

    invoke-direct {p4, p1}, Lcom/squareup/picasso/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p4, Lcom/squareup/picasso/g;

    invoke-direct {p4, p1}, Lcom/squareup/picasso/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p1, Lcom/squareup/picasso/j;

    iget-object p2, p2, Lcom/squareup/picasso/f;->c:Lcom/shabakaty/downloader/ty0;

    invoke-direct {p1, p2, p7}, Lcom/squareup/picasso/j;-><init>(Lcom/shabakaty/downloader/ty0;Lcom/shabakaty/downloader/tc4;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/k;->c:Ljava/util/List;

    .line 17
    iput-object p7, p0, Lcom/squareup/picasso/k;->g:Lcom/shabakaty/downloader/tc4;

    .line 18
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/k;->h:Ljava/util/Map;

    .line 19
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/k;->i:Ljava/util/Map;

    .line 20
    iput-boolean p9, p0, Lcom/squareup/picasso/k;->l:Z

    .line 21
    iput-boolean p10, p0, Lcom/squareup/picasso/k;->m:Z

    .line 22
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/k;->j:Ljava/lang/ref/ReferenceQueue;

    .line 23
    new-instance p2, Lcom/squareup/picasso/k$b;

    sget-object p3, Lcom/squareup/picasso/k;->n:Landroid/os/Handler;

    invoke-direct {p2, p1, p3}, Lcom/squareup/picasso/k$b;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    .line 24
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static f()Lcom/squareup/picasso/k;
    .locals 17

    .line 1
    sget-object v0, Lcom/squareup/picasso/k;->o:Lcom/squareup/picasso/k;

    if-nez v0, :cond_3

    .line 2
    const-class v1, Lcom/squareup/picasso/k;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/squareup/picasso/k;->o:Lcom/squareup/picasso/k;

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lcom/squareup/picasso/PicassoProvider;->r:Landroid/content/Context;

    if-eqz v0, :cond_1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    new-instance v6, Lcom/shabakaty/downloader/y53;

    invoke-direct {v6, v0}, Lcom/shabakaty/downloader/y53;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v9, Lcom/shabakaty/downloader/pl2;

    invoke-direct {v9, v0}, Lcom/shabakaty/downloader/pl2;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v4, Lcom/shabakaty/downloader/fc3;

    invoke-direct {v4}, Lcom/shabakaty/downloader/fc3;-><init>()V

    .line 9
    sget-object v11, Lcom/squareup/picasso/k$e;->a:Lcom/squareup/picasso/k$e;

    .line 10
    new-instance v12, Lcom/shabakaty/downloader/tc4;

    invoke-direct {v12, v9}, Lcom/shabakaty/downloader/tc4;-><init>(Lcom/shabakaty/downloader/pp;)V

    .line 11
    new-instance v13, Lcom/squareup/picasso/f;

    sget-object v5, Lcom/squareup/picasso/k;->n:Landroid/os/Handler;

    move-object v2, v13

    move-object v3, v0

    move-object v7, v9

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/squareup/picasso/f;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/shabakaty/downloader/ty0;Lcom/shabakaty/downloader/pp;Lcom/shabakaty/downloader/tc4;)V

    .line 12
    new-instance v14, Lcom/squareup/picasso/k;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v2, v14

    move-object v3, v0

    move-object v4, v13

    move-object v5, v9

    move-object v7, v11

    move-object v9, v12

    move v11, v15

    move/from16 v12, v16

    invoke-direct/range {v2 .. v12}, Lcom/squareup/picasso/k;-><init>(Landroid/content/Context;Lcom/squareup/picasso/f;Lcom/shabakaty/downloader/pp;Lcom/squareup/picasso/k$c;Lcom/squareup/picasso/k$e;Ljava/util/List;Lcom/shabakaty/downloader/tc4;Landroid/graphics/Bitmap$Config;ZZ)V

    .line 13
    sput-object v14, Lcom/squareup/picasso/k;->o:Lcom/squareup/picasso/k;

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "context == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_2
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 17
    :cond_3
    :goto_1
    sget-object v0, Lcom/squareup/picasso/k;->o:Lcom/squareup/picasso/k;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/az4;->a()V

    .line 2
    iget-object v0, p0, Lcom/squareup/picasso/k;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/squareup/picasso/a;->a()V

    .line 4
    iget-object v1, p0, Lcom/squareup/picasso/k;->e:Lcom/squareup/picasso/f;

    .line 5
    iget-object v1, v1, Lcom/squareup/picasso/f;->h:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Lcom/squareup/picasso/k;->i:Ljava/util/Map;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/op0;

    if-eqz p1, :cond_2

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/op0;->r:Lcom/squareup/picasso/n;

    const/4 v1, 0x0

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object v1, p1, Lcom/shabakaty/downloader/op0;->t:Lcom/shabakaty/downloader/yq;

    .line 13
    iget-object v0, p1, Lcom/shabakaty/downloader/op0;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p1, Lcom/shabakaty/downloader/op0;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 16
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/k;->a(Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "view cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/squareup/picasso/q;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/k;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Landroid/graphics/Bitmap;Lcom/squareup/picasso/k$d;Lcom/squareup/picasso/a;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-boolean v0, p3, Lcom/squareup/picasso/a;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p3, Lcom/squareup/picasso/a;->k:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/squareup/picasso/k;->h:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "Main"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p3, p1, p2}, Lcom/squareup/picasso/a;->b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/k$d;)V

    .line 5
    iget-boolean p1, p0, Lcom/squareup/picasso/k;->m:Z

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p3, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/m;

    invoke-virtual {p1}, Lcom/squareup/picasso/m;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "completed"

    invoke-static {v0, p3, p1, p2}, Lcom/shabakaty/downloader/az4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "LoadedFrom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_3
    invoke-virtual {p3, p4}, Lcom/squareup/picasso/a;->c(Ljava/lang/Exception;)V

    .line 9
    iget-boolean p1, p0, Lcom/squareup/picasso/k;->m:Z

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p3, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/m;

    invoke-virtual {p1}, Lcom/squareup/picasso/m;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "errored"

    invoke-static {v0, p3, p1, p2}, Lcom/shabakaty/downloader/az4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public e(Lcom/squareup/picasso/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/squareup/picasso/k;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/k;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/squareup/picasso/k;->h:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/k;->e:Lcom/squareup/picasso/f;

    .line 6
    iget-object v0, v0, Lcom/squareup/picasso/f;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public g(Landroid/net/Uri;)Lcom/squareup/picasso/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/picasso/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/squareup/picasso/n;-><init>(Lcom/squareup/picasso/k;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public h(Ljava/io/File;)Lcom/squareup/picasso/n;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/squareup/picasso/n;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/squareup/picasso/n;-><init>(Lcom/squareup/picasso/k;Landroid/net/Uri;I)V

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/k;->g(Landroid/net/Uri;)Lcom/squareup/picasso/n;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;)Lcom/squareup/picasso/n;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/squareup/picasso/n;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/squareup/picasso/n;-><init>(Lcom/squareup/picasso/k;Landroid/net/Uri;I)V

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/k;->g(Landroid/net/Uri;)Lcom/squareup/picasso/n;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/k;->f:Lcom/shabakaty/downloader/pp;

    check-cast v0, Lcom/shabakaty/downloader/pl2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/pl2;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/pl2$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/pl2$a;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/squareup/picasso/k;->g:Lcom/shabakaty/downloader/tc4;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/tc4;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/k;->g:Lcom/shabakaty/downloader/tc4;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/tc4;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-object p1
.end method
