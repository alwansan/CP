.class public final Lcom/shabakaty/downloader/op$b$a;
.super Lcom/shabakaty/downloader/bi1;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/op$b;-><init>(Lcom/shabakaty/downloader/op;Lcom/shabakaty/downloader/wt0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic s:Lcom/shabakaty/downloader/op$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/op$b;Lcom/shabakaty/downloader/l84;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l84;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/op$b$a;->s:Lcom/shabakaty/downloader/op$b;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/bi1;-><init>(Lcom/shabakaty/downloader/l84;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op$b$a;->s:Lcom/shabakaty/downloader/op$b;

    iget-object v0, v0, Lcom/shabakaty/downloader/op$b;->e:Lcom/shabakaty/downloader/op;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/op$b$a;->s:Lcom/shabakaty/downloader/op$b;

    .line 3
    iget-boolean v2, v1, Lcom/shabakaty/downloader/op$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 5
    :try_start_1
    iput-boolean v2, v1, Lcom/shabakaty/downloader/op$b;->c:Z

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/op$b;->e:Lcom/shabakaty/downloader/op;

    .line 7
    iget v3, v1, Lcom/shabakaty/downloader/op;->s:I

    add-int/2addr v3, v2

    .line 8
    iput v3, v1, Lcom/shabakaty/downloader/op;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v0

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/bi1;->r:Lcom/shabakaty/downloader/l84;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l84;->close()V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/op$b$a;->s:Lcom/shabakaty/downloader/op$b;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/op$b;->d:Lcom/shabakaty/downloader/wt0$a;

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt0$a;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1
.end method
