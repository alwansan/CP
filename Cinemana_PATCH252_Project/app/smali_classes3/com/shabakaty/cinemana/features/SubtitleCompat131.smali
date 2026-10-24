.class public final Lcom/shabakaty/cinemana/features/SubtitleCompat131;
.super Ljava/lang/Object;
.source "SubtitleCompat131.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPreservingImported(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 3

    .line 35
    invoke-static {p2}, Lcom/shabakaty/cinemana/features/SubtitleCompat131;->importedOnly(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 39
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->appendWithPlayer(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    move-object p0, p2

    .line 43
    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move-object p2, p0

    .line 44
    :goto_1
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p2

    .line 47
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 49
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 50
    instance-of v1, p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    if-nez v1, :cond_4

    .line 51
    if-eqz p3, :cond_3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 54
    :cond_4
    check-cast p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 55
    iget-object v1, p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    const-string v2, "embedded://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    .line 56
    const-string v2, "file"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/features/SubtitleCompat131;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/features/SubtitleCompat131;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 57
    :goto_3
    if-eqz v1, :cond_7

    goto :goto_2

    .line 58
    :cond_7
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object p3, p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_8
    goto :goto_2

    .line 61
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 62
    check-cast p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 63
    iget-object v0, p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_b
    goto :goto_4

    .line 65
    :cond_c
    return-object p0
.end method

.method public static cleanupOldImportsExcept(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 70
    if-nez p0, :cond_0

    return-void

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCacheDir"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 73
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 74
    instance-of v0, p0, Ljava/io/File;

    if-nez v0, :cond_1

    return-void

    .line 75
    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 76
    :goto_0
    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 77
    if-nez p0, :cond_3

    return-void

    .line 78
    :cond_3
    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_7

    aget-object v1, p0, v2

    .line 79
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "USER_SUBTITLE_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_5

    goto :goto_2

    .line 81
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 78
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    :catchall_1
    move-exception p0

    :cond_7
    nop

    .line 84
    return-void
.end method

.method private static eq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 91
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static importedOnly(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    if-nez p0, :cond_0

    return-object v0

    .line 23
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 24
    instance-of v2, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    if-nez v2, :cond_2

    goto :goto_0

    .line 25
    :cond_2
    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 26
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SubtitleCompat131;->isImported(Lcom/shabakaty/cinemana/domain/models/local/Subtitle;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 27
    :cond_3
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 28
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_0

    .line 30
    :cond_5
    return-object v0
.end method

.method private static isImported(Lcom/shabakaty/cinemana/domain/models/local/Subtitle;)Z
    .locals 2

    .line 87
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->name:Ljava/lang/String;

    const-string v1, "file"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/SubtitleCompat131;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/features/SubtitleCompat131;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
