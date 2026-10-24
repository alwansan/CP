.class public Lcom/shabakaty/downloader/ng0;
.super Ljava/lang/Object;
.source "util.kt"

# interfaces
.implements Lcom/shabakaty/downloader/um0;


# instance fields
.field public final a:Lcom/shabakaty/downloader/oc2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oc2;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ng0;->a:Lcom/shabakaty/downloader/oc2;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/shabakaty/downloader/ao3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/ai3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ng0;->e(Lcom/shabakaty/downloader/xn1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/yh3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/qv4;

    const-string v0, "data"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/zh3;

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/zh3;->J:Lcom/shabakaty/downloader/ao3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    :goto_0
    iget-object p2, p2, Lcom/shabakaty/downloader/zh3;->K:Lcom/shabakaty/downloader/ao3;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    add-int/2addr v0, v1

    .line 6
    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/wz4;

    .line 7
    iget-boolean p2, p2, Lcom/shabakaty/downloader/wz4;->w:Z

    const/4 v1, 0x2

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_5

    .line 8
    new-instance p2, Lcom/shabakaty/downloader/zc2;

    iget-object v0, p0, Lcom/shabakaty/downloader/ng0;->a:Lcom/shabakaty/downloader/oc2;

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/zc2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V

    goto :goto_2

    .line 9
    :cond_2
    new-instance p2, Lcom/shabakaty/downloader/yc2;

    iget-object v0, p0, Lcom/shabakaty/downloader/ng0;->a:Lcom/shabakaty/downloader/oc2;

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/yc2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V

    goto :goto_2

    .line 10
    :cond_3
    new-instance p2, Lcom/shabakaty/downloader/wc2;

    iget-object v0, p0, Lcom/shabakaty/downloader/ng0;->a:Lcom/shabakaty/downloader/oc2;

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/wc2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/hd2;

    iget-object v0, p0, Lcom/shabakaty/downloader/ng0;->a:Lcom/shabakaty/downloader/oc2;

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/hd2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V

    goto :goto_2

    .line 12
    :cond_5
    new-instance p2, Lcom/shabakaty/downloader/me2;

    const-string v0, "Unsupported property: "

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_6
    new-instance p2, Lcom/shabakaty/downloader/gd2;

    iget-object v0, p0, Lcom/shabakaty/downloader/ng0;->a:Lcom/shabakaty/downloader/oc2;

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/gd2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V

    goto :goto_2

    .line 14
    :cond_7
    new-instance p2, Lcom/shabakaty/downloader/ed2;

    iget-object v0, p0, Lcom/shabakaty/downloader/ng0;->a:Lcom/shabakaty/downloader/oc2;

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/ed2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V

    :goto_2
    return-object p2
.end method

.method public bridge synthetic d(Lcom/shabakaty/downloader/hs4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/xn1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/qv4;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/tc2;

    iget-object v0, p0, Lcom/shabakaty/downloader/ng0;->a:Lcom/shabakaty/downloader/oc2;

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/tc2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/xn1;)V

    return-object p2
.end method

.method public bridge synthetic f(Lcom/shabakaty/downloader/q20;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic g(Lcom/shabakaty/downloader/k93;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Lcom/shabakaty/downloader/fi3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ng0;->e(Lcom/shabakaty/downloader/xn1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Lcom/shabakaty/downloader/kt4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Lcom/shabakaty/downloader/vc0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ng0;->e(Lcom/shabakaty/downloader/xn1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/nu2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic l(Lcom/shabakaty/downloader/t93;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic m(Lcom/shabakaty/downloader/sz4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
