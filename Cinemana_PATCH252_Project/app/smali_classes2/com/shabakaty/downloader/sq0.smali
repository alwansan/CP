.class public final Lcom/shabakaty/downloader/sq0;
.super Ljava/lang/Object;
.source "DescriptorEquivalenceForOverrides.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/sq0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/sq0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sq0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sq0;->a:Lcom/shabakaty/downloader/sq0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/qm0;ZZ)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/q20;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/shabakaty/downloader/q20;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/q20;

    check-cast p2, Lcom/shabakaty/downloader/q20;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p2}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_1

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/kt4;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/shabakaty/downloader/kt4;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/kt4;

    .line 5
    check-cast p2, Lcom/shabakaty/downloader/kt4;

    .line 6
    sget-object p4, Lcom/shabakaty/downloader/rq0;->r:Lcom/shabakaty/downloader/rq0;

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/sq0;->b(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/kt4;ZLcom/shabakaty/downloader/hn1;)Z

    move-result v1

    goto/16 :goto_1

    .line 8
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/rq;

    if-eqz v0, :cond_a

    instance-of v0, p2, Lcom/shabakaty/downloader/rq;

    if-eqz v0, :cond_a

    .line 9
    check-cast p1, Lcom/shabakaty/downloader/rq;

    .line 10
    check-cast p2, Lcom/shabakaty/downloader/rq;

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/ve2$a;->a:Lcom/shabakaty/downloader/ve2$a;

    const-string v2, "a"

    .line 12
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "b"

    invoke-static {p2, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 14
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-interface {p2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    if-eqz p4, :cond_4

    .line 15
    instance-of p4, p1, Lcom/shabakaty/downloader/ir2;

    if-eqz p4, :cond_4

    instance-of p4, p2, Lcom/shabakaty/downloader/ir2;

    if-eqz p4, :cond_4

    move-object p4, p1

    check-cast p4, Lcom/shabakaty/downloader/ir2;

    invoke-interface {p4}, Lcom/shabakaty/downloader/ir2;->S()Z

    move-result p4

    move-object v2, p2

    check-cast v2, Lcom/shabakaty/downloader/ir2;

    invoke-interface {v2}, Lcom/shabakaty/downloader/ir2;->S()Z

    move-result v2

    if-eq p4, v2, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    invoke-interface {p1}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p4

    invoke-interface {p2}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    if-nez p3, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sq0;->d(Lcom/shabakaty/downloader/rq;)Lcom/shabakaty/downloader/s94;

    move-result-object p4

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/sq0;->d(Lcom/shabakaty/downloader/rq;)Lcom/shabakaty/downloader/s94;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    goto :goto_0

    .line 18
    :cond_6
    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->t(Lcom/shabakaty/downloader/qm0;)Z

    move-result p4

    if-nez p4, :cond_9

    invoke-static {p2}, Lcom/shabakaty/downloader/gr0;->t(Lcom/shabakaty/downloader/qm0;)Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_0

    .line 19
    :cond_7
    sget-object p4, Lcom/shabakaty/downloader/pq0;->r:Lcom/shabakaty/downloader/pq0;

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/shabakaty/downloader/sq0;->c(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/hn1;Z)Z

    move-result p4

    if-nez p4, :cond_8

    goto :goto_0

    .line 20
    :cond_8
    new-instance p4, Lcom/shabakaty/downloader/qq0;

    invoke-direct {p4, p3, p1, p2}, Lcom/shabakaty/downloader/qq0;-><init>(ZLcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)V

    .line 21
    new-instance p3, Lcom/shabakaty/downloader/a93;

    invoke-direct {p3, p4, v0}, Lcom/shabakaty/downloader/a93;-><init>(Lcom/shabakaty/downloader/re2$a;Lcom/shabakaty/downloader/ve2;)V

    const/4 p4, 0x0

    .line 22
    invoke-virtual {p3, p1, p2, p4, v1}, Lcom/shabakaty/downloader/a93;->m(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/q20;Z)Lcom/shabakaty/downloader/a93$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/a93$c;->c()Lcom/shabakaty/downloader/a93$c$a;

    move-result-object v0

    sget-object v2, Lcom/shabakaty/downloader/a93$c$a;->r:Lcom/shabakaty/downloader/a93$c$a;

    if-ne v0, v2, :cond_9

    .line 23
    invoke-virtual {p3, p2, p1, p4, v1}, Lcom/shabakaty/downloader/a93;->m(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/q20;Z)Lcom/shabakaty/downloader/a93$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/a93$c;->c()Lcom/shabakaty/downloader/a93$c$a;

    move-result-object p1

    if-ne p1, v2, :cond_9

    goto :goto_1

    :cond_9
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 24
    :cond_a
    instance-of p3, p1, Lcom/shabakaty/downloader/k93;

    if-eqz p3, :cond_b

    instance-of p3, p2, Lcom/shabakaty/downloader/k93;

    if-eqz p3, :cond_b

    check-cast p1, Lcom/shabakaty/downloader/k93;

    invoke-interface {p1}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    check-cast p2, Lcom/shabakaty/downloader/k93;

    invoke-interface {p2}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 25
    :cond_b
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public final b(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/kt4;ZLcom/shabakaty/downloader/hn1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/kt4;",
            "Lcom/shabakaty/downloader/kt4;",
            "Z",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/qm0;",
            "-",
            "Lcom/shabakaty/downloader/qm0;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "equivalentCallables"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    invoke-interface {p2}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/shabakaty/downloader/sq0;->c(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/hn1;Z)Z

    move-result p3

    if-nez p3, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/kt4;->j()I

    move-result p1

    invoke-interface {p2}, Lcom/shabakaty/downloader/kt4;->j()I

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final c(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/hn1;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qm0;",
            "Lcom/shabakaty/downloader/qm0;",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/qm0;",
            "-",
            "Lcom/shabakaty/downloader/qm0;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    .line 2
    invoke-interface {p2}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p2

    .line 3
    instance-of v0, p1, Lcom/shabakaty/downloader/tq;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/shabakaty/downloader/tq;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/shabakaty/downloader/sq0;->a(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/qm0;ZZ)Z

    move-result p1

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p3, p1, p2}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    return p1
.end method

.method public final d(Lcom/shabakaty/downloader/rq;)Lcom/shabakaty/downloader/s94;
    .locals 3

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/tq;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/tq;

    invoke-interface {v0}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/tq$a;->s:Lcom/shabakaty/downloader/tq$a;

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "overriddenDescriptors"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->r0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tq;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object p1

    return-object p1
.end method
