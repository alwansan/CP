.class public final Lcom/shabakaty/downloader/wy;
.super Lcom/shabakaty/downloader/uy;
.source "Merge.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/uy<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final v:Lcom/shabakaty/downloader/jn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/jn1<",
            "Lcom/shabakaty/downloader/ue1<",
            "-TR;>;TT;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jn1;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/jn1<",
            "-",
            "Lcom/shabakaty/downloader/ue1<",
            "-TR;>;-TT;-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/me0;",
            "I",
            "Lcom/shabakaty/downloader/co;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/shabakaty/downloader/uy;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/wy;->v:Lcom/shabakaty/downloader/jn1;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/jn1;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;I)V
    .locals 1

    and-int/lit8 p3, p6, 0x4

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    .line 1
    sget-object p3, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    goto :goto_0

    :cond_0
    move-object p3, p5

    :goto_0
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_1

    const/4 p4, -0x2

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    .line 2
    sget-object p5, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    .line 3
    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/shabakaty/downloader/uy;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/wy;->v:Lcom/shabakaty/downloader/jn1;

    return-void
.end method


# virtual methods
.method public g(Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/ry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "I",
            "Lcom/shabakaty/downloader/co;",
            ")",
            "Lcom/shabakaty/downloader/ry<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/wy;

    iget-object v1, p0, Lcom/shabakaty/downloader/wy;->v:Lcom/shabakaty/downloader/jn1;

    iget-object v2, p0, Lcom/shabakaty/downloader/uy;->u:Lcom/shabakaty/downloader/te1;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/wy;-><init>(Lcom/shabakaty/downloader/jn1;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V

    return-object v6
.end method

.method public i(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ue1<",
            "-TR;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wy$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/wy$a;-><init>(Lcom/shabakaty/downloader/wy;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ve1;

    invoke-interface {p2}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Lcom/shabakaty/downloader/ve1;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/ud0;)V

    .line 3
    invoke-static {p1, p1, v0}, Lcom/shabakaty/downloader/md0;->Q(Lcom/shabakaty/downloader/my3;Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
