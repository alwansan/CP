.class public abstract Lzendesk/messaging/MessagingModule;
.super Ljava/lang/Object;
.source "MessagingModule.java"


# direct methods
.method public static belvedere(Landroid/content/Context;)Lcom/shabakaty/downloader/ul;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/ul;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/ul;

    move-result-object p0

    return-object p0
.end method

.method public static picasso(Landroid/content/Context;)Lcom/squareup/picasso/k;
    .locals 15

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    new-instance v4, Lcom/shabakaty/downloader/y53;

    invoke-direct {v4, p0}, Lcom/shabakaty/downloader/y53;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v7, Lcom/shabakaty/downloader/pl2;

    invoke-direct {v7, p0}, Lcom/shabakaty/downloader/pl2;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/fc3;

    invoke-direct {v2}, Lcom/shabakaty/downloader/fc3;-><init>()V

    .line 5
    sget-object v8, Lcom/squareup/picasso/k$e;->a:Lcom/squareup/picasso/k$e;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/tc4;

    invoke-direct {v9, v7}, Lcom/shabakaty/downloader/tc4;-><init>(Lcom/shabakaty/downloader/pp;)V

    .line 7
    new-instance v10, Lcom/squareup/picasso/f;

    sget-object v3, Lcom/squareup/picasso/k;->n:Landroid/os/Handler;

    move-object v0, v10

    move-object v1, p0

    move-object v5, v7

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/f;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/shabakaty/downloader/ty0;Lcom/shabakaty/downloader/pp;Lcom/shabakaty/downloader/tc4;)V

    .line 8
    new-instance v11, Lcom/squareup/picasso/k;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v11

    move-object v2, v10

    move-object v3, v7

    move-object v5, v8

    move-object v7, v9

    move-object v8, v14

    move v9, v12

    move v10, v13

    invoke-direct/range {v0 .. v10}, Lcom/squareup/picasso/k;-><init>(Landroid/content/Context;Lcom/squareup/picasso/f;Lcom/shabakaty/downloader/pp;Lcom/squareup/picasso/k$c;Lcom/squareup/picasso/k$e;Ljava/util/List;Lcom/shabakaty/downloader/tc4;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v11

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method
