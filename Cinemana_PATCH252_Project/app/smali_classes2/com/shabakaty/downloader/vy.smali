.class public final Lcom/shabakaty/downloader/vy;
.super Lcom/shabakaty/downloader/uy;
.source "ChannelFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/uy<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/me0;",
            "I",
            "Lcom/shabakaty/downloader/co;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/uy;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;I)V
    .locals 1

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    .line 1
    sget-object p2, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    const/4 p3, -0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/uy;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V

    return-void
.end method


# virtual methods
.method public g(Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/ry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "I",
            "Lcom/shabakaty/downloader/co;",
            ")",
            "Lcom/shabakaty/downloader/ry<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vy;

    iget-object v1, p0, Lcom/shabakaty/downloader/uy;->u:Lcom/shabakaty/downloader/te1;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/shabakaty/downloader/vy;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V

    return-object v0
.end method

.method public h()Lcom/shabakaty/downloader/te1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/te1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uy;->u:Lcom/shabakaty/downloader/te1;

    return-object v0
.end method

.method public i(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uy;->u:Lcom/shabakaty/downloader/te1;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
