.class public final synthetic Lcom/shabakaty/downloader/xx1;
.super Ljava/lang/Object;
.source "IdleDownloadHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/gj;
.implements Lcom/shabakaty/downloader/sn1;


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xx1;->a:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/shabakaty/downloader/kn1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/kn1<",
            "*>;"
        }
    .end annotation

    new-instance v7, Lcom/shabakaty/downloader/co1;

    iget-object v2, p0, Lcom/shabakaty/downloader/xx1;->a:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    const-class v3, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    const/4 v1, 0x0

    const-string v4, "handleQualitiesCanceled"

    const-string v5, "handleQualitiesCanceled()V"

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xx1;->a:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->u:Lcom/shabakaty/downloader/views/DownloadButton;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/views/DownloadButton;->e()V

    .line 4
    :goto_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->z:Lcom/shabakaty/downloader/rm1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/shabakaty/downloader/gj;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/shabakaty/downloader/sn1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xx1;->a()Lcom/shabakaty/downloader/kn1;

    move-result-object v0

    check-cast p1, Lcom/shabakaty/downloader/sn1;

    invoke-interface {p1}, Lcom/shabakaty/downloader/sn1;->a()Lcom/shabakaty/downloader/kn1;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xx1;->a()Lcom/shabakaty/downloader/kn1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
