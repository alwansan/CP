.class public final Lcom/shabakaty/downloader/je;
.super Ljava/lang/Object;
.source "AudioBecomingNoisyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/je$a;,
        Lcom/shabakaty/downloader/je$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/je$a;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/shabakaty/downloader/je$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/je;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/je$a;

    invoke-direct {p1, p0, p2, p3}, Lcom/shabakaty/downloader/je$a;-><init>(Lcom/shabakaty/downloader/je;Landroid/os/Handler;Lcom/shabakaty/downloader/je$b;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/je;->b:Lcom/shabakaty/downloader/je$a;

    return-void
.end method
