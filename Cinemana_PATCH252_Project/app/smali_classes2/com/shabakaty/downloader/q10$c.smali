.class public final Lcom/shabakaty/downloader/q10$c;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaVideoPlayerViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$setVideoProgress$1"
    f = "CinemanaVideoPlayerViewModel.kt"
    l = {
        0x110
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/q10;->v(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;J)Lcom/shabakaty/downloader/e92;
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
.field public v:I

.field public final synthetic w:Lcom/shabakaty/downloader/q10;

.field public final synthetic x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final synthetic y:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;JLcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q10;",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "J",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/q10$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/q10$c;->w:Lcom/shabakaty/downloader/q10;

    iput-object p2, p0, Lcom/shabakaty/downloader/q10$c;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iput-wide p3, p0, Lcom/shabakaty/downloader/q10$c;->y:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/shabakaty/downloader/se0;

    move-object v5, p2

    check-cast v5, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/q10$c;

    iget-object v1, p0, Lcom/shabakaty/downloader/q10$c;->w:Lcom/shabakaty/downloader/q10;

    iget-object v2, p0, Lcom/shabakaty/downloader/q10$c;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-wide v3, p0, Lcom/shabakaty/downloader/q10$c;->y:J

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/q10$c;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;JLcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/q10$c;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 6
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

    new-instance p1, Lcom/shabakaty/downloader/q10$c;

    iget-object v1, p0, Lcom/shabakaty/downloader/q10$c;->w:Lcom/shabakaty/downloader/q10;

    iget-object v2, p0, Lcom/shabakaty/downloader/q10$c;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-wide v3, p0, Lcom/shabakaty/downloader/q10$c;->y:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/q10$c;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;JLcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/q10$c;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/q10$c;->w:Lcom/shabakaty/downloader/q10;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->n:Lcom/shabakaty/downloader/ox4;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/q10$c;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-wide v3, p0, Lcom/shabakaty/downloader/q10$c;->y:J

    iput v2, p0, Lcom/shabakaty/downloader/q10$c;->v:I

    .line 7
    iget-object v2, p1, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/qm2;->f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/i25;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ox4;->c(Lcom/shabakaty/downloader/i25;)V

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 11
    invoke-interface {p1, v1, v3, v4, p0}, Lcom/shabakaty/downloader/s25;->q(Ljava/lang/String;JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-ne p1, v0, :cond_3

    return-object v0

    .line 12
    :cond_3
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
