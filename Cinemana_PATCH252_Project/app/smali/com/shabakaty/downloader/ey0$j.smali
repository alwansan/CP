.class public final Lcom/shabakaty/downloader/ey0$j;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ey0;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ey0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ey0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$j;->r:Lcom/shabakaty/downloader/ey0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ey0$j;->r:Lcom/shabakaty/downloader/ey0;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ey0;->a:Landroid/content/Context;

    const-wide/16 v0, 0x5

    .line 4
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vd5;->z(Landroid/content/Context;J)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
