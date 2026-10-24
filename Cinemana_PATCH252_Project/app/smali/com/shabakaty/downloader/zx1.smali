.class public final Lcom/shabakaty/downloader/zx1;
.super Lcom/shabakaty/downloader/af2;
.source "IdleDownloadHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/lk3$a;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/zx1;->r:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/lk3$a;

    const-string v0, "$this$qualitiesBottomSheet"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/zx1;->r:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->qualities:Ljava/util/List;

    const-string v1, "value"

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p1, Lcom/shabakaty/downloader/lk3$a;->a:Lcom/shabakaty/downloader/lk3;

    .line 8
    iput-object v0, v1, Lcom/shabakaty/downloader/lk3;->a:Ljava/util/List;

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/zx1;->r:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    new-instance v1, Lcom/shabakaty/downloader/wx1;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/wx1;-><init>(Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;)V

    const-string v0, "<this>"

    .line 10
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, p1, Lcom/shabakaty/downloader/lk3$a;->a:Lcom/shabakaty/downloader/lk3;

    new-instance v4, Lcom/shabakaty/downloader/kk3;

    invoke-direct {v4, v1}, Lcom/shabakaty/downloader/kk3;-><init>(Ljava/lang/Object;)V

    .line 12
    iput-object v4, v3, Lcom/shabakaty/downloader/lk3;->b:Lcom/shabakaty/downloader/tm1;

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/zx1;->r:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    new-instance v3, Lcom/shabakaty/downloader/xx1;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/xx1;-><init>(Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;)V

    .line 14
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v1, p1, Lcom/shabakaty/downloader/lk3$a;->a:Lcom/shabakaty/downloader/lk3;

    new-instance v2, Lcom/shabakaty/downloader/jk3;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/jk3;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Lcom/shabakaty/downloader/yx1;

    iget-object v2, p0, Lcom/shabakaty/downloader/zx1;->r:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/yx1;-><init>(Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;)V

    .line 18
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/lk3$a;->a:Lcom/shabakaty/downloader/lk3;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/yx1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
