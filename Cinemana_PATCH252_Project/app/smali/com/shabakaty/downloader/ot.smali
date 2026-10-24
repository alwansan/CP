.class public final Lcom/shabakaty/downloader/ot;
.super Lcom/shabakaty/downloader/nv2;
.source "CameraEventCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ot$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/nv2<",
        "Lcom/shabakaty/downloader/nt;",
        ">;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>([Lcom/shabakaty/downloader/nt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/nv2;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/nv2;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static d()Lcom/shabakaty/downloader/ot;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ot;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/shabakaty/downloader/nt;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ot;-><init>([Lcom/shabakaty/downloader/nt;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/nv2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/nv2<",
            "Lcom/shabakaty/downloader/nt;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/ot;->d()Lcom/shabakaty/downloader/ot;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nv2;->b()Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/nv2;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/ot$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ot$a;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/nv2;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ot$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ot;->a()Lcom/shabakaty/downloader/nv2;

    move-result-object v0

    return-object v0
.end method
