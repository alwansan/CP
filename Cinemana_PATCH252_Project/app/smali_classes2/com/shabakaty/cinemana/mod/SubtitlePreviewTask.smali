.class public final Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

.field private final inputPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->inputPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    return-void
.end method

.method private static extractEmbedded(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .locals 8

    const-string v0, "0:s:0?"

    const-string v1, "0:s:1?"

    const-string v2, "0:s:2?"

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "ar"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "0:s:m:language:ar"

    invoke-static {p0, p1, v4, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v4

    :cond_0
    const-string v4, "0:s:m:language:ara"

    invoke-static {p0, p1, v4, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v4

    :cond_1
    invoke-static {p0, p1, v0, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    return v4

    :cond_2
    const-string v4, "sp"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "0:s:m:language:sp"

    invoke-static {p0, p1, v4, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v4

    :cond_3
    const-string v4, "0:s:m:language:special"

    invoke-static {p0, p1, v4, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v4

    :cond_4
    invoke-static {p0, p1, v1, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v4

    :cond_5
    invoke-static {p0, p1, v2, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v4

    :cond_6
    invoke-static {p0, p1, v0, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    return v4

    :cond_7
    const-string v4, "#"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0:s:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v4, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    return v4

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0:s:m:language:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v4, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "en"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "0:s:m:language:eng"

    invoke-static {p0, p1, v4, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    invoke-static {p0, p1, v0, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    return v4

    :cond_b
    invoke-static {p0, p1, v1, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_c

    return v4

    :cond_c
    invoke-static {p0, p1, v2, p3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    return v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v3
.end method

.method private static getFfmpeg(Landroid/content/Context;)Ljava/io/File;
    .locals 8

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v2, "libffmpeg.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ffmpeg_preview"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/File;->setExecutable(Z)Z

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "ffmpeg"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x4000

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static readRemoteText(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    :try_start_0
    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android) AppleWebKit/537.36 Chrome/120 Mobile Safari/537.36"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const v7, 0x7d000

    if-lt v6, v7, :cond_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static readText(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "UTF-8"

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const v6, 0x7d000

    if-lt v5, v6, :cond_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static runExtract(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .locals 9

    :try_start_0
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-nostdin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-hide_banner"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "-loglevel"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "error"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-y"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-i"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p1, v0, v1

    const/16 v1, 0x8

    const-string v2, "-map"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object p2, v0, v1

    const/16 v1, 0xa

    const-string v2, "-c:s"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "srt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->inputPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :try_start_0
    const-string v2, "embedded://mkv/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->readRemoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    goto :goto_0

    :cond_0
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getVideoModel()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v9, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->context:Landroid/content/Context;

    invoke-static {v9, v8}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->resolve(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v10, "file:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_2

    iget-object v11, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->getFfmpeg(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    const-string v13, "cinemana_subtitle_preview.srt"

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    invoke-static {v11, v9, v7, v10}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->extractEmbedded(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v10}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    if-eqz v4, :cond_2

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/shabakaty/cinemana/mod/SubtitlePreviewResult;

    iget-object v6, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-direct {v3, v0, v4, v6}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewResult;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto :goto_1

    :cond_2
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/shabakaty/cinemana/mod/SubtitlePreviewResult;

    const-string v4, "\u062a\u0639\u0630\u0631 \u062a\u062d\u0645\u064a\u0644 \u0623\u0648 \u0642\u0631\u0627\u0621\u0629 \u0645\u0644\u0641 \u0627\u0644\u062a\u0631\u062c\u0645\u0629 \u0644\u0644\u0645\u0639\u0627\u064a\u0646\u0629."

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-direct {v3, v0, v4, v5}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewResult;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
