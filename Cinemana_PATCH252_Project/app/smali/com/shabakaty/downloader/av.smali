.class public Lcom/shabakaty/downloader/av;
.super Lcom/shabakaty/downloader/bv;
.source "CancelWorkRunnable.java"


# instance fields
.field public final synthetic s:Lcom/shabakaty/downloader/r75;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r75;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/av;->s:Lcom/shabakaty/downloader/r75;

    iput-object p2, p0, Lcom/shabakaty/downloader/av;->t:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/shabakaty/downloader/av;->u:Z

    invoke-direct {p0}, Lcom/shabakaty/downloader/bv;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/av;->s:Lcom/shabakaty/downloader/r75;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/av;->t:Ljava/lang/String;

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/f85;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/av;->s:Lcom/shabakaty/downloader/r75;

    invoke-virtual {p0, v3, v2}, Lcom/shabakaty/downloader/bv;->a(Lcom/shabakaty/downloader/r75;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 11
    iget-boolean v0, p0, Lcom/shabakaty/downloader/av;->u:Z

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/av;->s:Lcom/shabakaty/downloader/r75;

    .line 13
    iget-object v1, v0, Lcom/shabakaty/downloader/r75;->b:Lcom/shabakaty/downloader/y90;

    .line 14
    iget-object v2, v0, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->e:Ljava/util/List;

    .line 16
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/by3;->a(Lcom/shabakaty/downloader/y90;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 18
    throw v1
.end method
