.class public final Lcom/shabakaty/downloader/n05;
.super Lcom/shabakaty/downloader/af2;
.source "VideoEpomResponse.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/f41$e;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/o05;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/o05;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/n05;->r:Lcom/shabakaty/downloader/o05;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/f41$e;

    const-string v0, "$this$videoAd"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/n05;->r:Lcom/shabakaty/downloader/o05;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/o05;->c:Ljava/lang/String;

    .line 5
    iput-object v1, p1, Lcom/shabakaty/downloader/f41$e;->y:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/o05;->a:Ljava/lang/String;

    const-string v1, "<set-?>"

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object v0, p1, Lcom/shabakaty/downloader/f41$e;->x:Ljava/lang/String;

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
