.class public final Lcom/shabakaty/downloader/gb3$a;
.super Lcom/shabakaty/downloader/af2;
.source "PausedDownloadHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/gb3;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/cb3$a;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/gb3$a;->r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/cb3$a;

    const-string v0, "$this$pausedDownloadBottomSheet"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/gb3$a;->r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    new-instance v1, Lcom/shabakaty/downloader/eb3;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/eb3;-><init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;I)V

    const-string v0, "<this>"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p1, Lcom/shabakaty/downloader/cb3$a;->a:Lcom/shabakaty/downloader/cb3;

    new-instance v4, Lcom/shabakaty/downloader/bb3;

    invoke-direct {v4, v1}, Lcom/shabakaty/downloader/bb3;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v4, v3, Lcom/shabakaty/downloader/cb3;->a:Lcom/shabakaty/downloader/rm1;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/gb3$a;->r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    new-instance v3, Lcom/shabakaty/downloader/eb3;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/shabakaty/downloader/eb3;-><init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;I)V

    .line 8
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v1, p1, Lcom/shabakaty/downloader/cb3$a;->a:Lcom/shabakaty/downloader/cb3;

    new-instance v2, Lcom/shabakaty/downloader/ab3;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/ab3;-><init>(Ljava/lang/Object;)V

    .line 10
    iput-object v2, v1, Lcom/shabakaty/downloader/cb3;->b:Lcom/shabakaty/downloader/rm1;

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/fb3;

    iget-object v2, p0, Lcom/shabakaty/downloader/gb3$a;->r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fb3;-><init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;)V

    .line 12
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/cb3$a;->a:Lcom/shabakaty/downloader/cb3;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/fb3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
