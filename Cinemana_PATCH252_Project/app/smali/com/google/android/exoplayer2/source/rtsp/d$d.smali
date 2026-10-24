.class public final Lcom/google/android/exoplayer2/source/rtsp/d$d;
.super Ljava/lang/Object;
.source "RtspClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/shabakaty/downloader/ev3;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/rtsp/d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/d;Lcom/google/android/exoplayer2/source/rtsp/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/shabakaty/downloader/ev3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/shabakaty/downloader/ev3;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/e$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/rtsp/e$b;-><init>()V

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSeq"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/source/rtsp/e$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/e$b;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 4
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->v:Ljava/lang/String;

    const-string v2, "User-Agent"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/source/rtsp/e$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/e$b;

    if-eqz p2, :cond_0

    const-string v1, "Session"

    .line 6
    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/rtsp/e$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/e$b;

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 8
    iget-object v1, p2, Lcom/google/android/exoplayer2/source/rtsp/d;->C:Lcom/google/android/exoplayer2/source/rtsp/c;

    if-eqz v1, :cond_1

    .line 9
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/rtsp/d;->u:Lcom/google/android/exoplayer2/source/rtsp/h$a;

    .line 10
    invoke-static {p2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string p2, "Authorization"

    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 12
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->C:Lcom/google/android/exoplayer2/source/rtsp/c;

    .line 13
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->u:Lcom/google/android/exoplayer2/source/rtsp/h$a;

    .line 14
    invoke-virtual {v2, v1, p4, p1}, Lcom/google/android/exoplayer2/source/rtsp/c;->a(Lcom/google/android/exoplayer2/source/rtsp/h$a;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, p2, v1}, Lcom/google/android/exoplayer2/source/rtsp/e$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/e$b;
    :try_end_0
    .catch Lcom/shabakaty/downloader/pa3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/d;->a(Lcom/google/android/exoplayer2/source/rtsp/d;Ljava/lang/Throwable;)V

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/google/android/exoplayer2/source/rtsp/e$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/e$b;

    goto :goto_1

    .line 19
    :cond_2
    new-instance p2, Lcom/shabakaty/downloader/ev3;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/e$b;->b()Lcom/google/android/exoplayer2/source/rtsp/e;

    move-result-object p3

    const-string v0, ""

    invoke-direct {p2, p4, p1, p3, v0}, Lcom/shabakaty/downloader/ev3;-><init>(Landroid/net/Uri;ILcom/google/android/exoplayer2/source/rtsp/e;Ljava/lang/String;)V

    return-object p2
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->b:Lcom/shabakaty/downloader/ev3;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->b:Lcom/shabakaty/downloader/ev3;

    iget-object v0, v0, Lcom/shabakaty/downloader/ev3;->c:Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/e;->a:Lcom/google/common/collect/q;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v2, v0, Lcom/google/common/collect/s;->u:Lcom/google/common/collect/r;

    .line 6
    iget-object v3, v2, Lcom/google/common/collect/r;->s:Lcom/google/common/collect/t;

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/google/common/collect/r;->c()Lcom/google/common/collect/t;

    move-result-object v3

    iput-object v3, v2, Lcom/google/common/collect/r;->s:Lcom/google/common/collect/t;

    .line 8
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CSeq"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "User-Agent"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Session"

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Authorization"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0, v3}, Lcom/google/common/collect/q;->g(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v4

    .line 14
    invoke-static {v4}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->b:Lcom/shabakaty/downloader/ev3;

    iget v2, v0, Lcom/shabakaty/downloader/ev3;->b:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 16
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/d;->A:Ljava/lang/String;

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/ev3;->a:Landroid/net/Uri;

    .line 18
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/shabakaty/downloader/ev3;

    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c(Lcom/shabakaty/downloader/ev3;)V

    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/ev3;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/ev3;->c:Lcom/google/android/exoplayer2/source/rtsp/e;

    const-string v1, "CSeq"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 5
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->x:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 8
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->x:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 11
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->z:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 12
    sget-object v1, Lcom/google/android/exoplayer2/source/rtsp/h;->a:Ljava/util/regex/Pattern;

    .line 13
    new-instance v1, Lcom/google/common/collect/p$a;

    invoke-direct {v1}, Lcom/google/common/collect/p$a;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 14
    iget v5, p1, Lcom/shabakaty/downloader/ev3;->b:I

    .line 15
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/rtsp/h;->e(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p1, Lcom/shabakaty/downloader/ev3;->a:Landroid/net/Uri;

    aput-object v5, v4, v3

    const/4 v5, 0x2

    const-string v6, "RTSP/1.0"

    aput-object v6, v4, v5

    const-string v6, "%s %s %s"

    .line 16
    invoke-static {v6, v4}, Lcom/shabakaty/downloader/sy4;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v1, v4}, Lcom/google/common/collect/p$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/p$a;

    .line 18
    iget-object v4, p1, Lcom/shabakaty/downloader/ev3;->c:Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 19
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/rtsp/e;->a:Lcom/google/common/collect/q;

    .line 20
    iget-object v6, v4, Lcom/google/common/collect/s;->u:Lcom/google/common/collect/r;

    .line 21
    iget-object v7, v6, Lcom/google/common/collect/r;->s:Lcom/google/common/collect/t;

    if-nez v7, :cond_1

    .line 22
    invoke-virtual {v6}, Lcom/google/common/collect/r;->c()Lcom/google/common/collect/t;

    move-result-object v7

    iput-object v7, v6, Lcom/google/common/collect/r;->s:Lcom/google/common/collect/t;

    .line 23
    :cond_1
    invoke-virtual {v7}, Lcom/google/common/collect/n;->p()Lcom/shabakaty/downloader/uv4;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 24
    invoke-virtual {v4, v7}, Lcom/google/common/collect/q;->g(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v8

    const/4 v9, 0x0

    .line 25
    :goto_1
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v7, v10, v2

    .line 26
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v10, v3

    const-string v11, "%s: %s"

    invoke-static {v11, v10}, Lcom/shabakaty/downloader/sy4;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/common/collect/p$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/p$a;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const-string v2, ""

    .line 27
    invoke-virtual {v1, v2}, Lcom/google/common/collect/p$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/p$a;

    .line 28
    iget-object v2, p1, Lcom/shabakaty/downloader/ev3;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/p$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/p$a;

    .line 29
    invoke-virtual {v1}, Lcom/google/common/collect/p$a;->c()Lcom/google/common/collect/p;

    move-result-object v1

    .line 30
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/rtsp/g;->u:Lcom/google/android/exoplayer2/source/rtsp/g$g;

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/g;->u:Lcom/google/android/exoplayer2/source/rtsp/g$g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v2, Lcom/google/android/exoplayer2/source/rtsp/h;->h:Ljava/lang/String;

    .line 33
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v1}, Lcom/google/common/collect/p;->A()Lcom/shabakaty/downloader/c0;

    move-result-object v3

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    :try_start_0
    invoke-virtual {v3}, Lcom/shabakaty/downloader/c0;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 37
    invoke-virtual {v3}, Lcom/shabakaty/downloader/c0;->next()Ljava/lang/Object;

    move-result-object v5

    .line 38
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    instance-of v6, v5, Ljava/lang/CharSequence;

    if-eqz v6, :cond_4

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 40
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 41
    :goto_3
    invoke-virtual {v3}, Lcom/shabakaty/downloader/c0;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 43
    invoke-virtual {v3}, Lcom/shabakaty/downloader/c0;->next()Ljava/lang/Object;

    move-result-object v5

    .line 44
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    instance-of v6, v5, Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 46
    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 47
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    sget-object v3, Lcom/google/android/exoplayer2/source/rtsp/g;->x:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 49
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/g$g;->t:Landroid/os/Handler;

    new-instance v4, Lcom/shabakaty/downloader/pr;

    invoke-direct {v4, v0, v2, v1}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g$g;[BLjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$d;->b:Lcom/shabakaty/downloader/ev3;

    return-void

    :catch_0
    move-exception p1

    .line 51
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
