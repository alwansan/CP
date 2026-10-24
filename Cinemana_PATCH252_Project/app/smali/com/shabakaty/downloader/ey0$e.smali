.class public final synthetic Lcom/shabakaty/downloader/ey0$e;
.super Lcom/shabakaty/downloader/co1;
.source "DownloadManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ey0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/co1;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/a90;",
        "Ljava/lang/Boolean;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shabakaty/downloader/ey0;

    const/4 v1, 0x2

    const-string v4, "startDownload"

    const-string v5, "startDownload(Lcom/shabakaty/downloader/main/Composer;Z)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/a90;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "p0"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ey0;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/ey0;->q(Lcom/shabakaty/downloader/a90;Z)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
