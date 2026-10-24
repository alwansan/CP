.class public Lcom/shabakaty/downloader/xs2$a;
.super Lcom/shabakaty/downloader/ps;
.source "MetadataImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xs2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/xs2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xs2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xs2$a;->a:Lcom/shabakaty/downloader/xs2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/ps;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/ss;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2$a;->a:Lcom/shabakaty/downloader/xs2;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-boolean v2, v0, Lcom/shabakaty/downloader/xs2;->d:Z

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/downloader/xs2;->h:Landroid/util/LongSparseArray;

    check-cast p1, Lcom/shabakaty/downloader/hr;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hr;->a()J

    move-result-wide v3

    new-instance v5, Lcom/shabakaty/downloader/ts;

    invoke-direct {v5, p1}, Lcom/shabakaty/downloader/ts;-><init>(Lcom/shabakaty/downloader/ss;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xs2;->i()V

    .line 7
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
