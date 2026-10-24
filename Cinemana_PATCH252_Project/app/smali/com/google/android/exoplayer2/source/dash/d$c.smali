.class public final Lcom/google/android/exoplayer2/source/dash/d$c;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Lcom/shabakaty/downloader/fp4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/bx3;

.field public final b:Lcom/shabakaty/downloader/yh1;

.field public final c:Lcom/shabakaty/downloader/ys2;

.field public d:J

.field public final synthetic e:Lcom/google/android/exoplayer2/source/dash/d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/d;Lcom/shabakaty/downloader/fn0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->e:Lcom/google/android/exoplayer2/source/dash/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/shabakaty/downloader/bx3;->g(Lcom/shabakaty/downloader/fn0;)Lcom/shabakaty/downloader/bx3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lcom/shabakaty/downloader/bx3;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/yh1;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/shabakaty/downloader/yh1;-><init>(ILcom/shabakaty/downloader/io2;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->b:Lcom/shabakaty/downloader/yh1;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/ys2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ys2;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->c:Lcom/shabakaty/downloader/ys2;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->d:J

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/shabakaty/downloader/ka3;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/ep4;->b(Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/ka3;I)V

    return-void
.end method

.method public b(JIIILcom/shabakaty/downloader/fp4$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lcom/shabakaty/downloader/bx3;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/bx3;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 2
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lcom/shabakaty/downloader/bx3;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/bx3;->w(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->c:Lcom/shabakaty/downloader/ys2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lcom/shabakaty/downloader/bx3;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->b:Lcom/shabakaty/downloader/yh1;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->c:Lcom/shabakaty/downloader/ys2;

    .line 5
    invoke-virtual {p1, p3, p4, p2, p2}, Lcom/shabakaty/downloader/bx3;->C(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;IZ)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->c:Lcom/shabakaty/downloader/ys2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/bn0;->K()V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->c:Lcom/shabakaty/downloader/ys2;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-wide p3, p1, Lcom/shabakaty/downloader/bn0;->v:J

    .line 9
    iget-object p5, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->e:Lcom/google/android/exoplayer2/source/dash/d;

    .line 10
    iget-object p5, p5, Lcom/google/android/exoplayer2/source/dash/d;->t:Lcom/shabakaty/downloader/v51;

    .line 11
    invoke-virtual {p5, p1}, Lcom/shabakaty/downloader/w64;->a(Lcom/shabakaty/downloader/ys2;)Lcom/shabakaty/downloader/ps2;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    aget-object p1, p1, p2

    .line 13
    check-cast p1, Lcom/shabakaty/downloader/u51;

    .line 14
    iget-object p5, p1, Lcom/shabakaty/downloader/u51;->r:Ljava/lang/String;

    iget-object p6, p1, Lcom/shabakaty/downloader/u51;->s:Ljava/lang/String;

    const-string v0, "urn:mpeg:dash:event:2012"

    .line 15
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_5

    const-string p5, "1"

    .line 16
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_4

    const-string p5, "2"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_4

    const-string p5, "3"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5

    :cond_4
    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_0

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    :try_start_0
    iget-object p1, p1, Lcom/shabakaty/downloader/u51;->v:[B

    invoke-static {p1}, Lcom/shabakaty/downloader/sy4;->o([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/sy4;->K(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Lcom/shabakaty/downloader/pa3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-wide p1, p5

    :goto_2
    cmp-long v1, p1, p5

    if-nez v1, :cond_6

    goto :goto_0

    .line 18
    :cond_6
    new-instance p5, Lcom/google/android/exoplayer2/source/dash/d$a;

    invoke-direct {p5, p3, p4, p1, p2}, Lcom/google/android/exoplayer2/source/dash/d$a;-><init>(JJ)V

    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->e:Lcom/google/android/exoplayer2/source/dash/d;

    .line 20
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/d;->u:Landroid/os/Handler;

    .line 21
    invoke-virtual {p1, v0, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lcom/shabakaty/downloader/bx3;

    .line 23
    iget-object p2, p1, Lcom/shabakaty/downloader/bx3;->a:Lcom/shabakaty/downloader/ax3;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_1
    iget p3, p1, Lcom/shabakaty/downloader/bx3;->t:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_8

    const-wide/16 p3, -0x1

    .line 26
    monitor-exit p1

    goto :goto_3

    .line 27
    :cond_8
    :try_start_2
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/bx3;->h(I)J

    move-result-wide p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    .line 28
    :goto_3
    invoke-virtual {p2, p3, p4}, Lcom/shabakaty/downloader/ax3;->b(J)V

    return-void

    :catchall_0
    move-exception p2

    .line 29
    monitor-exit p1

    throw p2
.end method

.method public c(Lcom/shabakaty/downloader/ka3;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lcom/shabakaty/downloader/bx3;

    invoke-interface {p3, p1, p2}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    return-void
.end method

.method public synthetic d(Lcom/shabakaty/downloader/rl0;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ep4;->a(Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/rl0;IZ)I

    move-result p1

    return p1
.end method

.method public e(Lcom/shabakaty/downloader/rl0;IZI)I
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lcom/shabakaty/downloader/bx3;

    invoke-interface {p4, p1, p2, p3}, Lcom/shabakaty/downloader/fp4;->d(Lcom/shabakaty/downloader/rl0;IZ)I

    move-result p1

    return p1
.end method

.method public f(Lcom/shabakaty/downloader/wh1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/bx3;->f(Lcom/shabakaty/downloader/wh1;)V

    return-void
.end method
