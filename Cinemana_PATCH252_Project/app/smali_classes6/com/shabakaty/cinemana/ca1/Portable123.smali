.class final Lcom/shabakaty/cinemana/ca1/Portable123;
.super Ljava/lang/Object;
.source "Portable123.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;,
        Lcom/shabakaty/cinemana/ca1/Portable123$Table;
    }
.end annotation


# static fields
.field static final DEFAULT_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final LOCAL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final MAGIC:I = 0x434e4d7b

.field static final MAX:I = 0x4000000

.field static final MAX_ROWS:I = 0xc350

.field static final PREFS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "video_model"

    const-string v2, "video_status"

    const-string v3, "DownloadsCollectionItem"

    const-string v4, "CinemanaDownloadItem"

    const-string v5, "SubtitleDb"

    const-string v6, "SkippableSceneDB"

    const-string v7, "settings"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Portable123;->LOCAL:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "ca1_continue106"

    const-string v2, "ca1_episode_context107"

    const-string v3, "ca1_work_names"

    const-string v4, "ca1_sort"

    const-string v5, "ca1_94"

    const-string v6, "ca1_downloads"

    const-string v7, "ca1_player94"

    const-string v8, "ca1_log94"

    const-string v9, "com.shabakaty.cinemana_preferences"

    const-string v10, "CinemanaVideoDecoder"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Portable123;->PREFS:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "user_identifier"

    const-string v2, "key_preferred_subtitle_language"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Portable123;->DEFAULT_KEYS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 14
    const-string v0, "local"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Portable123;->LOCAL:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "downloads"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Downloads"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static atomic(Ljava/io/File;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "storage unavailable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/ca1/Portable123;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw p0
.end method

.method static best(Ljava/io/File;)Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".previous"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Portable123;->read(Ljava/io/File;)Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Portable123;->read(Ljava/io/File;)Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;

    move-result-object p0

    return-object p0

    :cond_1
    throw p0
.end method

