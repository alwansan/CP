.class Lzendesk/core/ZendeskDiskLruCache;
.super Ljava/lang/Object;
.source "ZendeskDiskLruCache.java"

# interfaces
.implements Lzendesk/core/BaseStorage;


# static fields
.field private static final CACHE_INDEX:I = 0x0

.field private static final ITEMS_PER_KEY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "DiskLruStorage"

.field private static final VERSION_ONE:I = 0x1


# instance fields
.field private final directory:Ljava/io/File;

.field private final maxSize:J

.field private final serializer:Lzendesk/core/Serializer;

.field private storage:Lcom/shabakaty/downloader/vt0;


# direct methods
.method public constructor <init>(Ljava/io/File;JLcom/shabakaty/downloader/vt0;Lzendesk/core/Serializer;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lzendesk/core/ZendeskDiskLruCache;->directory:Ljava/io/File;

    .line 8
    iput-wide p2, p0, Lzendesk/core/ZendeskDiskLruCache;->maxSize:J

    .line 9
    iput-object p4, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    .line 10
    iput-object p5, p0, Lzendesk/core/ZendeskDiskLruCache;->serializer:Lzendesk/core/Serializer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lzendesk/core/Serializer;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskDiskLruCache;->directory:Ljava/io/File;

    int-to-long v0, p3

    .line 3
    iput-wide v0, p0, Lzendesk/core/ZendeskDiskLruCache;->maxSize:J

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lzendesk/core/ZendeskDiskLruCache;->openCache(Ljava/io/File;J)Lcom/shabakaty/downloader/vt0;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    .line 5
    iput-object p2, p0, Lzendesk/core/ZendeskDiskLruCache;->serializer:Lzendesk/core/Serializer;

    return-void
.end method

.method private close(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    invoke-direct {p0, p1}, Lzendesk/core/ZendeskDiskLruCache;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/vt0;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/vt0$e;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_1
    iget-object p1, p1, Lcom/shabakaty/downloader/vt0$e;->r:[Ljava/io/InputStream;

    aget-object p1, p1, p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->O(Ljava/io/InputStream;)Lcom/shabakaty/downloader/r94;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    :try_start_3
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5
    :try_start_4
    move-object v1, p2

    check-cast v1, Lcom/shabakaty/downloader/on3;

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 7
    iget-object v3, v1, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zn;->s0(Lcom/shabakaty/downloader/r94;)J

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zn;->r()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    goto :goto_5

    :catch_1
    move-exception v1

    move-object p2, v0

    goto :goto_3

    :goto_0
    move-object v1, p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    move-object p2, p1

    .line 10
    :goto_1
    invoke-direct {p0, v0}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    .line 11
    invoke-direct {p0, p2}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    move-object v0, p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    goto :goto_5

    :catch_3
    move-exception v1

    :goto_2
    move-object p1, v0

    move-object p2, p1

    :goto_3
    :try_start_5
    const-string v2, "DiskLruStorage"

    const-string v3, "Unable to read from cache"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 12
    sget-object v5, Lcom/shabakaty/downloader/tk2$d;->u:Lcom/shabakaty/downloader/tk2$d;

    invoke-static {v5, v2, v3, v1, v4}, Lcom/shabakaty/downloader/tk2;->e(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 13
    invoke-direct {p0, p1}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    .line 14
    invoke-direct {p0, p2}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    :goto_4
    return-object v0

    :catchall_2
    move-exception v0

    .line 15
    :goto_5
    invoke-direct {p0, p1}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    .line 16
    invoke-direct {p0, p2}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    .line 17
    throw v0
.end method

.method private key(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/he0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private keyMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%s_content_type"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/core/ZendeskDiskLruCache;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private openCache(Ljava/io/File;J)Lcom/shabakaty/downloader/vt0;
    .locals 1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {p1, v0, v0, p2, p3}, Lcom/shabakaty/downloader/vt0;->g(Ljava/io/File;IIJ)Lcom/shabakaty/downloader/vt0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "DiskLruStorage"

    const-string v0, "Unable to open cache"

    .line 2
    invoke-static {p3, v0, p2}, Lcom/shabakaty/downloader/tk2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method private putString(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->O(Ljava/io/InputStream;)Lcom/shabakaty/downloader/r94;

    move-result-object p3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lzendesk/core/ZendeskDiskLruCache;->write(Ljava/lang/String;ILcom/shabakaty/downloader/r94;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 4
    sget-object p3, Lcom/shabakaty/downloader/tk2$d;->u:Lcom/shabakaty/downloader/tk2$d;

    const-string v0, "DiskLruStorage"

    const-string v1, "Unable to encode string"

    invoke-static {p3, v0, v1, p1, p2}, Lcom/shabakaty/downloader/tk2;->e(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private write(Ljava/lang/String;ILcom/shabakaty/downloader/r94;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lzendesk/core/ZendeskDiskLruCache;->directory:Ljava/io/File;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v2, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    invoke-direct {p0, p1}, Lzendesk/core/ZendeskDiskLruCache;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/vt0;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/vt0$c;

    move-result-object p1

    .line 3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/vt0$c;->c(I)Ljava/io/OutputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/md0;->L(Ljava/io/OutputStream;)Lcom/shabakaty/downloader/l84;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :try_start_3
    invoke-static {p2}, Lcom/shabakaty/downloader/md0;->c(Lcom/shabakaty/downloader/l84;)Lcom/shabakaty/downloader/do;

    move-result-object v0

    .line 6
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/nn3;

    invoke-virtual {v1, p3}, Lcom/shabakaty/downloader/nn3;->s0(Lcom/shabakaty/downloader/r94;)J

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nn3;->flush()V

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt0$c;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p2, v0

    :goto_0
    :try_start_6
    const-string v1, "DiskLruStorage"

    const-string v2, "Unable to cache data"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    sget-object v4, Lcom/shabakaty/downloader/tk2$d;->u:Lcom/shabakaty/downloader/tk2$d;

    invoke-static {v4, v1, v2, p1, v3}, Lcom/shabakaty/downloader/tk2;->e(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 11
    :goto_1
    invoke-direct {p0, v0}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    .line 12
    invoke-direct {p0, p2}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    .line 13
    invoke-direct {p0, p3}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p1

    .line 14
    :goto_2
    invoke-direct {p0, v0}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    .line 15
    invoke-direct {p0, p2}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    .line 16
    invoke-direct {p0, p3}, Lzendesk/core/ZendeskDiskLruCache;->close(Ljava/io/Closeable;)V

    .line 17
    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/vt0;->r:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/vt0;->r:Ljava/io/File;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt0;->close()V

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/vt0;->r:Ljava/io/File;

    invoke-static {v0}, Lcom/shabakaty/downloader/qy4;->b(Ljava/io/File;)V

    goto :goto_2

    .line 10
    :cond_3
    iget-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt0;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "DiskLruStorage"

    const-string v4, "Error clearing cache. Error: %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_2
    iget-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->directory:Ljava/io/File;

    iget-wide v1, p0, Lzendesk/core/ZendeskDiskLruCache;->maxSize:J

    invoke-direct {p0, v0, v1, v2}, Lzendesk/core/ZendeskDiskLruCache;->openCache(Ljava/io/File;J)Lcom/shabakaty/downloader/vt0;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    return-void

    :goto_3
    iget-object v1, p0, Lzendesk/core/ZendeskDiskLruCache;->directory:Ljava/io/File;

    iget-wide v2, p0, Lzendesk/core/ZendeskDiskLruCache;->maxSize:J

    invoke-direct {p0, v1, v2, v3}, Lzendesk/core/ZendeskDiskLruCache;->openCache(Ljava/io/File;J)Lcom/shabakaty/downloader/vt0;

    move-result-object v1

    iput-object v1, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    .line 13
    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    const-class v0, Lcom/shabakaty/downloader/ys3;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    :try_start_0
    iget-object p2, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    invoke-direct {p0, p1}, Lzendesk/core/ZendeskDiskLruCache;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/vt0;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/vt0$e;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 6
    iget-object v0, p2, Lcom/shabakaty/downloader/vt0$e;->r:[Ljava/io/InputStream;

    aget-object v0, v0, v2

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->O(Ljava/io/InputStream;)Lcom/shabakaty/downloader/r94;

    move-result-object v0

    .line 8
    iget-object p2, p2, Lcom/shabakaty/downloader/vt0$e;->s:[J

    aget-wide v3, p2, v2

    .line 9
    invoke-direct {p0, p1}, Lzendesk/core/ZendeskDiskLruCache;->keyMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lzendesk/core/ZendeskDiskLruCache;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/fe4;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    invoke-static {p1}, Lcom/shabakaty/downloader/fr2;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object p2

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/zs3;

    invoke-direct {v0, p2, p1, v3, v4}, Lcom/shabakaty/downloader/zs3;-><init>(Lcom/shabakaty/downloader/eo;Lcom/shabakaty/downloader/fr2;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/tk2$d;->u:Lcom/shabakaty/downloader/tk2$d;

    const-string v2, "DiskLruStorage"

    const-string v3, "Unable to read from cache"

    invoke-static {v0, v2, v3, p1, p2}, Lcom/shabakaty/downloader/tk2;->e(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-direct {p0, p1, v2}, Lzendesk/core/ZendeskDiskLruCache;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->serializer:Lzendesk/core/Serializer;

    invoke-interface {v0, p1, p2}, Lzendesk/core/Serializer;->deserialize(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lzendesk/core/ZendeskDiskLruCache;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    instance-of v0, p2, Lcom/shabakaty/downloader/ys3;

    if-eqz v0, :cond_1

    .line 5
    check-cast p2, Lcom/shabakaty/downloader/ys3;

    .line 6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lzendesk/core/ZendeskDiskLruCache;->write(Ljava/lang/String;ILcom/shabakaty/downloader/r94;)V

    .line 7
    invoke-direct {p0, p1}, Lzendesk/core/ZendeskDiskLruCache;->keyMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ys3;->d()Lcom/shabakaty/downloader/fr2;

    move-result-object p2

    .line 8
    iget-object p2, p2, Lcom/shabakaty/downloader/fr2;->a:Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1, v1, p2}, Lzendesk/core/ZendeskDiskLruCache;->putString(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 10
    iget-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->serializer:Lzendesk/core/Serializer;

    invoke-interface {v0, p2}, Lzendesk/core/Serializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_2
    invoke-virtual {p0, p1, v0}, Lzendesk/core/ZendeskDiskLruCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskDiskLruCache;->storage:Lcom/shabakaty/downloader/vt0;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/fe4;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lzendesk/core/ZendeskDiskLruCache;->putString(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
