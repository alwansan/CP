.class public final Lcom/shabakaty/downloader/t10$a;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaVideoPlayerViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/t10;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/q10;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/t10$a;->r:Lcom/shabakaty/downloader/q10;

    iput-object p2, p0, Lcom/shabakaty/downloader/t10$a;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/t10$a;->r:Lcom/shabakaty/downloader/q10;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->q:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/t10$a;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
