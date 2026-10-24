.class public final Lcom/shabakaty/downloader/a42;
.super Ljava/lang/Object;
.source "modifierChecks.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jz;


# static fields
.field public static final a:Lcom/shabakaty/downloader/a42;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/a42;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a42;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/a42;->a:Lcom/shabakaty/downloader/a42;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "second parameter must be of type KProperty<*> or its supertype"

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/xn1;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/sz4;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/jq3;->d:Lcom/shabakaty/downloader/jq3$b;

    const-string v1, "secondParameter"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->Q:Lcom/shabakaty/downloader/v20;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/rb1;->a(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/vb4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v3

    const-string v4, "kPropertyClass.typeConstructor.parameters"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "kPropertyClass.typeConstructor.parameters.single()"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/shabakaty/downloader/kt4;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/vb4;-><init>(Lcom/shabakaty/downloader/kt4;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/se2;->e(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/q20;Ljava/util/List;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    const-string v1, "secondParameter.type"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/eu4;->j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    const-string v1, "makeNotNullable(this)"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/shabakaty/downloader/re2;->a:Lcom/shabakaty/downloader/re2;

    check-cast v1, Lcom/shabakaty/downloader/fz2;

    invoke-virtual {v1, v0, p1}, Lcom/shabakaty/downloader/fz2;->e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public c(Lcom/shabakaty/downloader/xn1;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/jz$a;->a(Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/xn1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
