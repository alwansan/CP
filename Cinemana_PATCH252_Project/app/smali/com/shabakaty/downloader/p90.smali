.class public final synthetic Lcom/shabakaty/downloader/p90;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/kh4;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/s90;

.field public final synthetic s:Z

.field public final synthetic t:Lcom/shabakaty/downloader/t90;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/s90;ZLcom/shabakaty/downloader/t90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/p90;->r:Lcom/shabakaty/downloader/s90;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/p90;->s:Z

    iput-object p3, p0, Lcom/shabakaty/downloader/p90;->t:Lcom/shabakaty/downloader/t90;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/p90;->r:Lcom/shabakaty/downloader/s90;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/p90;->s:Z

    iget-object v2, p0, Lcom/shabakaty/downloader/p90;->t:Lcom/shabakaty/downloader/t90;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {v2}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    iput-object p1, v0, Lcom/shabakaty/downloader/s90;->c:Lcom/shabakaty/downloader/uk4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 4
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    return-object p1
.end method
