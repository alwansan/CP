.class public final Lcom/shabakaty/downloader/a9;
.super Lcom/shabakaty/downloader/af2;
.source "annotationUtil.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/nu2;",
        "Lcom/shabakaty/downloader/qe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zd2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zd2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/a9;->r:Lcom/shabakaty/downloader/zd2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/nu2;

    const-string v0, "module"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    iget-object v1, p0, Lcom/shabakaty/downloader/a9;->r:Lcom/shabakaty/downloader/zd2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zd2;->w()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/zd2;->h(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1
.end method
