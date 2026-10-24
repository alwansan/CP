.class public Lcom/shabakaty/downloader/zr4$d;
.super Lcom/shabakaty/downloader/wr4;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zr4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/wr4<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wr4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ka2;->z:Lcom/shabakaty/downloader/ka2;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->B()V

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->r()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pa2;->x(Ljava/lang/Number;)Lcom/shabakaty/downloader/pa2;

    return-void
.end method
