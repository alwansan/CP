.class public final Lcom/shabakaty/downloader/zc2;
.super Lcom/shabakaty/downloader/hd2;
.source "KProperty2Impl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zc2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/hd2<",
        "TD;TE;TV;>;"
    }
.end annotation


# instance fields
.field public final B:Lcom/shabakaty/downloader/cq3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cq3$b<",
            "Lcom/shabakaty/downloader/zc2$a<",
            "TD;TE;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/hd2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/id2;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/id2;-><init>(Lcom/shabakaty/downloader/zc2;)V

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/zc2;->B:Lcom/shabakaty/downloader/cq3$b;

    return-void
.end method
