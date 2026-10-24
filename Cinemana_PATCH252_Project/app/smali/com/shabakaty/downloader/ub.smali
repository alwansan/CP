.class public Lcom/shabakaty/downloader/ub;
.super Ljava/lang/Object;
.source "AppUpdater.java"

# interfaces
.implements Lcom/shabakaty/downloader/vw1;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/vb;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ub;->a:Lcom/shabakaty/downloader/vb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "AppUpdater"

    const-string v0, "UpdateFrom.GOOGLE_PLAY isn\'t valid: update varies by device."

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON file is not valid!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XML file is not valid!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GitHub user or repo is empty!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
