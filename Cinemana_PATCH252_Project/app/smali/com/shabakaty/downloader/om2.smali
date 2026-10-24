.class public final Lcom/shabakaty/downloader/om2;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/xr4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/om2$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/nc0;

.field public final s:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nc0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/om2;->r:Lcom/shabakaty/downloader/nc0;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/om2;->s:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/lr1;",
            "Lcom/shabakaty/downloader/cu4<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cu4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cu4;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/a;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 5
    const-class v3, Ljava/lang/Object;

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/util/Properties;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v5, :cond_1

    new-array v0, v6, [Ljava/lang/reflect/Type;

    aput-object v4, v0, v7

    aput-object v4, v0, v8

    goto :goto_0

    .line 6
    :cond_1
    const-class v4, Ljava/util/Map;

    invoke-static {v0, v1, v4}, Lcom/shabakaty/downloader/a;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 9
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v0, v6, [Ljava/lang/reflect/Type;

    aput-object v3, v0, v7

    aput-object v3, v0, v8

    .line 10
    :goto_0
    aget-object v1, v0, v7

    .line 11
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_4

    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {v1}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/reflect/Type;)Lcom/shabakaty/downloader/cu4;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/lr1;->f(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object v1

    goto :goto_2

    .line 13
    :cond_4
    :goto_1
    sget-object v1, Lcom/shabakaty/downloader/zr4;->c:Lcom/shabakaty/downloader/wr4;

    :goto_2
    move-object v4, v1

    .line 14
    aget-object v1, v0, v8

    invoke-static {v1}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/reflect/Type;)Lcom/shabakaty/downloader/cu4;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/lr1;->f(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object v6

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/om2;->r:Lcom/shabakaty/downloader/nc0;

    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/nc0;->a(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/k43;

    move-result-object v9

    .line 16
    new-instance v10, Lcom/shabakaty/downloader/om2$a;

    aget-object v3, v0, v7

    aget-object v5, v0, v8

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/om2$a;-><init>(Lcom/shabakaty/downloader/om2;Lcom/shabakaty/downloader/lr1;Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/wr4;Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/wr4;Lcom/shabakaty/downloader/k43;)V

    return-object v10
.end method
