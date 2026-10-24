.class public final Lcom/shabakaty/downloader/j94$c;
.super Ljava/lang/Object;
.source "SntpClient.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/j94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/shabakaty/downloader/ij2$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/j94$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j94$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/j94$c;->r:Lcom/shabakaty/downloader/j94$b;

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/j94$c;->r:Lcom/shabakaty/downloader/j94$b;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;

    .line 3
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 4
    invoke-virtual {p1, p6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B(Ljava/io/IOException;)V

    .line 5
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/ij2;->e:Lcom/shabakaty/downloader/ij2$c;

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/ij2$e;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/j94$c;->r:Lcom/shabakaty/downloader/j94$b;

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/j94;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    sget-boolean p2, Lcom/shabakaty/downloader/j94;->c:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/j94$c;->r:Lcom/shabakaty/downloader/j94$b;

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/util/ConcurrentModificationException;

    invoke-direct {p3}, Ljava/util/ConcurrentModificationException;-><init>()V

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;

    .line 5
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B(Ljava/io/IOException;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/j94$c;->r:Lcom/shabakaty/downloader/j94$b;

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;->a()V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 8
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public l(Lcom/shabakaty/downloader/ij2$e;JJZ)V
    .locals 0

    return-void
.end method
