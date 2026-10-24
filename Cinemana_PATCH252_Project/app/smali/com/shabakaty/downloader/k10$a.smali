.class public final Lcom/shabakaty/downloader/k10$a;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaPlayerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.player.CinemanaPlayerView$seekToLastPosition$1$1$1"
    f = "CinemanaPlayerView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/k10;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

.field public final synthetic w:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;JLcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/player/CinemanaPlayerView;",
            "J",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/k10$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/k10$a;->v:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    iput-wide p2, p0, Lcom/shabakaty/downloader/k10$a;->w:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/k10$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/k10$a;->v:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    iget-wide v1, p0, Lcom/shabakaty/downloader/k10$a;->w:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/k10$a;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;JLcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getPlayer()Lcom/shabakaty/downloader/s64;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Lcom/shabakaty/downloader/ak;->q(J)V

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/k10$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/k10$a;->v:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    iget-wide v1, p0, Lcom/shabakaty/downloader/k10$a;->w:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/k10$a;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;JLcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/k10$a;->v:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getPlayer()Lcom/shabakaty/downloader/s64;

    move-result-object p1

    iget-wide v0, p0, Lcom/shabakaty/downloader/k10$a;->w:J

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/ak;->q(J)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
