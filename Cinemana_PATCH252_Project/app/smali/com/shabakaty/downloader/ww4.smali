.class public Lcom/shabakaty/downloader/ww4;
.super Ljava/lang/Object;
.source "Uploader.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/gi;

.field public final c:Lcom/shabakaty/downloader/x51;

.field public final d:Lcom/shabakaty/downloader/b85;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/shabakaty/downloader/fj4;

.field public final g:Lcom/shabakaty/downloader/y30;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/gi;Lcom/shabakaty/downloader/x51;Lcom/shabakaty/downloader/b85;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/fj4;Lcom/shabakaty/downloader/y30;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ww4;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ww4;->b:Lcom/shabakaty/downloader/gi;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ww4;->c:Lcom/shabakaty/downloader/x51;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/ww4;->d:Lcom/shabakaty/downloader/b85;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/ww4;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/ww4;->f:Lcom/shabakaty/downloader/fj4;

    .line 8
    iput-object p7, p0, Lcom/shabakaty/downloader/ww4;->g:Lcom/shabakaty/downloader/y30;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/oq4;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ww4;->b:Lcom/shabakaty/downloader/gi;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/oq4;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/gi;->get(Ljava/lang/String;)Lcom/shabakaty/downloader/nq4;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ww4;->f:Lcom/shabakaty/downloader/fj4;

    new-instance v2, Lcom/shabakaty/downloader/rv;

    invoke-direct {v2, p0, p1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/ww4;Lcom/shabakaty/downloader/oq4;)V

    .line 3
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/fj4;->a(Lcom/shabakaty/downloader/fj4$a;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    .line 4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Uploader"

    const-string v1, "Unknown backend for %s, deleting event batch for it..."

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/fl3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/b;->a()Lcom/google/android/datatransport/runtime/backends/b;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_2

    .line 7
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/yb3;

    .line 9
    invoke-virtual {v3}, Lcom/shabakaty/downloader/yb3;->a()Lcom/shabakaty/downloader/n51;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oq4;->c()[B

    move-result-object v2

    .line 11
    new-instance v3, Lcom/shabakaty/downloader/bg;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/shabakaty/downloader/bg;-><init>(Ljava/lang/Iterable;[BLcom/shabakaty/downloader/bg$a;)V

    .line 12
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/nq4;->b(Lcom/shabakaty/downloader/hi;)Lcom/google/android/datatransport/runtime/backends/b;

    move-result-object v0

    goto :goto_0

    .line 13
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ww4;->f:Lcom/shabakaty/downloader/fj4;

    new-instance v1, Lcom/shabakaty/downloader/tw4;

    move-object v2, v1

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/tw4;-><init>(Lcom/shabakaty/downloader/ww4;Lcom/google/android/datatransport/runtime/backends/b;Ljava/lang/Iterable;Lcom/shabakaty/downloader/oq4;I)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/fj4;->a(Lcom/shabakaty/downloader/fj4$a;)Ljava/lang/Object;

    return-void
.end method
