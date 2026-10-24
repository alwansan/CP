.class public final Lcom/shabakaty/downloader/qn0;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/vl0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sp4;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/vl0;

.field public d:Lcom/shabakaty/downloader/vl0;

.field public e:Lcom/shabakaty/downloader/vl0;

.field public f:Lcom/shabakaty/downloader/vl0;

.field public g:Lcom/shabakaty/downloader/vl0;

.field public h:Lcom/shabakaty/downloader/vl0;

.field public i:Lcom/shabakaty/downloader/vl0;

.field public j:Lcom/shabakaty/downloader/vl0;

.field public k:Lcom/shabakaty/downloader/vl0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/vl0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/qn0;->a:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/qn0;->c:Lcom/shabakaty/downloader/vl0;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qn0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yl0;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v3, p1, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    .line 4
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "/android_asset/"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->e:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/nd;

    iget-object v1, p0, Lcom/shabakaty/downloader/qn0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/nd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->e:Lcom/shabakaty/downloader/vl0;

    .line 10
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qn0;->h(Lcom/shabakaty/downloader/vl0;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->e:Lcom/shabakaty/downloader/vl0;

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    goto/16 :goto_4

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->d:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_5

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/wa1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wa1;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->d:Lcom/shabakaty/downloader/vl0;

    .line 15
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qn0;->h(Lcom/shabakaty/downloader/vl0;)V

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->d:Lcom/shabakaty/downloader/vl0;

    .line 17
    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    goto/16 :goto_4

    :cond_6
    const-string v1, "asset"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->e:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_7

    .line 20
    new-instance v0, Lcom/shabakaty/downloader/nd;

    iget-object v1, p0, Lcom/shabakaty/downloader/qn0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/nd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->e:Lcom/shabakaty/downloader/vl0;

    .line 21
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qn0;->h(Lcom/shabakaty/downloader/vl0;)V

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->e:Lcom/shabakaty/downloader/vl0;

    .line 23
    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    goto/16 :goto_4

    :cond_8
    const-string v1, "content"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->f:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_9

    .line 26
    new-instance v0, Lcom/shabakaty/downloader/cd0;

    iget-object v1, p0, Lcom/shabakaty/downloader/qn0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/cd0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->f:Lcom/shabakaty/downloader/vl0;

    .line 27
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qn0;->h(Lcom/shabakaty/downloader/vl0;)V

    .line 28
    :cond_9
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->f:Lcom/shabakaty/downloader/vl0;

    .line 29
    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    goto/16 :goto_4

    :cond_a
    const-string v1, "rtmp"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 31
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->g:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_b

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 32
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vl0;

    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->g:Lcom/shabakaty/downloader/vl0;

    .line 34
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qn0;->h(Lcom/shabakaty/downloader/vl0;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->g:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_b

    .line 38
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->c:Lcom/shabakaty/downloader/vl0;

    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->g:Lcom/shabakaty/downloader/vl0;

    .line 39
    :cond_b
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->g:Lcom/shabakaty/downloader/vl0;

    .line 40
    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    goto :goto_4

    :cond_c
    const-string v1, "udp"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 42
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->h:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_d

    .line 43
    new-instance v0, Lcom/shabakaty/downloader/fv4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/fv4;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->h:Lcom/shabakaty/downloader/vl0;

    .line 44
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qn0;->h(Lcom/shabakaty/downloader/vl0;)V

    .line 45
    :cond_d
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->h:Lcom/shabakaty/downloader/vl0;

    .line 46
    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    goto :goto_4

    :cond_e
    const-string v1, "data"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 48
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->i:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_f

    .line 49
    new-instance v0, Lcom/shabakaty/downloader/sl0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sl0;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->i:Lcom/shabakaty/downloader/vl0;

    .line 50
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qn0;->h(Lcom/shabakaty/downloader/vl0;)V

    .line 51
    :cond_f
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->i:Lcom/shabakaty/downloader/vl0;

    .line 52
    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    goto :goto_4

    :cond_10
    const-string v1, "rawresource"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3

    .line 54
    :cond_11
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->c:Lcom/shabakaty/downloader/vl0;

    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    goto :goto_4

    .line 55
    :cond_12
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->j:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_13

    .line 56
    new-instance v0, Lcom/shabakaty/downloader/xm3;

    iget-object v1, p0, Lcom/shabakaty/downloader/qn0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xm3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->j:Lcom/shabakaty/downloader/vl0;

    .line 57
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qn0;->h(Lcom/shabakaty/downloader/vl0;)V

    .line 58
    :cond_13
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->j:Lcom/shabakaty/downloader/vl0;

    .line 59
    iput-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    .line 60
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->a(Lcom/shabakaty/downloader/yl0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    .line 4
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public e(Lcom/shabakaty/downloader/sp4;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->c:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->d:Lcom/shabakaty/downloader/vl0;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->e:Lcom/shabakaty/downloader/vl0;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->f:Lcom/shabakaty/downloader/vl0;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->g:Lcom/shabakaty/downloader/vl0;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->h:Lcom/shabakaty/downloader/vl0;

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->i:Lcom/shabakaty/downloader/vl0;

    if-eqz v0, :cond_5

    .line 15
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->j:Lcom/shabakaty/downloader/vl0;

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    :cond_6
    return-void
.end method

.method public final h(Lcom/shabakaty/downloader/vl0;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/qn0;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/qn0;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/sp4;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->o()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public r()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->r()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public read([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qn0;->k:Lcom/shabakaty/downloader/vl0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/rl0;->read([BII)I

    move-result p1

    return p1
.end method
