.class public Lcom/shabakaty/downloader/hd2;
.super Lcom/shabakaty/downloader/kd2;
.source "KProperty2Impl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/hd2$a;
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
        "Lcom/shabakaty/downloader/kd2<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/kf2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/kf2<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lcom/shabakaty/downloader/cq3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cq3$b<",
            "Lcom/shabakaty/downloader/hd2$a<",
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
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/kd2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/id2;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/id2;-><init>(Lcom/shabakaty/downloader/hd2;I)V

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/hd2;->z:Lcom/shabakaty/downloader/cq3$b;

    .line 5
    sget-object p1, Lkotlin/a;->s:Lkotlin/a;

    new-instance p2, Lcom/shabakaty/downloader/id2;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/shabakaty/downloader/id2;-><init>(Lcom/shabakaty/downloader/hd2;I)V

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/hd2;->A:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public j()Lcom/shabakaty/downloader/kd2$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hd2;->z:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/hd2$a;

    return-object v0
.end method

.method public l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hd2;->z:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/hd2$a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ac2;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/hd2;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