.method static bound(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid length"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static bytes(Ljava/io/File;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x400002c

    const-string v4, "archive limit"

    cmp-long v5, v0, v2

    if-gtz v5, :cond_2

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 v1, 0x10000

    :try_start_1
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    const v5, 0x400002c

    if-gt v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static decode([B)Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    array-length v0, p0

    const v1, 0x400002c

    if-gt v0, v1, :cond_11

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const v1, 0x434e4d7b

    if-ne p0, v1, :cond_10

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_10

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const/high16 v1, 0x4000000

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Portable123;->bound(II)I

    move-result p0

    const/16 v1, 0x20

    new-array v1, v1, [B

    new-array p0, p0, [B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 31
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;

    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;-><init>()V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->time:J

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->speed:I

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->speed:I

    if-lt v1, v2, :cond_e

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->speed:I

    const/16 v3, 0x64

    if-gt v1, v3, :cond_e

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 32
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Portable123;->bound(II)I

    move-result v3

    :goto_0
    const v4, 0xc350

    if-lez v3, :cond_6

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Portable123;->allowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    const/16 v8, 0x80

    invoke-static {v7, v8}, Lcom/shabakaty/cinemana/ca1/Portable123;->bound(II)I

    move-result v7

    new-array v8, v7, [Ljava/lang/String;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_1

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/Portable123;->identifier(Ljava/lang/String;)Ljava/lang/String;

    aget-object v12, v8, v11

    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "duplicate column"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz v7, :cond_4

    new-instance v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    invoke-direct {v9, v5, v6, v8}, Lcom/shabakaty/cinemana/ca1/Portable123$Table;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5, v4}, Lcom/shabakaty/cinemana/ca1/Portable123;->bound(II)I

    move-result v4

    :goto_2
    if-lez v4, :cond_3

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_2

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Portable123;->value(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    iget-object v6, v9, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->tables:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "empty table"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown/duplicate table"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Portable123;->PREFS:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Portable123;->bound(II)I

    move-result v1

    :goto_4
    if-lez v1, :cond_c

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/shabakaty/cinemana/ca1/Portable123;->PREFS:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->prefs:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-static {v6, v4}, Lcom/shabakaty/cinemana/ca1/Portable123;->bound(II)I

    move-result v6

    :goto_5
    if-lez v6, :cond_a

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Portable123;->value(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "com.shabakaty.cinemana_preferences"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v9, Lcom/shabakaty/cinemana/ca1/Portable123;->DEFAULT_KEYS:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_6

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "private preference"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_6
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_9

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "duplicate preference"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    iget-object v6, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->prefs:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown preferences"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    if-ne v0, v2, :cond_d

    return-object p0

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "trailing data"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid speed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "incomplete archive"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unsupported archive"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/io/IOException;

    const-string v0, "archive limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static encode(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-wide v2, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget v2, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->speed:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 25
    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    iget-object v4, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->db:Ljava/lang/String;

    iget-object v5, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/Portable123;->allowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->db:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->name:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->columns:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->columns:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    invoke-static {v8}, Lcom/shabakaty/cinemana/ca1/Portable123;->identifier(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    array-length v7, v5

    iget-object v8, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->columns:[Ljava/lang/String;

    array-length v8, v8

    if-ne v7, v8, :cond_3

    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    invoke-static {v1, v9}, Lcom/shabakaty/cinemana/ca1/Portable123;->value(Ljava/io/DataOutputStream;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "row width"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown table"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_5
    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->prefs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->prefs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Portable123;->PREFS:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const-string v5, "com.shabakaty.cinemana_preferences"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/shabakaty/cinemana/ca1/Portable123;->DEFAULT_KEYS:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "private preference"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/ca1/Portable123;->value(Ljava/io/DataOutputStream;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown preferences"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length v0, p0

    const/high16 v1, 0x4000000

    if-gt v0, v1, :cond_b

    .line 27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const v2, 0x434e4d7b

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 26
    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "archive limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static finalInventory(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/io/File;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "CinemanaDownloadItem"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Portable123;->table(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    move-result-object v2

    const-string v3, "Downloads"

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Portable123;->table(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    move-result-object v3

    if-eqz v2, :cond_13

    if-eqz v3, :cond_13

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 51
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "external_id"

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lcom/shabakaty/cinemana/ca1/Portable123;->text(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    iget-object v6, v2, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v9, "task_id"

    const-string v10, "id"

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v2, v7, v10}, Lcom/shabakaty/cinemana/ca1/Portable123;->text(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "path"

    invoke-static {v2, v7, v11}, Lcom/shabakaty/cinemana/ca1/Portable123;->text(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "downloadTaskId"

    invoke-static {v2, v7, v13}, Lcom/shabakaty/cinemana/ca1/Portable123;->number(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v13

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v15, ".mkv"

    invoke-virtual {v7, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v15, v6

    const-wide/16 v6, 0x0

    invoke-static {v1, v12, v6, v7}, Lcom/shabakaty/cinemana/ca1/Portable123;->publicFile(Ljava/io/File;Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/Portable123;->matroska(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_4

    .line 53
    :cond_2
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_3

    move-object v6, v15

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v3, v7, v9}, Lcom/shabakaty/cinemana/ca1/Portable123;->number(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v18, v13, v16

    if-nez v18, :cond_4

    move-object/from16 v16, v5

    invoke-static {v3, v7, v11}, Lcom/shabakaty/cinemana/ca1/Portable123;->text(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "status"

    invoke-static {v3, v7, v5}, Lcom/shabakaty/cinemana/ca1/Portable123;->number(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v17

    const-wide/16 v19, -0x3

    cmp-long v5, v17, v19

    if-nez v5, :cond_5

    const-string v5, "size_bytes"

    invoke-static {v3, v7, v5}, Lcom/shabakaty/cinemana/ca1/Portable123;->number(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v17

    const-wide/16 v19, 0x400

    cmp-long v21, v17, v19

    if-lez v21, :cond_5

    move-object/from16 v17, v6

    invoke-static {v3, v7, v5}, Lcom/shabakaty/cinemana/ca1/Portable123;->number(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v1, v12, v5, v6}, Lcom/shabakaty/cinemana/ca1/Portable123;->publicFile(Ljava/io/File;Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object/from16 v16, v5

    :cond_5
    move-object/from16 v17, v6

    :cond_6
    move-object/from16 v5, v16

    move-object/from16 v6, v17

    goto :goto_2

    :cond_7
    move-object/from16 v16, v5

    :goto_3
    move-object v6, v15

    move-object/from16 v5, v16

    goto/16 :goto_1

    .line 52
    :cond_8
    move-object/from16 v16, v5

    :goto_4
    move-object v6, v15

    goto/16 :goto_1

    :cond_9
    move-object/from16 v16, v5

    move-object v15, v6

    goto/16 :goto_1

    .line 54
    :cond_a
    iget-object v1, v2, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v2, v5, v10}, Lcom/shabakaty/cinemana/ca1/Portable123;->text(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 55
    :cond_c
    iget-object v1, v3, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v3, v2, v8}, Lcom/shabakaty/cinemana/ca1/Portable123;->text(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v2, v9}, Lcom/shabakaty/cinemana/ca1/Portable123;->number(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v2, v5, v10

    if-eqz v2, :cond_d

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 56
    :cond_f
    const-string v1, "SubtitleDb"

    const-string v2, "SkippableSceneDB"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Portable123;->table(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v3, v2, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    const-string v6, "parentId"

    invoke-static {v2, v5, v6}, Lcom/shabakaty/cinemana/ca1/Portable123;->text(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 57
    :cond_12
    return-void

    .line 50
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing inventory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static get(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/Portable123;->index(Lcom/shabakaty/cinemana/ca1/Portable123$Table;Ljava/lang/String;)I

    move-result p0

    aget-object p0, p1, p0

    return-object p0
.end method

.method static identifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    if-eqz p0, :cond_0

    const-string v0, "[A-Za-z_][A-Za-z0-9_]{0,100}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid column"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static index(Lcom/shabakaty/cinemana/ca1/Portable123$Table;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->columns:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->columns:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static matroska(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x1a45dfa3

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method static number(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Portable123;->get(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid number"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static publicFile(Ljava/io/File;Ljava/lang/String;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static read(Ljava/io/File;)Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Portable123;->bytes(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Portable123;->decode([B)Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method static rename(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    const-string v0, "android.system.Os"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "rename"

    invoke-static {v0, p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static save(Ljava/io/File;Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Portable123;->encode(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Portable123;->decode([B)Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Portable123;->bytes(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Portable123;->decode([B)Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".previous"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Portable123;->atomic(Ljava/io/File;[B)V

    :cond_1
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Portable123;->atomic(Ljava/io/File;[B)V

    return-void
.end method

.method static string(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/high16 v1, 0x800000

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Portable123;->bound(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method static string(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    const/high16 v1, 0x800000

    if-gt v0, v1, :cond_0

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "value too large"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static table(Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;Ljava/lang/String;)Lcom/shabakaty/cinemana/ca1/Portable123$Table;
    .locals 2

    .line 45
    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Snapshot;->tables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ca1/Portable123$Table;

    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static text(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Portable123;->get(Lcom/shabakaty/cinemana/ca1/Portable123$Table;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static value(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown value type"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Portable123;->bound(II)I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/high16 v1, 0x800000

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Portable123;->bound(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    return-object v0

    :pswitch_5
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_8
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static value(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_1

    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto/16 :goto_1

    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast p1, [B

    array-length v0, p1

    const/high16 v1, 0x800000

    if-gt v0, v1, :cond_4

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "blob too large"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_1

    :cond_6
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    :cond_7
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    :cond_8
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Portable123;->string(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_9
    :goto_1
    return-void

    .line 20
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unsupported value"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
