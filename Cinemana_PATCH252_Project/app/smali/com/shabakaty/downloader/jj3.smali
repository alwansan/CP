.class public final Lcom/shabakaty/downloader/jj3;
.super Ljava/lang/Object;
.source "Protobuf.java"


# static fields
.field public static final c:Lcom/shabakaty/downloader/jj3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/fy3;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/downloader/ey3<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jj3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jj3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/jj3;->c:Lcom/shabakaty/downloader/jj3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/jj3;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/cm2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cm2;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/jj3;->a:Lcom/shabakaty/downloader/fy3;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/shabakaty/downloader/ey3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/ey3<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/x22;->a:Ljava/nio/charset/Charset;

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/jj3;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ey3;

    if-nez v0, :cond_b

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/jj3;->a:Lcom/shabakaty/downloader/fy3;

    check-cast v0, Lcom/shabakaty/downloader/cm2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lcom/shabakaty/downloader/qp1;

    sget-object v2, Lcom/shabakaty/downloader/ly3;->a:Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/shabakaty/downloader/ly3;->a:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/shabakaty/downloader/cm2;->a:Lcom/shabakaty/downloader/cs2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/cs2;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/bs2;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Lcom/shabakaty/downloader/bs2;->a()Z

    move-result v0

    const-string v3, "Protobuf runtime is not correctly loaded."

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/ly3;->d:Lcom/shabakaty/downloader/rv4;

    .line 13
    sget-object v1, Lcom/shabakaty/downloader/x81;->a:Lcom/shabakaty/downloader/v81;

    sget-object v1, Lcom/shabakaty/downloader/x81;->a:Lcom/shabakaty/downloader/v81;

    .line 14
    invoke-interface {v2}, Lcom/shabakaty/downloader/bs2;->b()Lcom/shabakaty/downloader/ds2;

    move-result-object v2

    .line 15
    new-instance v3, Lcom/shabakaty/downloader/js2;

    invoke-direct {v3, v0, v1, v2}, Lcom/shabakaty/downloader/js2;-><init>(Lcom/shabakaty/downloader/rv4;Lcom/shabakaty/downloader/v81;Lcom/shabakaty/downloader/ds2;)V

    goto :goto_1

    .line 16
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/ly3;->b:Lcom/shabakaty/downloader/rv4;

    .line 17
    sget-object v1, Lcom/shabakaty/downloader/x81;->b:Lcom/shabakaty/downloader/v81;

    if-eqz v1, :cond_3

    .line 18
    invoke-interface {v2}, Lcom/shabakaty/downloader/bs2;->b()Lcom/shabakaty/downloader/ds2;

    move-result-object v2

    .line 19
    new-instance v3, Lcom/shabakaty/downloader/js2;

    invoke-direct {v3, v0, v1, v2}, Lcom/shabakaty/downloader/js2;-><init>(Lcom/shabakaty/downloader/rv4;Lcom/shabakaty/downloader/v81;Lcom/shabakaty/downloader/ds2;)V

    :goto_1
    move-object v0, v3

    goto :goto_2

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 22
    invoke-interface {v2}, Lcom/shabakaty/downloader/bs2;->c()I

    move-result v0

    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 23
    sget-object v3, Lcom/shabakaty/downloader/dz2;->b:Lcom/shabakaty/downloader/bz2;

    .line 24
    sget-object v4, Lcom/shabakaty/downloader/hi2;->b:Lcom/shabakaty/downloader/hi2;

    .line 25
    sget-object v5, Lcom/shabakaty/downloader/ly3;->d:Lcom/shabakaty/downloader/rv4;

    .line 26
    sget-object v0, Lcom/shabakaty/downloader/x81;->a:Lcom/shabakaty/downloader/v81;

    sget-object v6, Lcom/shabakaty/downloader/x81;->a:Lcom/shabakaty/downloader/v81;

    .line 27
    sget-object v7, Lcom/shabakaty/downloader/mm2;->b:Lcom/shabakaty/downloader/km2;

    .line 28
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/is2;->s(Lcom/shabakaty/downloader/bs2;Lcom/shabakaty/downloader/bz2;Lcom/shabakaty/downloader/hi2;Lcom/shabakaty/downloader/rv4;Lcom/shabakaty/downloader/v81;Lcom/shabakaty/downloader/km2;)Lcom/shabakaty/downloader/is2;

    move-result-object v0

    goto :goto_2

    .line 29
    :cond_6
    sget-object v3, Lcom/shabakaty/downloader/dz2;->b:Lcom/shabakaty/downloader/bz2;

    .line 30
    sget-object v4, Lcom/shabakaty/downloader/hi2;->b:Lcom/shabakaty/downloader/hi2;

    .line 31
    sget-object v5, Lcom/shabakaty/downloader/ly3;->d:Lcom/shabakaty/downloader/rv4;

    const/4 v6, 0x0

    .line 32
    sget-object v7, Lcom/shabakaty/downloader/mm2;->b:Lcom/shabakaty/downloader/km2;

    .line 33
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/is2;->s(Lcom/shabakaty/downloader/bs2;Lcom/shabakaty/downloader/bz2;Lcom/shabakaty/downloader/hi2;Lcom/shabakaty/downloader/rv4;Lcom/shabakaty/downloader/v81;Lcom/shabakaty/downloader/km2;)Lcom/shabakaty/downloader/is2;

    move-result-object v0

    goto :goto_2

    .line 34
    :cond_7
    invoke-interface {v2}, Lcom/shabakaty/downloader/bs2;->c()I

    move-result v0

    if-ne v0, v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_a

    .line 35
    sget-object v0, Lcom/shabakaty/downloader/dz2;->a:Lcom/shabakaty/downloader/bz2;

    .line 36
    sget-object v4, Lcom/shabakaty/downloader/hi2;->a:Lcom/shabakaty/downloader/hi2;

    .line 37
    sget-object v5, Lcom/shabakaty/downloader/ly3;->b:Lcom/shabakaty/downloader/rv4;

    .line 38
    sget-object v6, Lcom/shabakaty/downloader/x81;->b:Lcom/shabakaty/downloader/v81;

    if-eqz v6, :cond_9

    .line 39
    sget-object v7, Lcom/shabakaty/downloader/mm2;->a:Lcom/shabakaty/downloader/km2;

    move-object v3, v0

    .line 40
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/is2;->s(Lcom/shabakaty/downloader/bs2;Lcom/shabakaty/downloader/bz2;Lcom/shabakaty/downloader/hi2;Lcom/shabakaty/downloader/rv4;Lcom/shabakaty/downloader/v81;Lcom/shabakaty/downloader/km2;)Lcom/shabakaty/downloader/is2;

    move-result-object v0

    goto :goto_2

    .line 41
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_a
    sget-object v3, Lcom/shabakaty/downloader/dz2;->a:Lcom/shabakaty/downloader/bz2;

    .line 43
    sget-object v4, Lcom/shabakaty/downloader/hi2;->a:Lcom/shabakaty/downloader/hi2;

    .line 44
    sget-object v5, Lcom/shabakaty/downloader/ly3;->c:Lcom/shabakaty/downloader/rv4;

    const/4 v6, 0x0

    .line 45
    sget-object v7, Lcom/shabakaty/downloader/mm2;->a:Lcom/shabakaty/downloader/km2;

    .line 46
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/is2;->s(Lcom/shabakaty/downloader/bs2;Lcom/shabakaty/downloader/bz2;Lcom/shabakaty/downloader/hi2;Lcom/shabakaty/downloader/rv4;Lcom/shabakaty/downloader/v81;Lcom/shabakaty/downloader/km2;)Lcom/shabakaty/downloader/is2;

    move-result-object v0

    .line 47
    :goto_2
    iget-object v1, p0, Lcom/shabakaty/downloader/jj3;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ey3;

    if-eqz p1, :cond_b

    move-object v0, p1

    :cond_b
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ey3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/shabakaty/downloader/ey3<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/jj3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/ey3;

    move-result-object p1

    return-object p1
.end method
