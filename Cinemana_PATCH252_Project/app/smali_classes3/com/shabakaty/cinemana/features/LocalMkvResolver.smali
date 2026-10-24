.class public final Lcom/shabakaty/cinemana/features/LocalMkvResolver;
.super Ljava/lang/Object;
.source "LocalMkvResolver.java"


# static fields
.field private static final CINEMANA_ROOT:Ljava/lang/String; = "Cinemana"

.field private static final DOWNLOAD_DIR:Ljava/lang/String; = "Cinemana/work"

.field private static final TAG:Ljava/lang/String; = "LocalMkvResolver"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendLog(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Log94;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    const-string v0, ".mkv_player_resolver.log"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Cinemana/work"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    new-instance v2, Ljava/io/File;

    const-string v3, "log"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 288
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 291
    :cond_2
    new-instance v0, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 293
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    goto :goto_0

    .line 294
    :catchall_0
    move-exception p0

    .line 296
    :goto_0
    return-void
.end method

.method private static collectMkvFiles(Ljava/io/File;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I)V"
        }
    .end annotation

    .line 257
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-ltz p2, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 259
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 260
    if-nez p0, :cond_1

    return-void

    .line 261
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p0, v1

    .line 262
    if-nez v2, :cond_2

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    const-string v3, "log"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 265
    :cond_3
    add-int/lit8 v3, p2, -0x1

    invoke-static {v2, p1, v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->collectMkvFiles(Ljava/io/File;Ljava/util/List;I)V

    goto :goto_1

    .line 266
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mkv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 267
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :catchall_0
    move-exception p0

    :cond_6
    nop

    .line 271
    return-void

    .line 257
    :cond_7
    :goto_2
    return-void
.end method

.method private static detectRequestedNoSub(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3

    .line 133
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "subtitles"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "getSubtitles"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->readProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 134
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 135
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0

    .line 137
    :cond_1
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    .line 138
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object p0

    .line 140
    :catchall_0
    move-exception p0

    :cond_3
    nop

    .line 141
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 316
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 317
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 318
    invoke-static {v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    .line 317
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_2
    return-object v0
.end method

.method private static hasNoSubPrefix(Ljava/lang/String;)Z
    .locals 7

    .line 125
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 127
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "(No Sub) "

    const/4 v5, 0x0

    const/16 v6, 0x9

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "(No Sub)"

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 128
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 127
    :cond_2
    return v0
.end method

.method private static isBlank(Ljava/lang/String;)Z
    .locals 0

    .line 312
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isInsideLog(Ljava/io/File;)Z
    .locals 3

    .line 274
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 275
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 276
    :goto_0
    if-eqz p0, :cond_2

    .line 277
    const-string v1, "log"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 278
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 280
    :cond_2
    return v0
.end method

.method private static nonEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 309
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 231
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 232
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/DownloadTitle127;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 233
    const/16 v0, 0x3a

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 234
    const/16 v0, 0x2013

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 235
    const/16 v0, 0x2014

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 236
    const-string v0, "[\\\\/:*?\"<>|]"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 237
    const-string v0, "[^\\p{L}\\p{N}]+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static normalizeForMatching(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 226
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->stripNoSubPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 227
    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseNumber(Ljava/lang/String;)I
    .locals 3

    .line 242
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 243
    :cond_0
    const-string v1, "[^0-9]"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 246
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 247
    :catchall_0
    move-exception p0

    .line 248
    return v0
.end method

.method private static varargs readProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    .line 190
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 191
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 192
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 193
    move-object v6, v1

    .line 194
    :goto_1
    if-eqz v6, :cond_1

    .line 196
    :try_start_0
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 197
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 198
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 199
    :catchall_0
    move-exception v7

    .line 200
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_1

    .line 203
    :cond_1
    :try_start_1
    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 204
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    .line 205
    :catchall_1
    move-exception v5

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    :cond_2
    return-object v0

    .line 190
    :cond_3
    :goto_2
    return-object v0
.end method

.method private static readStringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 299
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 302
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 303
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    .line 304
    :catchall_0
    move-exception p0

    .line 305
    return-object v0

    .line 299
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static resolve(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 20

    .line 22
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 24
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Cinemana/work"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 27
    :cond_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "title"

    .line 28
    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->readStringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "enTitle"

    .line 29
    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->readStringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "arTitle"

    .line 30
    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->readStringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "customEnTitle"

    .line 31
    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->readStringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "customArTitle"

    .line 32
    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->readStringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v2, v7

    .line 27
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_b

    .line 35
    :cond_2
    const-string v3, "season"

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->readStringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    const-string v8, "episodeNummer"

    invoke-static {v0, v8}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->readStringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 37
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resolve title="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " season="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " episode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->appendLog(Ljava/lang/String;)V

    .line 38
    invoke-static {v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->isBlank(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v8}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->isBlank(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->parseNumber(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_3

    invoke-static {v8}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->parseNumber(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_3

    move v9, v5

    goto :goto_0

    :cond_3
    move v9, v4

    .line 40
    :goto_0
    if-eqz v9, :cond_4

    .line 41
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->parseNumber(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->twoDigits(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " e"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->parseNumber(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->twoDigits(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 42
    :cond_4
    move-object v3, v1

    .line 44
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "Cinemana"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10, v8, v7}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->collectMkvFiles(Ljava/io/File;Ljava/util/List;I)V

    .line 47
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    return-object v1

    .line 49
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->detectRequestedNoSub(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v10

    .line 50
    new-array v6, v6, [Ljava/lang/String;

    const-string v11, "id"

    invoke-static {v0, v11}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->readStringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v4

    const-string v11, "nb"

    invoke-static {v0, v11}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->readStringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v5

    invoke-static {v6}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    const-string v11, "downloadTaskId"

    invoke-static {v0, v11}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->readStringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v6, v0, v10}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->resolveFromIdentityLedger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/File;

    move-result-object v11

    .line 57
    const-wide/16 v12, 0x0

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14

    cmp-long v14, v14, v12

    if-lez v14, :cond_6

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDENTITY_HIT id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " noSub="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " path="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->appendLog(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v11}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_6
    nop

    .line 63
    nop

    .line 64
    nop

    .line 65
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/high16 v14, -0x8000000000000000L

    const/high16 v8, -0x80000000

    move-object v11, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/io/File;

    .line 68
    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v17

    if-nez v17, :cond_7

    move-wide/from16 v18, v12

    goto/16 :goto_a

    .line 69
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 70
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v12, ".mkv"

    invoke-virtual {v1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-wide/16 v18, 0x0

    goto/16 :goto_a

    .line 72
    :cond_8
    invoke-static/range {v16 .. v16}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->isInsideLog(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-wide/16 v18, 0x0

    goto/16 :goto_a

    .line 74
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v5, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->hasNoSubPrefix(Ljava/lang/String;)Z

    move-result v5

    .line 76
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->stripNoSubPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 80
    if-eqz v9, :cond_c

    .line 81
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->normalizeForMatching(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->normalizeForMatching(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 83
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 85
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->normalizeForMatching(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->titleSimilarity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v4

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v1, 0x1

    .line 86
    :goto_4
    goto :goto_6

    .line 87
    :cond_c
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 88
    invoke-static {v12, v0}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->titleSimilarity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    move v1, v4

    goto :goto_6

    :cond_e
    :goto_5
    const/4 v1, 0x1

    .line 91
    :goto_6
    if-eqz v1, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v18, 0x0

    cmp-long v1, v12, v18

    if-lez v1, :cond_15

    .line 92
    nop

    .line 93
    if-eqz v10, :cond_10

    .line 94
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v5, v1, :cond_f

    const/16 v1, 0x3e8

    goto :goto_7

    :cond_f
    const/16 v1, -0x3e8

    goto :goto_7

    .line 93
    :cond_10
    move v1, v4

    .line 98
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 99
    if-eqz v12, :cond_12

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->hasNoSubPrefix(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 100
    if-eqz v5, :cond_11

    add-int/lit8 v1, v1, 0x64

    goto :goto_8

    .line 101
    :cond_11
    add-int/lit8 v1, v1, -0x19

    .line 103
    :cond_12
    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 104
    if-eqz v11, :cond_13

    if-gt v1, v8, :cond_13

    if-ne v1, v8, :cond_15

    cmp-long v5, v12, v14

    if-lez v5, :cond_15

    .line 106
    :cond_13
    nop

    .line 107
    nop

    .line 108
    move v8, v1

    move-wide v14, v12

    move-object/from16 v11, v16

    goto :goto_9

    .line 91
    :cond_14
    const-wide/16 v18, 0x0

    .line 111
    :cond_15
    :goto_9
    move-wide/from16 v12, v18

    const/4 v1, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 68
    :cond_16
    move-wide/from16 v18, v12

    .line 67
    :goto_a
    move-wide/from16 v12, v18

    const/4 v1, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 113
    :cond_17
    if-nez v11, :cond_18

    .line 114
    const-string v0, "MISS"

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->appendLog(Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x0

    return-object v1

    .line 117
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->appendLog(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v11}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 33
    :cond_19
    :goto_b
    const/4 v1, 0x0

    return-object v1

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    const/4 v1, 0x0

    return-object v1
.end method

.method private static resolveFromIdentityLedger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/File;
    .locals 19

    .line 146
    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Cinemana/work"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    new-instance v3, Ljava/io/File;

    const-string v4, "log"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/io/File;

    const-string v4, ".mkv_identity.map"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    goto/16 :goto_9

    .line 150
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v0, "UTF-8"

    invoke-direct {v4, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 152
    nop

    .line 153
    const/4 v4, 0x0

    const-wide/high16 v9, -0x8000000000000000L

    .line 155
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 156
    const-string v11, "\\|"

    const/4 v12, -0x1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 157
    nop

    .line 158
    nop

    .line 159
    array-length v12, v11

    const/4 v13, 0x0

    move v14, v13

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/high16 v17, -0x8000000000000000L

    :goto_1
    if-ge v14, v12, :cond_8

    aget-object v0, v11, v14

    .line 160
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 161
    if-gtz v5, :cond_1

    goto :goto_2

    .line 162
    :cond_1
    invoke-virtual {v0, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 163
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v5, "itemId"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v15, v0

    goto :goto_2

    .line 165
    :cond_2
    const-string v5, "nb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v7, v0

    goto :goto_2

    .line 166
    :cond_3
    const-string v5, "taskId"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v8, v0

    goto :goto_2

    .line 167
    :cond_4
    const-string v5, "path"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v16, v0

    goto :goto_2

    .line 168
    :cond_5
    const-string v5, "noSub"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v2, v0

    goto :goto_2

    .line 169
    :cond_6
    const-string v5, "token"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 170
    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    if-lez v5, :cond_7

    add-int/lit8 v5, v5, 0x1

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 159
    :cond_7
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v5, 0x0

    goto :goto_1

    .line 174
    :cond_8
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v5

    goto :goto_3

    :cond_9
    move v0, v13

    .line 175
    :goto_3
    if-nez v0, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->nonEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v5

    goto :goto_4

    :cond_a
    move v6, v13

    .line 176
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->nonEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    move-object/from16 v7, p1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    move v13, v5

    goto :goto_5

    :cond_b
    move-object/from16 v7, p1

    .line 177
    :cond_c
    :goto_5
    if-nez v0, :cond_e

    if-nez v6, :cond_e

    if-eqz v13, :cond_d

    goto :goto_7

    :cond_d
    :goto_6
    const-wide/16 v11, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    invoke-static/range {v16 .. v16}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_6

    .line 178
    :cond_f
    const-string v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 179
    if-eqz p2, :cond_10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v0, v2, :cond_10

    const-wide/16 v11, 0x0

    goto :goto_8

    .line 180
    :cond_10
    new-instance v0, Ljava/io/File;

    move-object/from16 v2, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v11, 0x0

    cmp-long v2, v5, v11

    if-gtz v2, :cond_11

    goto :goto_8

    .line 182
    :cond_11
    cmp-long v2, v17, v9

    if-ltz v2, :cond_12

    move-object v4, v0

    move-wide/from16 v9, v17

    .line 183
    :cond_12
    move-wide v5, v11

    goto/16 :goto_0

    .line 181
    :cond_13
    const-wide/16 v11, 0x0

    .line 155
    :goto_8
    move-wide v5, v11

    goto/16 :goto_0

    .line 184
    :cond_14
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    return-object v4

    .line 149
    :cond_15
    :goto_9
    const/4 v1, 0x0

    return-object v1

    .line 186
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static stripNoSubPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 218
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 219
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 220
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "(No Sub) "

    const/4 v4, 0x0

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 221
    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "(No Sub)"

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 222
    :cond_2
    return-object p0
.end method

.method private static titleSimilarity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 211
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 214
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 211
    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static twoDigits(I)Ljava/lang/String;
    .locals 2

    .line 253
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%02d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
