.class public final Lcom/shabakaty/downloader/o64;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lcom/shabakaty/downloader/np;


# static fields
.field public static final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lcom/shabakaty/downloader/tp;

.field public final c:Lcom/shabakaty/downloader/jq;

.field public final d:Lcom/shabakaty/downloader/vp;

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/np$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Random;

.field public final g:Z

.field public h:J

.field public i:J

.field public j:Lcom/shabakaty/downloader/np$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/o64;->k:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/shabakaty/downloader/tp;Lcom/shabakaty/downloader/em0;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/jq;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/jq;-><init>(Lcom/shabakaty/downloader/em0;Ljava/io/File;[BZZ)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/vp;

    invoke-direct {v0, p3}, Lcom/shabakaty/downloader/vp;-><init>(Lcom/shabakaty/downloader/em0;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-class p3, Lcom/shabakaty/downloader/o64;

    monitor-enter p3

    .line 5
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/o64;->k:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    if-eqz v1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/o64;->b:Lcom/shabakaty/downloader/tp;

    .line 8
    iput-object v6, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/o64;->d:Lcom/shabakaty/downloader/vp;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/o64;->e:Ljava/util/HashMap;

    .line 11
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/o64;->f:Ljava/util/Random;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/shabakaty/downloader/o64;->g:Z

    const-wide/16 p1, -0x1

    .line 13
    iput-wide p1, p0, Lcom/shabakaty/downloader/o64;->h:J

    .line 14
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 15
    new-instance p2, Lcom/shabakaty/downloader/n64;

    const-string p3, "ExoPlayer:SimpleCacheInit"

    invoke-direct {p2, p0, p3, p1}, Lcom/shabakaty/downloader/n64;-><init>(Lcom/shabakaty/downloader/o64;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 17
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    .line 18
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x2e

    const-string v0, "Another SimpleCache instance uses the folder: "

    invoke-static {p3, v0, p1}, Lcom/shabakaty/downloader/re;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p3

    throw p1
.end method

.method public static j(Lcom/shabakaty/downloader/o64;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/shabakaty/downloader/o64;->m(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/np$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/o64;->j:Lcom/shabakaty/downloader/np$a;

    goto/16 :goto_6

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "SimpleCache"

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to list cache directory files: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/np$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/np$a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/o64;->j:Lcom/shabakaty/downloader/np$a;

    goto/16 :goto_6

    .line 8
    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const-wide/16 v5, -0x1

    if-ge v4, v2, :cond_3

    aget-object v7, v0, v4

    .line 9
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".uid"

    .line 10
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x2e

    .line 11
    :try_start_1
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 12
    :catch_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Malformed UID file: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-wide v2, v5

    .line 15
    :goto_2
    iput-wide v2, p0, Lcom/shabakaty/downloader/o64;->h:J

    cmp-long v4, v2, v5

    if-nez v4, :cond_4

    .line 16
    :try_start_2
    iget-object v2, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    invoke-static {v2}, Lcom/shabakaty/downloader/o64;->n(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shabakaty/downloader/o64;->h:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 17
    iget-object v2, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to create cache UID: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    new-instance v1, Lcom/shabakaty/downloader/np$a;

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/np$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/o64;->j:Lcom/shabakaty/downloader/np$a;

    goto/16 :goto_6

    .line 20
    :cond_4
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    iget-wide v3, p0, Lcom/shabakaty/downloader/o64;->h:J

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/jq;->e(J)V

    .line 21
    iget-object v2, p0, Lcom/shabakaty/downloader/o64;->d:Lcom/shabakaty/downloader/vp;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 22
    iget-wide v4, p0, Lcom/shabakaty/downloader/o64;->h:J

    invoke-virtual {v2, v4, v5}, Lcom/shabakaty/downloader/vp;->b(J)V

    .line 23
    iget-object v2, p0, Lcom/shabakaty/downloader/o64;->d:Lcom/shabakaty/downloader/vp;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/vp;->a()Ljava/util/Map;

    move-result-object v2

    .line 24
    iget-object v4, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    invoke-virtual {p0, v4, v3, v0, v2}, Lcom/shabakaty/downloader/o64;->p(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->d:Lcom/shabakaty/downloader/vp;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/vp;->c(Ljava/util/Set;)V

    goto :goto_4

    .line 26
    :cond_5
    iget-object v2, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/shabakaty/downloader/o64;->p(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 27
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    .line 28
    iget-object v2, v0, Lcom/shabakaty/downloader/jq;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/t;->u(Ljava/util/Collection;)Lcom/google/common/collect/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/n;->p()Lcom/shabakaty/downloader/uv4;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/jq;->f(Ljava/lang/String;)V

    goto :goto_5

    .line 30
    :cond_6
    :try_start_4
    iget-object p0, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/jq;->g()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    const-string v0, "Storing index file failed"

    .line 31
    invoke-static {v1, v0, p0}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_4
    move-exception v0

    .line 32
    iget-object v2, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to initialize cache indices: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    new-instance v1, Lcom/shabakaty/downloader/np$a;

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/np$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/o64;->j:Lcom/shabakaty/downloader/np$a;

    :goto_6
    return-void
.end method

.method public static m(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to create cache directory: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimpleCache"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/np$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/np$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static n(Ljava/io/File;)J
    .locals 6

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x10

    .line 3
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/io/File;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ".uid"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    :goto_1
    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_2

    return-wide v0

    .line 6
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    const-string v2, "Failed to create UID file: "

    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/re;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o64;->l()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/jq;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/iq;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/shabakaty/downloader/iq;->a(JJ)Z

    move-result v1

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    invoke-static {v1}, Lcom/shabakaty/downloader/o64;->m(Ljava/io/File;)V

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o64;->r()V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/o64;->b:Lcom/shabakaty/downloader/tp;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/shabakaty/downloader/tp;->e(Lcom/shabakaty/downloader/np;Ljava/lang/String;JJ)V

    .line 11
    new-instance v2, Ljava/io/File;

    iget-object p1, p0, Lcom/shabakaty/downloader/o64;->a:Ljava/io/File;

    iget-object p4, p0, Lcom/shabakaty/downloader/o64;->f:Ljava/util/Random;

    const/16 p5, 0xa

    invoke-virtual {p4, p5}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 13
    invoke-static {v2}, Lcom/shabakaty/downloader/o64;->m(Ljava/io/File;)V

    .line 14
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 15
    iget v3, v0, Lcom/shabakaty/downloader/iq;->a:I

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/p64;->j(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/shabakaty/downloader/fd0;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/jq;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/iq;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/iq;->e:Lcom/shabakaty/downloader/on0;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/on0;->c:Lcom/shabakaty/downloader/on0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/shabakaty/downloader/eq;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/o64;->q(Lcom/shabakaty/downloader/eq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;JJ)Lcom/shabakaty/downloader/eq;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    monitor-enter p0

    const/4 v4, 0x1

    .line 1
    :try_start_0
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/o64;->l()V

    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/shabakaty/downloader/o64;->o(Ljava/lang/String;JJ)Lcom/shabakaty/downloader/p64;

    move-result-object v5

    .line 4
    iget-boolean v6, v5, Lcom/shabakaty/downloader/eq;->u:Z

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v1, v0, v5}, Lcom/shabakaty/downloader/o64;->s(Ljava/lang/String;Lcom/shabakaty/downloader/p64;)Lcom/shabakaty/downloader/p64;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_0
    :try_start_1
    iget-object v6, v1, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/jq;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/iq;

    move-result-object v0

    .line 7
    iget-wide v6, v5, Lcom/shabakaty/downloader/eq;->t:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    :goto_0
    iget-object v10, v0, Lcom/shabakaty/downloader/iq;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 9
    iget-object v10, v0, Lcom/shabakaty/downloader/iq;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/iq$a;

    .line 10
    iget-wide v11, v10, Lcom/shabakaty/downloader/iq$a;->a:J

    const-wide/16 v13, -0x1

    cmp-long v15, v11, v2

    if-gtz v15, :cond_1

    move-object/from16 p4, v5

    .line 11
    iget-wide v4, v10, Lcom/shabakaty/downloader/iq$a;->b:J

    cmp-long v10, v4, v13

    if-eqz v10, :cond_3

    add-long/2addr v11, v4

    cmp-long v4, v11, v2

    if-lez v4, :cond_2

    goto :goto_1

    :cond_1
    move-object/from16 p4, v5

    cmp-long v4, v6, v13

    if-eqz v4, :cond_3

    add-long v4, v2, v6

    cmp-long v10, v4, v11

    if-lez v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, p4

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 p4, v5

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/iq;->d:Ljava/util/ArrayList;

    new-instance v4, Lcom/shabakaty/downloader/iq$a;

    invoke-direct {v4, v2, v3, v6, v7}, Lcom/shabakaty/downloader/iq$a;-><init>(JJ)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_6

    .line 13
    monitor-exit p0

    return-object p4

    :cond_6
    const/4 v0, 0x0

    .line 14
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;JJ)Lcom/shabakaty/downloader/eq;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o64;->l()V

    .line 3
    :goto_0
    invoke-virtual/range {p0 .. p5}, Lcom/shabakaty/downloader/o64;->d(Ljava/lang/String;JJ)Lcom/shabakaty/downloader/eq;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Ljava/lang/String;Lcom/shabakaty/downloader/gd0;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o64;->l()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/jq;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/iq;

    move-result-object p1

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/iq;->e:Lcom/shabakaty/downloader/on0;

    .line 5
    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/on0;->a(Lcom/shabakaty/downloader/gd0;)Lcom/shabakaty/downloader/on0;

    move-result-object p2

    iput-object p2, p1, Lcom/shabakaty/downloader/iq;->e:Lcom/shabakaty/downloader/on0;

    .line 6
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/on0;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, v0, Lcom/shabakaty/downloader/jq;->e:Lcom/shabakaty/downloader/jq$c;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/jq$c;->d(Lcom/shabakaty/downloader/iq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/jq;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    new-instance p2, Lcom/shabakaty/downloader/np$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/np$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Lcom/shabakaty/downloader/eq;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    iget-object v1, p1, Lcom/shabakaty/downloader/eq;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/jq;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/iq;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-wide v1, p1, Lcom/shabakaty/downloader/eq;->s:J

    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v3, v0, Lcom/shabakaty/downloader/iq;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 6
    iget-object v3, v0, Lcom/shabakaty/downloader/iq;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/iq$a;

    iget-wide v3, v3, Lcom/shabakaty/downloader/iq$a;->a:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/iq;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    iget-object v0, v0, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/jq;->f(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(Ljava/io/File;J)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p1

    move-wide v2, p2

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/p64;->h(Ljava/io/File;JJLcom/shabakaty/downloader/jq;)Lcom/shabakaty/downloader/p64;

    move-result-object p2

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p3, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    iget-object v1, p2, Lcom/shabakaty/downloader/eq;->r:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/shabakaty/downloader/jq;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/iq;

    move-result-object p3

    .line 10
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-wide v1, p2, Lcom/shabakaty/downloader/eq;->s:J

    iget-wide v3, p2, Lcom/shabakaty/downloader/eq;->t:J

    invoke-virtual {p3, v1, v2, v3, v4}, Lcom/shabakaty/downloader/iq;->a(JJ)Z

    move-result v1

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 12
    iget-object p3, p3, Lcom/shabakaty/downloader/iq;->e:Lcom/shabakaty/downloader/on0;

    .line 13
    invoke-static {p3}, Lcom/shabakaty/downloader/ed0;->a(Lcom/shabakaty/downloader/fd0;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p3, v1, v3

    if-eqz p3, :cond_3

    .line 14
    iget-wide v3, p2, Lcom/shabakaty/downloader/eq;->s:J

    iget-wide v5, p2, Lcom/shabakaty/downloader/eq;->t:J

    add-long/2addr v3, v5

    cmp-long p3, v3, v1

    if-gtz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 15
    :cond_3
    iget-object p3, p0, Lcom/shabakaty/downloader/o64;->d:Lcom/shabakaty/downloader/vp;

    if-eqz p3, :cond_4

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->d:Lcom/shabakaty/downloader/vp;

    iget-wide v2, p2, Lcom/shabakaty/downloader/eq;->t:J

    iget-wide v4, p2, Lcom/shabakaty/downloader/eq;->w:J

    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/vp;->d(Ljava/lang/String;JJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    :try_start_4
    new-instance p2, Lcom/shabakaty/downloader/np$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/np$a;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 19
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/o64;->k(Lcom/shabakaty/downloader/p64;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :try_start_5
    iget-object p1, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/jq;->g()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 21
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    .line 23
    :try_start_7
    new-instance p2, Lcom/shabakaty/downloader/np$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/np$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i()J
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/o64;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k(Lcom/shabakaty/downloader/p64;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    iget-object v1, p1, Lcom/shabakaty/downloader/eq;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/jq;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/iq;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/iq;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/o64;->i:J

    iget-wide v2, p1, Lcom/shabakaty/downloader/eq;->t:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/o64;->i:J

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/shabakaty/downloader/eq;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/np$b;

    invoke-interface {v2, p0, p1}, Lcom/shabakaty/downloader/np$b;->c(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/eq;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->b:Lcom/shabakaty/downloader/tp;

    invoke-interface {v0, p0, p1}, Lcom/shabakaty/downloader/np$b;->c(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/eq;)V

    return-void
.end method

.method public declared-synchronized l()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->j:Lcom/shabakaty/downloader/np$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o(Ljava/lang/String;JJ)Lcom/shabakaty/downloader/p64;
    .locals 14

    move-object v9, p0

    move-wide/from16 v10, p4

    .line 1
    iget-object v0, v9, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/jq;->a:Ljava/util/HashMap;

    move-object v1, p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/shabakaty/downloader/iq;

    if-nez v12, :cond_0

    .line 3
    new-instance v12, Lcom/shabakaty/downloader/p64;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v0, v12

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/p64;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v12

    .line 4
    :cond_0
    :goto_0
    iget-object v1, v12, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    .line 5
    new-instance v13, Lcom/shabakaty/downloader/p64;

    const-wide/16 v4, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v0, v13

    move-wide/from16 v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/p64;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 6
    iget-object v0, v12, Lcom/shabakaty/downloader/iq;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/p64;

    if-eqz v0, :cond_1

    .line 7
    iget-wide v1, v0, Lcom/shabakaty/downloader/eq;->s:J

    iget-wide v3, v0, Lcom/shabakaty/downloader/eq;->t:J

    add-long/2addr v1, v3

    cmp-long v3, v1, p2

    if-lez v3, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    iget-object v0, v12, Lcom/shabakaty/downloader/iq;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/p64;

    if-eqz v0, :cond_3

    .line 9
    iget-wide v0, v0, Lcom/shabakaty/downloader/eq;->s:J

    sub-long v0, v0, p2

    const-wide/16 v2, -0x1

    cmp-long v4, v10, v2

    if-nez v4, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_1
    move-wide v4, v0

    goto :goto_2

    :cond_3
    move-wide v4, v10

    .line 11
    :goto_2
    iget-object v1, v12, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    .line 12
    new-instance v13, Lcom/shabakaty/downloader/p64;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v0, v13

    move-wide/from16 v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/p64;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 13
    :goto_3
    iget-boolean v1, v0, Lcom/shabakaty/downloader/eq;->u:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/shabakaty/downloader/eq;->v:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/shabakaty/downloader/eq;->t:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o64;->r()V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final p(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z[",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/up;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_8

    .line 1
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_7

    aget-object v8, p3, v1

    .line 3
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const/16 v3, 0x2e

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 5
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v8, v0, v2, p4}, Lcom/shabakaty/downloader/o64;->p(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    const-string v3, "cached_content_index.exi"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".uid"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p4, :cond_3

    .line 8
    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/up;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 9
    iget-wide v3, v2, Lcom/shabakaty/downloader/up;->a:J

    .line 10
    iget-wide v5, v2, Lcom/shabakaty/downloader/up;->b:J

    .line 11
    :cond_4
    iget-object v7, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    move-object v2, v8

    .line 12
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/p64;->h(Ljava/io/File;JJLcom/shabakaty/downloader/jq;)Lcom/shabakaty/downloader/p64;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/o64;->k(Lcom/shabakaty/downloader/p64;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_3
    if-nez p2, :cond_9

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    return-void
.end method

.method public final q(Lcom/shabakaty/downloader/eq;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    iget-object v1, p1, Lcom/shabakaty/downloader/eq;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/jq;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/iq;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/iq;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/eq;->v:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto/16 :goto_4

    .line 5
    :cond_2
    iget-wide v4, p0, Lcom/shabakaty/downloader/o64;->i:J

    iget-wide v6, p1, Lcom/shabakaty/downloader/eq;->t:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/shabakaty/downloader/o64;->i:J

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/o64;->d:Lcom/shabakaty/downloader/vp;

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p1, Lcom/shabakaty/downloader/eq;->v:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/shabakaty/downloader/o64;->d:Lcom/shabakaty/downloader/vp;

    .line 9
    iget-object v5, v4, Lcom/shabakaty/downloader/vp;->b:Ljava/lang/String;

    .line 10
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    iget-object v5, v4, Lcom/shabakaty/downloader/vp;->a:Lcom/shabakaty/downloader/em0;

    invoke-interface {v5}, Lcom/shabakaty/downloader/em0;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 12
    iget-object v4, v4, Lcom/shabakaty/downloader/vp;->b:Ljava/lang/String;

    const-string v6, "name = ?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-virtual {v5, v4, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 13
    :try_start_2
    new-instance v3, Lcom/shabakaty/downloader/cm0;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/cm0;-><init>(Landroid/database/SQLException;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    const-string v2, "Failed to remove file index entry for: "

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v2, "SimpleCache"

    .line 15
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    iget-object v0, v0, Lcom/shabakaty/downloader/iq;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/jq;->f(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/shabakaty/downloader/eq;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/np$b;

    invoke-interface {v2, p0, p1}, Lcom/shabakaty/downloader/np$b;->b(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/eq;)V

    goto :goto_3

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/o64;->b:Lcom/shabakaty/downloader/tp;

    invoke-interface {v0, p0, p1}, Lcom/shabakaty/downloader/np$b;->b(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/eq;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final r()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/jq;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/iq;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/iq;->c:Ljava/util/TreeSet;

    .line 6
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/eq;

    .line 7
    iget-object v4, v3, Lcom/shabakaty/downloader/eq;->v:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/shabakaty/downloader/eq;->t:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/eq;

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/o64;->q(Lcom/shabakaty/downloader/eq;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final s(Ljava/lang/String;Lcom/shabakaty/downloader/p64;)Lcom/shabakaty/downloader/p64;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Lcom/shabakaty/downloader/o64;->g:Z

    if-nez v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, v1, Lcom/shabakaty/downloader/eq;->v:Ljava/io/File;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-wide v5, v1, Lcom/shabakaty/downloader/eq;->t:J

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v2, 0x0

    .line 7
    iget-object v3, v0, Lcom/shabakaty/downloader/o64;->d:Lcom/shabakaty/downloader/vp;

    if-eqz v3, :cond_1

    move-wide v7, v13

    .line 8
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/vp;->d(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "SimpleCache"

    const-string v4, "Failed to update index with new touch timestamp."

    .line 9
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 10
    :goto_0
    iget-object v3, v0, Lcom/shabakaty/downloader/o64;->c:Lcom/shabakaty/downloader/jq;

    .line 11
    iget-object v3, v3, Lcom/shabakaty/downloader/jq;->a:Ljava/util/HashMap;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/iq;

    .line 12
    iget-object v4, v3, Lcom/shabakaty/downloader/iq;->c:Ljava/util/TreeSet;

    invoke-virtual {v4, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 13
    iget-object v4, v1, Lcom/shabakaty/downloader/eq;->v:Ljava/io/File;

    .line 14
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 16
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-wide v9, v1, Lcom/shabakaty/downloader/eq;->s:J

    .line 18
    iget v8, v3, Lcom/shabakaty/downloader/iq;->a:I

    move-wide v11, v13

    invoke-static/range {v7 .. v12}, Lcom/shabakaty/downloader/p64;->j(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v2

    .line 19
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v15, v2

    goto :goto_1

    .line 20
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    const-string v6, "Failed to rename "

    const-string v8, " to "

    invoke-static {v7, v6, v5, v8, v2}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CachedContent"

    .line 21
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v15, v4

    .line 22
    :goto_1
    iget-boolean v2, v1, Lcom/shabakaty/downloader/eq;->u:Z

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 23
    new-instance v2, Lcom/shabakaty/downloader/p64;

    iget-object v8, v1, Lcom/shabakaty/downloader/eq;->r:Ljava/lang/String;

    iget-wide v9, v1, Lcom/shabakaty/downloader/eq;->s:J

    iget-wide v11, v1, Lcom/shabakaty/downloader/eq;->t:J

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lcom/shabakaty/downloader/p64;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 24
    iget-object v3, v3, Lcom/shabakaty/downloader/iq;->c:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v3, v0, Lcom/shabakaty/downloader/o64;->e:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/shabakaty/downloader/eq;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_4

    .line 27
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/np$b;

    invoke-interface {v5, v0, v1, v2}, Lcom/shabakaty/downloader/np$b;->a(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/eq;Lcom/shabakaty/downloader/eq;)V

    goto :goto_2

    .line 28
    :cond_4
    iget-object v3, v0, Lcom/shabakaty/downloader/o64;->b:Lcom/shabakaty/downloader/tp;

    invoke-interface {v3, v0, v1, v2}, Lcom/shabakaty/downloader/np$b;->a(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/eq;Lcom/shabakaty/downloader/eq;)V

    return-object v2
.end method
