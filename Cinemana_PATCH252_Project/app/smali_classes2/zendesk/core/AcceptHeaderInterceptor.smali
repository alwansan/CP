.class Lzendesk/core/AcceptHeaderInterceptor;
.super Ljava/lang/Object;
.source "AcceptHeaderInterceptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 8

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "request"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    iget-object v3, v0, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 6
    iget-object v4, v0, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 7
    iget-object v6, v0, Lcom/shabakaty/downloader/vr3;->e:Lcom/shabakaty/downloader/yr3;

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/vr3;->f:Ljava/util/Map;

    .line 9
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/vr3;->f:Ljava/util/Map;

    const-string v2, "<this>"

    .line 12
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    .line 14
    :goto_0
    iget-object v0, v0, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    .line 15
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v0

    const-string v2, "Accept"

    const-string v5, "application/json"

    const-string v7, "name"

    .line 16
    invoke-static {v2, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "value"

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v2, v5}, Lcom/shabakaty/downloader/ts1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    if-eqz v3, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v5

    .line 19
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    const-string v0, "$this$toImmutableMap"

    .line 20
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    sget-object v0, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    goto :goto_1

    .line 23
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Collections.unmodifiableMap(LinkedHashMap(this))"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move-object v7, v0

    .line 24
    new-instance v0, Lcom/shabakaty/downloader/vr3;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/vr3;-><init>(Lcom/shabakaty/downloader/qw1;Ljava/lang/String;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/yr3;Ljava/util/Map;)V

    .line 25
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
