.class public final Lcom/shabakaty/downloader/rq4;
.super Ljava/lang/Object;
.source "TransportImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/mq4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/mq4<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/oq4;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/shabakaty/downloader/o31;

.field public final d:Lcom/shabakaty/downloader/aq4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/aq4<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/uq4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oq4;Ljava/lang/String;Lcom/shabakaty/downloader/o31;Lcom/shabakaty/downloader/aq4;Lcom/shabakaty/downloader/uq4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oq4;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/o31;",
            "Lcom/shabakaty/downloader/aq4<",
            "TT;[B>;",
            "Lcom/shabakaty/downloader/uq4;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/rq4;->a:Lcom/shabakaty/downloader/oq4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/rq4;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/rq4;->c:Lcom/shabakaty/downloader/o31;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/rq4;->d:Lcom/shabakaty/downloader/aq4;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/rq4;->e:Lcom/shabakaty/downloader/uq4;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/i51;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/i51<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ex4;->s:Lcom/shabakaty/downloader/ex4;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/rq4;->b(Lcom/shabakaty/downloader/i51;Lcom/shabakaty/downloader/br4;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/i51;Lcom/shabakaty/downloader/br4;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/i51<",
            "TT;>;",
            "Lcom/shabakaty/downloader/br4;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rq4;->e:Lcom/shabakaty/downloader/uq4;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/rq4;->a:Lcom/shabakaty/downloader/oq4;

    const-string v2, "Null transportContext"

    .line 3
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Null event"

    .line 4
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/rq4;->b:Ljava/lang/String;

    const-string v3, "Null transportName"

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/rq4;->d:Lcom/shabakaty/downloader/aq4;

    const-string v4, "Null transformer"

    .line 8
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/rq4;->c:Lcom/shabakaty/downloader/o31;

    const-string v5, "Null encoding"

    .line 10
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    check-cast v0, Lcom/shabakaty/downloader/yq4;

    .line 12
    iget-object v5, v0, Lcom/shabakaty/downloader/yq4;->c:Lcom/shabakaty/downloader/vx3;

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/i51;->c()Lcom/shabakaty/downloader/tf3;

    move-result-object v6

    .line 14
    invoke-static {}, Lcom/shabakaty/downloader/oq4;->a()Lcom/shabakaty/downloader/oq4$a;

    move-result-object v7

    .line 15
    invoke-virtual {v1}, Lcom/shabakaty/downloader/oq4;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/oq4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/oq4$a;

    .line 16
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/oq4$a;->c(Lcom/shabakaty/downloader/tf3;)Lcom/shabakaty/downloader/oq4$a;

    .line 17
    invoke-virtual {v1}, Lcom/shabakaty/downloader/oq4;->c()[B

    move-result-object v1

    check-cast v7, Lcom/shabakaty/downloader/bi$b;

    .line 18
    iput-object v1, v7, Lcom/shabakaty/downloader/bi$b;->b:[B

    .line 19
    invoke-virtual {v7}, Lcom/shabakaty/downloader/bi$b;->a()Lcom/shabakaty/downloader/oq4;

    move-result-object v1

    .line 20
    new-instance v6, Lcom/shabakaty/downloader/eh$b;

    invoke-direct {v6}, Lcom/shabakaty/downloader/eh$b;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 21
    iput-object v7, v6, Lcom/shabakaty/downloader/eh$b;->f:Ljava/util/Map;

    .line 22
    iget-object v7, v0, Lcom/shabakaty/downloader/yq4;->a:Lcom/shabakaty/downloader/y30;

    .line 23
    invoke-interface {v7}, Lcom/shabakaty/downloader/y30;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/shabakaty/downloader/eh$b;->e(J)Lcom/shabakaty/downloader/n51$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/yq4;->b:Lcom/shabakaty/downloader/y30;

    .line 24
    invoke-interface {v0}, Lcom/shabakaty/downloader/y30;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/shabakaty/downloader/eh$b;->g(J)Lcom/shabakaty/downloader/n51$a;

    .line 25
    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/eh$b;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/n51$a;

    new-instance v0, Lcom/shabakaty/downloader/h31;

    .line 26
    invoke-virtual {p1}, Lcom/shabakaty/downloader/i51;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/aq4;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 27
    invoke-direct {v0, v4, v2}, Lcom/shabakaty/downloader/h31;-><init>(Lcom/shabakaty/downloader/o31;[B)V

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/eh$b;->d(Lcom/shabakaty/downloader/h31;)Lcom/shabakaty/downloader/n51$a;

    .line 28
    invoke-virtual {p1}, Lcom/shabakaty/downloader/i51;->a()Ljava/lang/Integer;

    move-result-object p1

    .line 29
    iput-object p1, v6, Lcom/shabakaty/downloader/eh$b;->b:Ljava/lang/Integer;

    .line 30
    invoke-virtual {v6}, Lcom/shabakaty/downloader/eh$b;->b()Lcom/shabakaty/downloader/n51;

    move-result-object p1

    .line 31
    invoke-interface {v5, v1, p1, p2}, Lcom/shabakaty/downloader/vx3;->a(Lcom/shabakaty/downloader/oq4;Lcom/shabakaty/downloader/n51;Lcom/shabakaty/downloader/br4;)V

    return-void
.end method
