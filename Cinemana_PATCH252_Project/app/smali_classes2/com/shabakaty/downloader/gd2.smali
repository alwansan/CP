.class public Lcom/shabakaty/downloader/gd2;
.super Lcom/shabakaty/downloader/kd2;
.source "KProperty1Impl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/fd2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/gd2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/kd2<",
        "TV;>;",
        "Lcom/shabakaty/downloader/fd2<",
        "TT;TV;>;"
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
            "Lcom/shabakaty/downloader/gd2$a<",
            "TT;TV;>;>;"
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
    new-instance p1, Lcom/shabakaty/downloader/gd2$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/gd2$b;-><init>(Lcom/shabakaty/downloader/gd2;)V

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/gd2;->z:Lcom/shabakaty/downloader/cq3$b;

    .line 5
    sget-object p1, Lkotlin/a;->s:Lkotlin/a;

    new-instance p2, Lcom/shabakaty/downloader/gd2$c;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/gd2$c;-><init>(Lcom/shabakaty/downloader/gd2;)V

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/gd2;->A:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/kd2;-><init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/yh3;Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/gd2$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/gd2$b;-><init>(Lcom/shabakaty/downloader/gd2;)V

    .line 8
    new-instance p2, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/gd2;->z:Lcom/shabakaty/downloader/cq3$b;

    .line 10
    sget-object p1, Lkotlin/a;->s:Lkotlin/a;

    new-instance p2, Lcom/shabakaty/downloader/gd2$c;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/gd2$c;-><init>(Lcom/shabakaty/downloader/gd2;)V

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/gd2;->A:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gd2;->l()Lcom/shabakaty/downloader/gd2$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ac2;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/gd2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j()Lcom/shabakaty/downloader/kd2$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gd2;->l()Lcom/shabakaty/downloader/gd2$a;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/shabakaty/downloader/gd2$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/gd2$a<",
            "TT;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gd2;->z:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/gd2$a;

    return-object v0
.end method

.method public bridge synthetic p()Lcom/shabakaty/downloader/fd2$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gd2;->l()Lcom/shabakaty/downloader/gd2$a;

    move-result-object v0

    return-object v0
.end method
