.class public final Lcom/shabakaty/downloader/op$b;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Lcom/shabakaty/downloader/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/l84;

.field public final b:Lcom/shabakaty/downloader/l84;

.field public c:Z

.field public final d:Lcom/shabakaty/downloader/wt0$a;

.field public final synthetic e:Lcom/shabakaty/downloader/op;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/op;Lcom/shabakaty/downloader/wt0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wt0$a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/op$b;->e:Lcom/shabakaty/downloader/op;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/op$b;->d:Lcom/shabakaty/downloader/wt0$a;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/wt0$a;->d(I)Lcom/shabakaty/downloader/l84;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/op$b;->a:Lcom/shabakaty/downloader/l84;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/op$b$a;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/op$b$a;-><init>(Lcom/shabakaty/downloader/op$b;Lcom/shabakaty/downloader/l84;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/op$b;->b:Lcom/shabakaty/downloader/l84;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op$b;->e:Lcom/shabakaty/downloader/op;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/op$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    iput-boolean v1, p0, Lcom/shabakaty/downloader/op$b;->c:Z

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/op$b;->e:Lcom/shabakaty/downloader/op;

    .line 5
    iget v3, v2, Lcom/shabakaty/downloader/op;->t:I

    add-int/2addr v3, v1

    .line 6
    iput v3, v2, Lcom/shabakaty/downloader/op;->t:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/op$b;->a:Lcom/shabakaty/downloader/l84;

    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    .line 9
    :try_start_2
    iget-object v0, p0, Lcom/shabakaty/downloader/op$b;->d:Lcom/shabakaty/downloader/wt0$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt0$a;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method
