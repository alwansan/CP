.class public final Lcom/shabakaty/downloader/FontImportStore;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/util/ArrayList;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 7

    sget-object v0, Lcom/shabakaty/downloader/FontImportStore;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/FontImportStore;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "subtitle_fonts"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/FontImportStore;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/FontImportStore;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/shabakaty/downloader/ImportedSubtitleFont;

    invoke-direct {v6, v5, v4}, Lcom/shabakaty/downloader/ImportedSubtitleFont;-><init>(Ljava/lang/String;Ljava/io/File;)V

    sget-object v5, Lcom/shabakaty/downloader/FontImportStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/FontImportStore;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/FontImportStore;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/ImportedSubtitleFont;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ImportedSubtitleFont;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {}, Lcom/shabakaty/downloader/FontImportStore;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/shabakaty/downloader/gg4;->d:Lcom/shabakaty/downloader/kf2;

    check-cast v1, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/FontImportStore;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ".ttf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".otf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static f(Ljava/lang/String;)Lcom/shabakaty/downloader/gg4;
    .locals 5

    invoke-static {}, Lcom/shabakaty/downloader/FontImportStore;->b()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ImportedSubtitleFont;

    iget-object v3, v2, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static h(Ljava/lang/String;)Lcom/shabakaty/downloader/gg4;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/shabakaty/downloader/FontImportStore;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/ImportedSubtitleFont;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/ImportedSubtitleFont;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
