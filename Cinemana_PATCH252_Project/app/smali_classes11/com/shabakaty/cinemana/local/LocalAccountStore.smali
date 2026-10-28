.class public final Lcom/shabakaty/cinemana/local/LocalAccountStore;
.super Ljava/lang/Object;
.source "LocalAccountStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/local/LocalAccountStore$Events;,
        Lcom/shabakaty/cinemana/local/LocalAccountStore$State;,
        Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;,
        Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;
    }
.end annotation


# static fields
.field private static final MAX_ARCHIVE:J = 0x1800000L

.field private static final MAX_IMAGE:I = 0x200000

.field private static final MAX_ROWS:I = 0x186a0

.field private static final VERSION:I = 0x3


# instance fields
.field private final directory:Ljava/io/File;

.field private final events:Lcom/shabakaty/cinemana/local/LocalAccountStore$Events;

.field private state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/shabakaty/cinemana/local/LocalAccountStore$Events;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->directory:Ljava/io/File;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->events:Lcom/shabakaty/cinemana/local/LocalAccountStore$Events;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_1c

    :cond_14
    new-instance p1, Ljava/io/IOException;

    const-string p2, "data directory unavailable"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    :goto_1c
    new-instance p2, Ljava/io/File;

    const-string v0, "account.bin"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "account.bin.bak"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_52

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "recovery failed"

    if-eqz p1, :cond_45

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_45

    :cond_3f
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    :goto_45
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_52

    :cond_4c
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    :goto_52
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_61

    invoke-static {p2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->read(Ljava/io/File;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->decode([B)Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    move-result-object p1

    goto :goto_66

    :cond_61
    new-instance p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    invoke-direct {p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;-><init>()V

    :goto_66
    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->validId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->validText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private commit(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->encode(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)[B

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->directory:Ljava/io/File;

    const-string v3, "account.bin.pending"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->directory:Ljava/io/File;

    const-string v4, "account.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->directory:Ljava/io/File;

    const-string v5, "account.bin.bak"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_24
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_8c

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_84

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_4c

    :cond_44
    new-instance p1, Ljava/io/IOException;

    const-string v0, "backup failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    :goto_4c
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_6a

    if-eqz v0, :cond_62

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_62

    new-instance p1, Ljava/io/IOException;

    const-string v0, "restore failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_62
    new-instance p1, Ljava/io/IOException;

    const-string v0, "commit failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    if-eqz v0, :cond_81

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_73

    goto :goto_81

    :cond_73
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance p1, Ljava/io/IOException;

    const-string v0, "commit finalization failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_81
    :goto_81
    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    return-void

    :cond_84
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unresolved backup"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_8c
    move-exception p1

    :try_start_8d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    goto :goto_95

    :catchall_91
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_95
    throw p1
.end method

.method private copy()Lcom/shabakaty/cinemana/local/LocalAccountStore$State;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->encode(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->decode([B)Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    move-result-object v0

    return-object v0
.end method

.method private static count(Ljava/io/DataInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    if-ltz p0, :cond_c

    const v0, 0x186a0

    if-gt p0, v0, :cond_c

    return p0

    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid count"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static decode([B)Lcom/shabakaty/cinemana/local/LocalAccountStore$State;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    int-to-long v0, v0

    const-wide/32 v2, 0x1800000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_149

    :try_start_9
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_17} :catch_140

    const v1, 0x434e4d4c

    const-string v2, "unsupported schema"

    if-ne p0, v1, :cond_13a

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_134

    const/4 v3, 0x3

    if-gt p0, v3, :cond_134

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;-><init>()V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x50

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->validText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    if-ltz v4, :cond_12c

    const/high16 v5, 0x200000

    if-gt v4, v5, :cond_12c

    new-array v4, v4, [B

    iput-object v4, v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->avatar:[B

    iget-object v4, v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->avatar:[B

    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_52
    if-ge v6, v5, :cond_8b

    aget-object v7, v4, v6

    if-ne p0, v1, :cond_5c

    sget-object v8, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-eq v7, v8, :cond_88

    :cond_5c
    if-ge p0, v3, :cond_63

    sget-object v8, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-ne v7, v8, :cond_63

    goto :goto_88

    :cond_63
    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->count(Ljava/io/DataInputStream;)I

    move-result v8

    :goto_67
    if-lez v8, :cond_88

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->item(Ljava/io/DataInputStream;I)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v9

    iget-object v10, v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    invoke-virtual {v10, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedHashMap;

    iget-object v11, v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_80

    add-int/lit8 v8, v8, -0x1

    goto :goto_67

    :cond_80
    new-instance p0, Ljava/io/IOException;

    const-string v0, "duplicate item"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    :goto_88
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    :cond_8b
    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->count(Ljava/io/DataInputStream;)I

    move-result v1

    :goto_8f
    if-lez v1, :cond_c5

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->validId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->count(Ljava/io/DataInputStream;)I

    move-result v5

    :goto_a2
    if-lez v5, :cond_b2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->validId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_a2

    :cond_b2
    iget-object v5, v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->known:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_bd

    add-int/lit8 v1, v1, -0x1

    goto :goto_8f

    :cond_bd
    new-instance p0, Ljava/io/IOException;

    const-string v0, "duplicate baseline"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c5
    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->count(Ljava/io/DataInputStream;)I

    move-result v1

    :goto_c9
    if-lez v1, :cond_ee

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->item(Ljava/io/DataInputStream;I)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v4

    const-string v5, "[A-Za-z0-9_-]{1,100}:[A-Za-z0-9_-]{1,100}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e6

    iget-object v5, v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->inbox:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e6

    add-int/lit8 v1, v1, -0x1

    goto :goto_c9

    :cond_e6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid inbox"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ee
    const/4 v1, 0x2

    if-lt p0, v1, :cond_11c

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->count(Ljava/io/DataInputStream;)I

    move-result p0

    :goto_f5
    if-lez p0, :cond_11c

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->validId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->validText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->config:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_114

    add-int/lit8 p0, p0, -0x1

    goto :goto_f5

    :cond_114
    new-instance p0, Ljava/io/IOException;

    const-string v0, "duplicate config"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11c
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_124

    return-object v2

    :cond_124
    new-instance p0, Ljava/io/IOException;

    const-string v0, "trailing data"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "image limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_134
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13a
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_140
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_140} :catch_140

    :catch_140
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid account"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_149
    new-instance p0, Ljava/io/IOException;

    const-string v0, "account limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encode(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    const v4, 0x186a0

    if-ge v3, v1, :cond_27

    aget-object v5, v0, v3

    iget-object v6, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-gt v5, v4, :cond_1f

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "list limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->known:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gt v0, v4, :cond_18f

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->inbox:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gt v0, v4, :cond_18f

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->known:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gt v1, v4, :cond_54

    goto :goto_41

    :cond_54
    new-instance p0, Ljava/io/IOException;

    const-string v0, "episode limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$1;

    invoke-direct {v1, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore$1;-><init>(Ljava/io/ByteArrayOutputStream;)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const v1, 0x434e4d4c

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->avatar:[B

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->avatar:[B

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v1

    array-length v4, v1

    :goto_8a
    if-ge v2, v4, :cond_c0

    aget-object v5, v1, v2

    iget-object v6, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v6, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ad
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v3, v6}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->item(Ljava/io/DataOutputStream;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V

    goto :goto_ad

    :cond_bd
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    :cond_c0
    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->known:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->known:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ff
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_ff

    :cond_10f
    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->inbox:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->inbox:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_122
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_141

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->item(Ljava/io/DataOutputStream;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V

    goto :goto_122

    :cond_141
    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->config:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->config:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_154
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_173

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_154

    :cond_173
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    int-to-long v1, p0

    const-wide/32 v3, 0x1800000

    cmp-long p0, v1, v3

    if-gtz p0, :cond_187

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_187
    new-instance p0, Ljava/io/IOException;

    const-string v0, "account limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "state limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private event(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->events:Lcom/shabakaty/cinemana/local/LocalAccountStore$Events;

    if-eqz v0, :cond_7

    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Events;->record(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method private static item(Ljava/io/DataInputStream;I)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    new-instance v6, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    const/4 v0, 0x2

    if-lt p1, v0, :cond_16

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_16
    const-string p0, ""

    :goto_18
    move-object v5, p0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v6
.end method

.method private static item(Ljava/io/DataOutputStream;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->positionMs:J

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object p1, p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method private static read(Ljava/io/File;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-string v2, "account limit"

    const-wide/32 v3, 0x1800000

    cmp-long v5, v0, v3

    if-gtz v5, :cond_56

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_12
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_4c

    const/16 v1, 0x2000

    :try_start_19
    new-array v1, v1, [B

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_37

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/2addr v6, v5

    int-to-long v6, v6

    cmp-long v8, v6, v3

    if-gtz v8, :cond_31

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    :cond_31
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_3b
    .catchall {:try_start_19 .. :try_end_3b} :catchall_42

    :try_start_3b
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_42
    move-exception v1

    :try_start_43
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception p0

    :try_start_48
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4b
    throw v1
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p0

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p0

    :cond_56
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_b

    const-string v0, "[A-Za-z0-9_-]{1,100}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid id"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_9

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid text"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized avatar()[B
    .locals 1

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->avatar:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearInbox()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->copy()Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    move-result-object v0

    iget-object v1, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->inbox:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-direct {p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->commit(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->config:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-nez p1, :cond_e

    goto :goto_f

    :cond_e
    move-object p2, p1

    :goto_f
    monitor-exit p0

    return-object p2

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized exportZip(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p1, Ljava/util/zip/ZipEntry;

    const-string v1, "account.bin"

    invoke-direct {p1, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->encode(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->finish()V

    const-string p1, "backup_exported"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->event(Ljava/lang/String;I)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;
    .locals 1

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized importZip(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    :goto_a
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_27

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v5, v3

    const/high16 v6, 0x2000000

    if-gt v5, v6, :cond_1f

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    :cond_1f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "archive limit"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x16

    :goto_2e
    array-length v2, p1

    const v3, 0x10015

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v0, v2, :cond_100

    aget-byte v2, p1, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_fc

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_fc

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_fc

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p1, v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_fc

    add-int/lit8 v2, v0, 0x14

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x15

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x16

    add-int/2addr v3, v2

    array-length v2, p1

    if-ne v3, v2, :cond_fc

    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    new-array p1, v1, [B

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_79
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_c3

    const-string v7, "account.bin"

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bb

    if-nez v1, :cond_bb

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_bb

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_98
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    if-eq v6, v5, :cond_b3

    int-to-long v7, v6

    add-long/2addr v2, v7

    const-wide/32 v7, 0x1800000

    cmp-long v9, v2, v7

    if-gtz v9, :cond_ab

    invoke-virtual {v1, p1, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_98

    :cond_ab
    new-instance p1, Ljava/io/IOException;

    const-string v0, "backup limit"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_79

    :cond_bb
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unsupported backup entry"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c3
    if-eqz v1, :cond_f4

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->decode([B)Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    move-result-object p1

    iget-object v0, p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->known:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->config:Ljava/util/Map;

    const-string v1, "last_scan"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->config:Ljava/util/Map;

    const-string v1, "scan_cursor"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->config:Ljava/util/Map;

    const-string v1, "legacy_seeded"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->commit(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)V

    const-string p1, "backup_imported"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->event(Ljava/lang/String;I)V
    :try_end_f2
    .catchall {:try_start_1 .. :try_end_f2} :catchall_108

    monitor-exit p0

    return-void

    :cond_f4
    :try_start_f4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "empty backup"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fc
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2e

    :cond_100
    new-instance p1, Ljava/io/IOException;

    const-string v0, "incomplete ZIP"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_108
    .catchall {:try_start_f4 .. :try_end_108} :catchall_108

    :catchall_108
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized inbox()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    iget-object v1, v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->inbox:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    iget-object v1, v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized merge(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->copy()Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    iget-object v4, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashMap;

    iget-object v5, v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_41
    invoke-direct {p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->commit(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized name()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->name:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized profile(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->copy()Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x50

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->validText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->name:Ljava/lang/String;

    iget-object p1, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_39

    array-length p1, p2

    const/high16 v1, 0x200000

    if-gt p1, v1, :cond_31

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->avatar:[B

    invoke-direct {p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->commit(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)V

    const-string p1, "profile_saved"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->event(Ljava/lang/String;I)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_41

    monitor-exit p0

    return-void

    :cond_31
    :try_start_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "image too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->copy()Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    move-result-object v0

    iget-object v1, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    iget-object v1, p2, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->commit(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)V

    const-string p1, "list_saved"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->event(Ljava/lang/String;I)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reconcile(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->validId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore;->state:Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_b2

    monitor-exit p0

    return-object p1

    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    iget-object v2, v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_38
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_b2

    monitor-exit p0

    return-object p1

    :cond_44
    :try_start_44
    invoke-direct {p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->copy()Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    move-result-object v1

    iget-object v2, v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->known:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_5d

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_9c

    :cond_5d
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_61
    :goto_61
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    iget-object v5, v4, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->inbox:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_61

    iget-object v6, v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->inbox:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_9c
    :goto_9c
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    iget-object p2, v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->known:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->commit(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)V

    const-string p1, "episodes_reconciled"

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->event(Ljava/lang/String;I)V
    :try_end_b0
    .catchall {:try_start_44 .. :try_end_b0} :catchall_b2

    monitor-exit p0

    return-object v3

    :catchall_b2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->copy()Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    move-result-object v0

    iget-object v1, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-ne p1, v1, :cond_19

    iget-object p1, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->known:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-direct {p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->commit(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)V

    const-string p1, "list_removed"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->event(Ljava/lang/String;I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->validId(Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0x1000

    invoke-static {p2, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->validText(Ljava/lang/String;I)Ljava/lang/String;

    invoke-direct {p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->copy()Lcom/shabakaty/cinemana/local/LocalAccountStore$State;

    move-result-object v0

    iget-object v1, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->config:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->commit(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method
