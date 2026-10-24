.class public Lcom/shabakaty/downloader/vr3$a;
.super Ljava/lang/Object;
.source "Request.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vr3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/qw1;

.field public b:Ljava/lang/String;

.field public c:Lcom/shabakaty/downloader/ts1$a;

.field public d:Lcom/shabakaty/downloader/yr3;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ts1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ts1$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->c:Lcom/shabakaty/downloader/ts1$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vr3;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->e:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->a:Lcom/shabakaty/downloader/qw1;

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->b:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/shabakaty/downloader/vr3;->e:Lcom/shabakaty/downloader/yr3;

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->d:Lcom/shabakaty/downloader/yr3;

    .line 13
    iget-object v0, p1, Lcom/shabakaty/downloader/vr3;->f:Ljava/util/Map;

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/vr3;->f:Ljava/util/Map;

    const-string v1, "<this>"

    .line 17
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 19
    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->e:Ljava/util/Map;

    .line 20
    iget-object p1, p1, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/vr3$a;->c:Lcom/shabakaty/downloader/ts1$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->c:Lcom/shabakaty/downloader/ts1$a;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/ts1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    return-object p0
.end method

.method public b()Lcom/shabakaty/downloader/vr3;
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/vr3$a;->a:Lcom/shabakaty/downloader/qw1;

    if-eqz v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/vr3$a;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->c:Lcom/shabakaty/downloader/ts1$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/vr3$a;->d:Lcom/shabakaty/downloader/yr3;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->e:Ljava/util/Map;

    sget-object v5, Lcom/shabakaty/downloader/ry4;->a:[B

    const-string v5, "$this$toImmutableMap"

    .line 6
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v5, "Collections.unmodifiableMap(LinkedHashMap(this))"

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v5, v0

    .line 10
    new-instance v6, Lcom/shabakaty/downloader/vr3;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/vr3;-><init>(Lcom/shabakaty/downloader/qw1;Ljava/lang/String;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/yr3;Ljava/util/Map;)V

    return-object v6

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/shabakaty/downloader/qp;)Lcom/shabakaty/downloader/vr3$a;
    .locals 2

    const-string v0, "cacheControl"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qp;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cache-Control"

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/vr3$a;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    :goto_1
    return-object p0
.end method

.method public d()Lcom/shabakaty/downloader/vr3$a;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/vr3$a;->g(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/vr3$a;

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->c:Lcom/shabakaty/downloader/ts1$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ts1;->s:Lcom/shabakaty/downloader/ts1$b;

    .line 3
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/ts1$b;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p2, p1}, Lcom/shabakaty/downloader/ts1$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/ts1$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    return-object p0
.end method

.method public f(Lcom/shabakaty/downloader/ts1;)Lcom/shabakaty/downloader/vr3$a;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/vr3$a;->c:Lcom/shabakaty/downloader/ts1$a;

    return-object p0
.end method

.method public g(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/vr3$a;
    .locals 3

    const-string v0, "method"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    const-string v1, "method "

    if-nez p2, :cond_4

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PUT"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PATCH"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PROPPATCH"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "REPORT"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    xor-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, " must have a request body."

    .line 4
    invoke-static {v1, p1, p2}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_4
    invoke-static {p1}, Lcom/shabakaty/downloader/nw1;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    :goto_1
    iput-object p1, p0, Lcom/shabakaty/downloader/vr3$a;->b:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/vr3$a;->d:Lcom/shabakaty/downloader/yr3;

    return-object p0

    :cond_5
    const-string p2, " must not have a request body."

    .line 9
    invoke-static {v1, p1, p2}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.isEmpty() == true"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->c:Lcom/shabakaty/downloader/ts1$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    return-object p0
.end method

.method public i(Ljava/lang/Class;Ljava/lang/Object;)Lcom/shabakaty/downloader/vr3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)",
            "Lcom/shabakaty/downloader/vr3$a;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/vr3$a;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->e:Ljava/util/Map;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/vr3$a;->e:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public j(Lcom/shabakaty/downloader/qw1;)Lcom/shabakaty/downloader/vr3$a;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/vr3$a;->a:Lcom/shabakaty/downloader/qw1;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ws:"

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/ne4;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    if-eqz v0, :cond_0

    const-string v0, "http:"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "wss:"

    .line 3
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/ne4;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https:"

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "$this$toHttpUrl"

    .line 5
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/qw1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qw1$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/qw1$a;->d(Lcom/shabakaty/downloader/qw1;Ljava/lang/String;)Lcom/shabakaty/downloader/qw1$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qw1$a;->a()Lcom/shabakaty/downloader/qw1;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/vr3$a;->j(Lcom/shabakaty/downloader/qw1;)Lcom/shabakaty/downloader/vr3$a;

    return-object p0
.end method
