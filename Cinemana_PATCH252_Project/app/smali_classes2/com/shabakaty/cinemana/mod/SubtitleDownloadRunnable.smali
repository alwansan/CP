.class public Lcom/shabakaty/cinemana/mod/SubtitleDownloadRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final subUrl:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SubtitleDownloadRunnable;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/SubtitleDownloadRunnable;->subUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/cinemana/mod/SubtitleDownloadRunnable;->videoUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/cinemana/mod/SubtitleDownloadRunnable;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/SubtitleDownloadRunnable;->subUrl:Ljava/lang/String;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/shabakaty/cinemana/mod/SubtitleDownloadRunnable;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "xplayer_sub.srt"

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x2000

    new-array v9, v9, [B

    :goto_0
    invoke-virtual {v3, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/SubtitleDownloadRunnable;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/cinemana/mod/SubtitleDownloadRunnable;->videoUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/cinemana/mod/SubtitleDownloadRunnable;->title:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/shabakaty/cinemana/mod/XPlayerHelper;->launchXPlayerIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
