.class public Lcom/shabakaty/downloader/ed2;
.super Lcom/shabakaty/downloader/kd2;
.source "KProperty0Impl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ed2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/kd2<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/kf2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/kf2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lcom/shabakaty/downloader/cq3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cq3$b<",
            "Lcom/shabakaty/downloader/ed2$a<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/kd2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ed2$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ed2$b;-><init>(Lcom/shabakaty/downloader/ed2;)V

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/ed2;->z:Lcom/shabakaty/downloader/cq3$b;

    .line 5
    sget-object p1, Lkotlin/a;->s:Lkotlin/a;

    new-instance p2, Lcom/shabakaty/downloader/ed2$c;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/ed2$c;-><init>(Lcom/shabakaty/downloader/ed2;)V

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ed2;->A:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ed2;->l()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/shabakaty/downloader/kd2$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ed2;->z:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/ed2$a;

    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ed2;->z:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/ed2$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ac2;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
