.class public final Lcom/shabakaty/downloader/y60;
.super Lcom/shabakaty/downloader/af2;
.source "CommentsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
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
.field public final synthetic r:Lcom/shabakaty/downloader/g70;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/Comment;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g70;Lcom/shabakaty/cinemana/domain/models/local/Comment;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/y60;->r:Lcom/shabakaty/downloader/g70;

    iput-object p2, p0, Lcom/shabakaty/downloader/y60;->s:Lcom/shabakaty/cinemana/domain/models/local/Comment;

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
    iget-object p1, p0, Lcom/shabakaty/downloader/y60;->r:Lcom/shabakaty/downloader/g70;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/v60;

    iget-object v0, p0, Lcom/shabakaty/downloader/y60;->s:Lcom/shabakaty/cinemana/domain/models/local/Comment;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/v60;->A0(Lcom/shabakaty/cinemana/domain/models/local/Comment;)V

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
