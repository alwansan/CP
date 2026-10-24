.class public Lcom/shabakaty/downloader/vj4;
.super Ljava/lang/Object;
.source "SystemForegroundDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Landroidx/work/impl/WorkDatabase;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Landroidx/work/impl/foreground/a;


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/vj4;->t:Landroidx/work/impl/foreground/a;

    iput-object p2, p0, Lcom/shabakaty/downloader/vj4;->r:Landroidx/work/impl/WorkDatabase;

    iput-object p3, p0, Lcom/shabakaty/downloader/vj4;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vj4;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/vj4;->s:Ljava/lang/String;

    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f85;->i(Ljava/lang/String;)Lcom/shabakaty/downloader/d85;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d85;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/vj4;->t:Landroidx/work/impl/foreground/a;

    iget-object v1, v1, Landroidx/work/impl/foreground/a;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/vj4;->t:Landroidx/work/impl/foreground/a;

    iget-object v2, v2, Landroidx/work/impl/foreground/a;->x:Ljava/util/Map;

    iget-object v3, p0, Lcom/shabakaty/downloader/vj4;->s:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/vj4;->t:Landroidx/work/impl/foreground/a;

    iget-object v2, v2, Landroidx/work/impl/foreground/a;->y:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/vj4;->t:Landroidx/work/impl/foreground/a;

    iget-object v2, v0, Landroidx/work/impl/foreground/a;->z:Lcom/shabakaty/downloader/k75;

    iget-object v0, v0, Landroidx/work/impl/foreground/a;->y:Ljava/util/Set;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/k75;->b(Ljava/lang/Iterable;)V

    .line 7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
