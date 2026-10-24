.class public final Lcom/shabakaty/downloader/ImportedSubtitleFont;
.super Lcom/shabakaty/downloader/gg4;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/shabakaty/downloader/gg4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method
