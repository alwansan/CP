.class public final Lcom/shabakaty/downloader/yc2;
.super Lcom/shabakaty/downloader/gd2;
.source "KProperty1Impl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/xc2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/yc2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/gd2<",
        "TT;TV;>;",
        "Lcom/shabakaty/downloader/xc2<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public final B:Lcom/shabakaty/downloader/cq3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cq3$b<",
            "Lcom/shabakaty/downloader/yc2$a<",
            "TT;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/gd2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/yc2$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/yc2$b;-><init>(Lcom/shabakaty/downloader/yc2;)V

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/yc2;->B:Lcom/shabakaty/downloader/cq3$b;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/gd2;-><init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/yc2$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/yc2$b;-><init>(Lcom/shabakaty/downloader/yc2;)V

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/yc2;->B:Lcom/shabakaty/downloader/cq3$b;

    return-void
.end method
