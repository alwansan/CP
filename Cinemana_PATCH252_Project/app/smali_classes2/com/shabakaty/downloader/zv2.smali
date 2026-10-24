.class public abstract Lcom/shabakaty/downloader/zv2;
.super Lcom/shabakaty/downloader/bw2;
.source "MutablePropertyReference1.java"

# interfaces
.implements Lcom/shabakaty/downloader/xc2;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/shabakaty/downloader/bw2;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public computeReflected()Lcom/shabakaty/downloader/zb2;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/dq3;->b(Lcom/shabakaty/downloader/zv2;)Lcom/shabakaty/downloader/xc2;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/aw2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/aw2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p()Lcom/shabakaty/downloader/fd2$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uq;->getReflected()Lcom/shabakaty/downloader/zb2;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/jd2;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/xc2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/fd2;->p()Lcom/shabakaty/downloader/fd2$a;

    move-result-object v0

    return-object v0
.end method
