.class public final Lcom/shabakaty/downloader/pl2;
.super Ljava/lang/Object;
.source "LruCache.java"

# interfaces
.implements Lcom/shabakaty/downloader/pp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pl2$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/pl2$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/az4;->a:Ljava/lang/StringBuilder;

    const-string v0, "activity"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Landroid/app/ActivityManager;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    :goto_1
    const-wide/32 v0, 0x100000

    int-to-long v2, p1

    mul-long v2, v2, v0

    const-wide/16 v0, 0x7

    .line 6
    div-long/2addr v2, v0

    long-to-int p1, v2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/ol2;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ol2;-><init>(Lcom/shabakaty/downloader/pl2;I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/pl2;->a:Landroid/util/LruCache;

    return-void
.end method
