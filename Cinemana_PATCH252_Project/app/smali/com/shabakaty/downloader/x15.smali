.class public final Lcom/shabakaty/downloader/x15;
.super Lcom/shabakaty/downloader/af2;
.source "VideoInfoViewModel.kt"

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
.field public final synthetic r:Lcom/shabakaty/downloader/u15;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u15;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/x15;->r:Lcom/shabakaty/downloader/u15;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/x15;->r:Lcom/shabakaty/downloader/u15;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
