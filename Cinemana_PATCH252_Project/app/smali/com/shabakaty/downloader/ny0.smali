.class public Lcom/shabakaty/downloader/ny0;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/my0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/my0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ny0;->r:Lcom/shabakaty/downloader/my0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ny0;->r:Lcom/shabakaty/downloader/my0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/my0;->l:Lcom/shabakaty/downloader/n63;

    if-eqz v0, :cond_1

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/jz4$a;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/jz4$a;->a:Landroidx/appcompat/app/b;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fa;->dismiss()V

    .line 5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/shabakaty/downloader/jz4$a;->b:Ljava/lang/String;

    const-string v4, "/application.apk"

    invoke-static {v2, v3, v4}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/shabakaty/downloader/jz4$a;->c:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v2, v3}, Landroidx/core/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$a;

    move-result-object v2

    .line 8
    invoke-interface {v2, v1}, Landroidx/core/content/FileProvider$a;->b(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_0

    .line 10
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 11
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "application/vnd.android.package-archive"

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ny0;->r:Lcom/shabakaty/downloader/my0;

    invoke-static {v0}, Lcom/shabakaty/downloader/my0;->a(Lcom/shabakaty/downloader/my0;)V

    return-void
.end method
