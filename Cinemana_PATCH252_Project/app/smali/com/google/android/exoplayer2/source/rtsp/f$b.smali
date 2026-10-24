.class public final Lcom/google/android/exoplayer2/source/rtsp/f$b;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/p91;
.implements Lcom/shabakaty/downloader/ij2$b;
.implements Lcom/shabakaty/downloader/bx3$d;
.implements Lcom/google/android/exoplayer2/source/rtsp/d$f;
.implements Lcom/google/android/exoplayer2/source/rtsp/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/p91;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/google/android/exoplayer2/source/rtsp/b;",
        ">;",
        "Lcom/shabakaty/downloader/bx3$d;",
        "Lcom/google/android/exoplayer2/source/rtsp/d$f;",
        "Lcom/google/android/exoplayer2/source/rtsp/d$e;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/google/android/exoplayer2/source/rtsp/f;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/f;Lcom/google/android/exoplayer2/source/rtsp/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, v1

    .line 2
    :goto_0
    iput-object p2, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->B:Ljava/io/IOException;

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->s:Landroid/os/Handler;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/bv3;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/bv3;-><init>(Lcom/google/android/exoplayer2/source/rtsp/f;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/vz3;)V
    .locals 0

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/b;

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 3
    iget-boolean p3, p2, Lcom/google/android/exoplayer2/source/rtsp/f;->H:Z

    if-nez p3, :cond_0

    .line 4
    iput-object p6, p2, Lcom/google/android/exoplayer2/source/rtsp/f;->B:Ljava/io/IOException;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p6}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/net/BindException;

    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 7
    iget p2, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->J:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->J:I

    const/4 p1, 0x3

    if-ge p2, p1, :cond_2

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/ij2;->d:Lcom/shabakaty/downloader/ij2$c;

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    new-instance p3, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/b;->b:Lcom/shabakaty/downloader/cv3;

    iget-object p1, p1, Lcom/shabakaty/downloader/cv3;->b:Landroid/net/Uri;

    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p6}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    iput-object p3, p2, Lcom/google/android/exoplayer2/source/rtsp/f;->C:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    .line 12
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/ij2;->e:Lcom/shabakaty/downloader/ij2$c;

    :goto_1
    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/ij2$e;JJ)V
    .locals 6

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/b;

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/rtsp/f;->o()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    const/4 v0, 0x0

    cmp-long v1, p2, p4

    if-nez v1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 4
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->K:Z

    if-nez p2, :cond_7

    .line 5
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->u:Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/rtsp/d;->close()V

    .line 7
    new-instance p3, Lcom/google/android/exoplayer2/source/rtsp/g;

    new-instance p4, Lcom/google/android/exoplayer2/source/rtsp/d$c;

    invoke-direct {p4, p2}, Lcom/google/android/exoplayer2/source/rtsp/d$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/d;)V

    invoke-direct {p3, p4}, Lcom/google/android/exoplayer2/source/rtsp/g;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g$d;)V

    iput-object p3, p2, Lcom/google/android/exoplayer2/source/rtsp/d;->z:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 8
    iget-object p4, p2, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Landroid/net/Uri;

    invoke-static {p4}, Lcom/google/android/exoplayer2/source/rtsp/d;->c(Landroid/net/Uri;)Ljava/net/Socket;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/source/rtsp/g;->a(Ljava/net/Socket;)V

    const/4 p3, 0x0

    .line 9
    iput-object p3, p2, Lcom/google/android/exoplayer2/source/rtsp/d;->A:Ljava/lang/String;

    .line 10
    iput-boolean v0, p2, Lcom/google/android/exoplayer2/source/rtsp/d;->E:Z

    .line 11
    iput-object p3, p2, Lcom/google/android/exoplayer2/source/rtsp/d;->C:Lcom/google/android/exoplayer2/source/rtsp/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 12
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    new-instance p4, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    invoke-direct {p4, p3}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/google/android/exoplayer2/source/rtsp/f$b;

    .line 13
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 14
    iput-object p4, p2, Lcom/google/android/exoplayer2/source/rtsp/f;->C:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    .line 15
    :goto_0
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->y:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    .line 16
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/rtsp/a$a;->b()Lcom/google/android/exoplayer2/source/rtsp/a$a;

    move-result-object p2

    if-nez p2, :cond_0

    .line 17
    new-instance p2, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    const-string p3, "No fallback data channel factory for TCP retry"

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->C:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    goto/16 :goto_4

    .line 18
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    iget-object p4, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    new-instance p4, Ljava/util/ArrayList;

    iget-object p5, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p5, 0x0

    .line 20
    :goto_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p5, v1, :cond_3

    .line 21
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 22
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;->d:Z

    if-nez v2, :cond_1

    .line 23
    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/f$d;->a:Lcom/shabakaty/downloader/cv3;

    invoke-direct {v2, p1, v3, p5, p2}, Lcom/google/android/exoplayer2/source/rtsp/f$e;-><init>(Lcom/google/android/exoplayer2/source/rtsp/f;Lcom/shabakaty/downloader/cv3;ILcom/google/android/exoplayer2/source/rtsp/a$a;)V

    .line 24
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;->b:Lcom/shabakaty/downloader/ij2;

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 26
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/rtsp/f$d;->b:Lcom/google/android/exoplayer2/source/rtsp/b;

    .line 27
    iget-object v5, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->t:Lcom/google/android/exoplayer2/source/rtsp/f$b;

    .line 28
    invoke-virtual {v3, v4, v5, v0}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    .line 29
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    iget-object v1, v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_1
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 32
    :cond_3
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    .line 33
    invoke-static {p2}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object p2

    .line 34
    iget-object p5, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->clear()V

    .line 35
    iget-object p5, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object p3, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 37
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :goto_3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 39
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 40
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->K:Z

    goto :goto_6

    .line 42
    :cond_5
    :goto_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 43
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    .line 44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_7

    .line 45
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 46
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    .line 47
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 48
    iget-object p3, p2, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 49
    iget-object p3, p3, Lcom/google/android/exoplayer2/source/rtsp/f$d;->b:Lcom/google/android/exoplayer2/source/rtsp/b;

    if-ne p3, p1, :cond_6

    .line 50
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a()V

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    return-void
.end method

.method public h(II)Lcom/shabakaty/downloader/fp4;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 2
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    return-object p1
.end method

.method public i(Lcom/shabakaty/downloader/wh1;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->s:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/bv3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/bv3;-><init>(Lcom/google/android/exoplayer2/source/rtsp/f;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic l(Lcom/shabakaty/downloader/ij2$e;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/b;

    return-void
.end method
