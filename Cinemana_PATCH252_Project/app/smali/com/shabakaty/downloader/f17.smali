.class public final Lcom/shabakaty/downloader/f17;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"


# static fields
.field public static final c:Lcom/shabakaty/downloader/f17;


# instance fields
.field public final a:Lcom/shabakaty/downloader/m17;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/downloader/k17<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/f17;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/f17;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/f17;->c:Lcom/shabakaty/downloader/f17;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/f17;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/shabakaty/downloader/jz6;

    .line 2
    invoke-direct {v0}, Lcom/shabakaty/downloader/jz6;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/f17;->a:Lcom/shabakaty/downloader/m17;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/shabakaty/downloader/k17;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/k17<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hw6;->a:Ljava/nio/charset/Charset;

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/f17;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k17;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/shabakaty/downloader/f17;->a:Lcom/shabakaty/downloader/m17;

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/jz6;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lcom/shabakaty/downloader/uu6;

    sget-object v2, Lcom/shabakaty/downloader/p17;->a:Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/shabakaty/downloader/p17;->a:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 9
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/shabakaty/downloader/jz6;->a:Lcom/shabakaty/downloader/n07;

    .line 11
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/n07;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/m07;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Lcom/shabakaty/downloader/m07;->b()Z

    move-result v0

    const-string v3, "Protobuf runtime is not correctly loaded."

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/p17;->d:Lcom/shabakaty/downloader/s37;

    .line 15
    sget-object v1, Lcom/shabakaty/downloader/nt6;->a:Lcom/shabakaty/downloader/it6;

    sget-object v1, Lcom/shabakaty/downloader/nt6;->a:Lcom/shabakaty/downloader/it6;

    .line 16
    invoke-interface {v2}, Lcom/shabakaty/downloader/m07;->a()Lcom/shabakaty/downloader/q07;

    move-result-object v2

    .line 17
    new-instance v3, Lcom/shabakaty/downloader/x07;

    .line 18
    invoke-direct {v3, v0, v1, v2}, Lcom/shabakaty/downloader/x07;-><init>(Lcom/shabakaty/downloader/s37;Lcom/shabakaty/downloader/it6;Lcom/shabakaty/downloader/q07;)V

    :goto_1
    move-object v0, v3

    goto/16 :goto_2

    .line 19
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/p17;->b:Lcom/shabakaty/downloader/s37;

    .line 20
    sget-object v1, Lcom/shabakaty/downloader/nt6;->b:Lcom/shabakaty/downloader/it6;

    if-eqz v1, :cond_3

    .line 21
    invoke-interface {v2}, Lcom/shabakaty/downloader/m07;->a()Lcom/shabakaty/downloader/q07;

    move-result-object v2

    .line 22
    new-instance v3, Lcom/shabakaty/downloader/x07;

    .line 23
    invoke-direct {v3, v0, v1, v2}, Lcom/shabakaty/downloader/x07;-><init>(Lcom/shabakaty/downloader/s37;Lcom/shabakaty/downloader/it6;Lcom/shabakaty/downloader/q07;)V

    goto :goto_1

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 27
    invoke-interface {v2}, Lcom/shabakaty/downloader/m07;->c()I

    move-result v0

    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 28
    sget-object v3, Lcom/shabakaty/downloader/b17;->b:Lcom/shabakaty/downloader/y07;

    .line 29
    sget-object v4, Lcom/shabakaty/downloader/zy6;->b:Lcom/shabakaty/downloader/zy6;

    .line 30
    sget-object v5, Lcom/shabakaty/downloader/p17;->d:Lcom/shabakaty/downloader/s37;

    .line 31
    sget-object v0, Lcom/shabakaty/downloader/nt6;->a:Lcom/shabakaty/downloader/it6;

    sget-object v6, Lcom/shabakaty/downloader/nt6;->a:Lcom/shabakaty/downloader/it6;

    .line 32
    sget-object v7, Lcom/shabakaty/downloader/k07;->b:Lcom/shabakaty/downloader/h07;

    .line 33
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/v07;->C(Lcom/shabakaty/downloader/m07;Lcom/shabakaty/downloader/y07;Lcom/shabakaty/downloader/zy6;Lcom/shabakaty/downloader/s37;Lcom/shabakaty/downloader/it6;Lcom/shabakaty/downloader/h07;)Lcom/shabakaty/downloader/v07;

    move-result-object v0

    goto :goto_2

    .line 34
    :cond_6
    sget-object v3, Lcom/shabakaty/downloader/b17;->b:Lcom/shabakaty/downloader/y07;

    .line 35
    sget-object v4, Lcom/shabakaty/downloader/zy6;->b:Lcom/shabakaty/downloader/zy6;

    .line 36
    sget-object v5, Lcom/shabakaty/downloader/p17;->d:Lcom/shabakaty/downloader/s37;

    const/4 v6, 0x0

    .line 37
    sget-object v7, Lcom/shabakaty/downloader/k07;->b:Lcom/shabakaty/downloader/h07;

    .line 38
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/v07;->C(Lcom/shabakaty/downloader/m07;Lcom/shabakaty/downloader/y07;Lcom/shabakaty/downloader/zy6;Lcom/shabakaty/downloader/s37;Lcom/shabakaty/downloader/it6;Lcom/shabakaty/downloader/h07;)Lcom/shabakaty/downloader/v07;

    move-result-object v0

    goto :goto_2

    .line 39
    :cond_7
    invoke-interface {v2}, Lcom/shabakaty/downloader/m07;->c()I

    move-result v0

    if-ne v0, v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_a

    .line 40
    sget-object v0, Lcom/shabakaty/downloader/b17;->a:Lcom/shabakaty/downloader/y07;

    .line 41
    sget-object v4, Lcom/shabakaty/downloader/zy6;->a:Lcom/shabakaty/downloader/zy6;

    .line 42
    sget-object v5, Lcom/shabakaty/downloader/p17;->b:Lcom/shabakaty/downloader/s37;

    .line 43
    sget-object v6, Lcom/shabakaty/downloader/nt6;->b:Lcom/shabakaty/downloader/it6;

    if-eqz v6, :cond_9

    .line 44
    sget-object v7, Lcom/shabakaty/downloader/k07;->a:Lcom/shabakaty/downloader/h07;

    move-object v3, v0

    .line 45
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/v07;->C(Lcom/shabakaty/downloader/m07;Lcom/shabakaty/downloader/y07;Lcom/shabakaty/downloader/zy6;Lcom/shabakaty/downloader/s37;Lcom/shabakaty/downloader/it6;Lcom/shabakaty/downloader/h07;)Lcom/shabakaty/downloader/v07;

    move-result-object v0

    goto :goto_2

    .line 46
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_a
    sget-object v3, Lcom/shabakaty/downloader/b17;->a:Lcom/shabakaty/downloader/y07;

    .line 49
    sget-object v4, Lcom/shabakaty/downloader/zy6;->a:Lcom/shabakaty/downloader/zy6;

    .line 50
    sget-object v5, Lcom/shabakaty/downloader/p17;->c:Lcom/shabakaty/downloader/s37;

    const/4 v6, 0x0

    .line 51
    sget-object v7, Lcom/shabakaty/downloader/k07;->a:Lcom/shabakaty/downloader/h07;

    .line 52
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/v07;->C(Lcom/shabakaty/downloader/m07;Lcom/shabakaty/downloader/y07;Lcom/shabakaty/downloader/zy6;Lcom/shabakaty/downloader/s37;Lcom/shabakaty/downloader/it6;Lcom/shabakaty/downloader/h07;)Lcom/shabakaty/downloader/v07;

    move-result-object v0

    .line 53
    :goto_2
    iget-object v1, p0, Lcom/shabakaty/downloader/f17;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 54
    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/k17;

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    return-object p1

    :cond_c
    :goto_3
    return-object v0
.end method
