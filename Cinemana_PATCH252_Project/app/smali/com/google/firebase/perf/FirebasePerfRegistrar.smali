.class public Lcom/google/firebase/perf/FirebasePerfRegistrar;
.super Ljava/lang/Object;
.source "FirebasePerfRegistrar.java"

# interfaces
.implements Lcom/shabakaty/downloader/w80;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/zc1;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/perf/FirebasePerfRegistrar;->providesFirebasePerformance(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/zc1;

    move-result-object p0

    return-object p0
.end method

.method private static providesFirebasePerformance(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/zc1;
    .locals 10

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bd1;

    const-class v1, Lcom/shabakaty/downloader/ec1;

    .line 2
    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ec1;

    const-class v2, Lcom/shabakaty/downloader/mc1;

    .line 3
    invoke-interface {p0, v2}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/mc1;

    const-class v3, Lcom/shabakaty/downloader/xq3;

    .line 4
    invoke-interface {p0, v3}, Lcom/shabakaty/downloader/q80;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/pj3;

    move-result-object v3

    const-class v4, Lcom/shabakaty/downloader/pq4;

    .line 5
    invoke-interface {p0, v4}, Lcom/shabakaty/downloader/q80;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/pj3;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/shabakaty/downloader/bd1;-><init>(Lcom/shabakaty/downloader/ec1;Lcom/shabakaty/downloader/mc1;Lcom/shabakaty/downloader/pj3;Lcom/shabakaty/downloader/pj3;)V

    .line 6
    const-class p0, Lcom/shabakaty/downloader/bd1;

    invoke-static {v0, p0}, Lcom/shabakaty/downloader/iq6;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/cd1;

    const/4 p0, 0x1

    invoke-direct {v2, v0, p0}, Lcom/shabakaty/downloader/cd1;-><init>(Lcom/shabakaty/downloader/bd1;I)V

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/cd1;

    const/4 p0, 0x4

    invoke-direct {v3, v0, p0}, Lcom/shabakaty/downloader/cd1;-><init>(Lcom/shabakaty/downloader/bd1;I)V

    .line 9
    new-instance v4, Lcom/shabakaty/downloader/cd1;

    const/4 p0, 0x2

    invoke-direct {v4, v0, p0}, Lcom/shabakaty/downloader/cd1;-><init>(Lcom/shabakaty/downloader/bd1;I)V

    .line 10
    new-instance v5, Lcom/shabakaty/downloader/cd1;

    const/4 p0, 0x6

    invoke-direct {v5, v0, p0}, Lcom/shabakaty/downloader/cd1;-><init>(Lcom/shabakaty/downloader/bd1;I)V

    .line 11
    new-instance v6, Lcom/shabakaty/downloader/cd1;

    const/4 p0, 0x5

    invoke-direct {v6, v0, p0}, Lcom/shabakaty/downloader/cd1;-><init>(Lcom/shabakaty/downloader/bd1;I)V

    .line 12
    new-instance v7, Lcom/shabakaty/downloader/cd1;

    const/4 p0, 0x0

    invoke-direct {v7, v0, p0}, Lcom/shabakaty/downloader/cd1;-><init>(Lcom/shabakaty/downloader/bd1;I)V

    .line 13
    new-instance v8, Lcom/shabakaty/downloader/cd1;

    const/4 p0, 0x3

    invoke-direct {v8, v0, p0}, Lcom/shabakaty/downloader/cd1;-><init>(Lcom/shabakaty/downloader/bd1;I)V

    .line 14
    new-instance p0, Lcom/shabakaty/downloader/dd1;

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/shabakaty/downloader/dd1;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;I)V

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/zu0;->c:Ljava/lang/Object;

    .line 16
    instance-of v0, p0, Lcom/shabakaty/downloader/zu0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/zu0;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object p0, v0

    .line 18
    :goto_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/zc1;

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o80<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shabakaty/downloader/o80;

    .line 1
    const-class v1, Lcom/shabakaty/downloader/zc1;

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v1

    const-class v2, Lcom/shabakaty/downloader/ec1;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v2, Lcom/shabakaty/downloader/xq3;

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v2, v4, v4}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v2, Lcom/shabakaty/downloader/mc1;

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v2, v4, v5}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v2, Lcom/shabakaty/downloader/pq4;

    .line 9
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v2, v4, v4}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v2, Lcom/shabakaty/downloader/xc1;->a:Lcom/shabakaty/downloader/xc1;

    .line 11
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-perf"

    const-string v2, "20.0.2"

    .line 13
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/gh2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/o80;

    move-result-object v1

    aput-object v1, v0, v4

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
