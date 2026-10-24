.class public final Lcom/shabakaty/downloader/d15$b;
.super Lcom/shabakaty/downloader/af2;
.source "VideoInfoFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/d15;->u(Lcom/shabakaty/downloader/views/DownloadButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/views/DownloadButton;

.field public final synthetic s:Lcom/shabakaty/downloader/d15;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/d15;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/d15$b;->r:Lcom/shabakaty/downloader/views/DownloadButton;

    iput-object p2, p0, Lcom/shabakaty/downloader/d15$b;->s:Lcom/shabakaty/downloader/d15;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    const-string v0, "$this$idleDownloadButtonClick"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/d15$b;->r:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {p1, p1, v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->n(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/views/DownloadButton;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/e15;

    iget-object v1, p0, Lcom/shabakaty/downloader/d15$b;->s:Lcom/shabakaty/downloader/d15;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/e15;-><init>(Lcom/shabakaty/downloader/d15;)V

    const-string v1, "<this>"

    .line 5
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object v0, p1, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->z:Lcom/shabakaty/downloader/rm1;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/f15;

    iget-object v3, p0, Lcom/shabakaty/downloader/d15$b;->s:Lcom/shabakaty/downloader/d15;

    invoke-direct {v0, v3}, Lcom/shabakaty/downloader/f15;-><init>(Lcom/shabakaty/downloader/d15;)V

    .line 8
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object v0, p1, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->y:Lcom/shabakaty/downloader/rm1;

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
