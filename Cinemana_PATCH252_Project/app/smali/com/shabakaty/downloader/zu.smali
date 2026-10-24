.class public Lcom/shabakaty/downloader/zu;
.super Lcom/shabakaty/downloader/bv;
.source "CancelWorkRunnable.java"


# instance fields
.field public final synthetic s:Lcom/shabakaty/downloader/r75;

.field public final synthetic t:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r75;Ljava/util/UUID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zu;->s:Lcom/shabakaty/downloader/r75;

    iput-object p2, p0, Lcom/shabakaty/downloader/zu;->t:Ljava/util/UUID;

    invoke-direct {p0}, Lcom/shabakaty/downloader/bv;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zu;->s:Lcom/shabakaty/downloader/r75;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zu;->s:Lcom/shabakaty/downloader/r75;

    iget-object v2, p0, Lcom/shabakaty/downloader/zu;->t:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/shabakaty/downloader/bv;->a(Lcom/shabakaty/downloader/r75;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/zu;->s:Lcom/shabakaty/downloader/r75;

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/r75;->b:Lcom/shabakaty/downloader/y90;

    .line 10
    iget-object v2, v0, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->e:Ljava/util/List;

    .line 12
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/by3;->a(Lcom/shabakaty/downloader/y90;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v1

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 14
    throw v1
.end method
