.class public final Lcom/shabakaty/downloader/lc2;
.super Lcom/shabakaty/downloader/qb0;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/lc2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qb0<",
        "Lcom/shabakaty/downloader/lc2$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lc2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qb0;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/v20;I)V
    .locals 1

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/x20;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/x20;-><init>(Lcom/shabakaty/downloader/v20;I)V

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/lc2;-><init>(Lcom/shabakaty/downloader/x20;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/x20;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/lc2$a$b;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/lc2$a$b;-><init>(Lcom/shabakaty/downloader/x20;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/qb0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/qe2;
    .locals 8

    const-string v0, "module"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v3, Lcom/shabakaty/downloader/tb4$a;->P:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zd2;->j(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/q20;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/st4;

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 6
    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/lc2$a;

    .line 7
    instance-of v5, v4, Lcom/shabakaty/downloader/lc2$a$a;

    if-eqz v5, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/lc2$a$a;

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/lc2$a$a;->a:Lcom/shabakaty/downloader/qe2;

    goto :goto_1

    .line 9
    :cond_0
    instance-of v4, v4, Lcom/shabakaty/downloader/lc2$a$b;

    if-eqz v4, :cond_3

    .line 10
    check-cast v0, Lcom/shabakaty/downloader/lc2$a$b;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/lc2$a$b;->a:Lcom/shabakaty/downloader/x20;

    .line 12
    iget-object v4, v0, Lcom/shabakaty/downloader/x20;->a:Lcom/shabakaty/downloader/v20;

    .line 13
    iget v0, v0, Lcom/shabakaty/downloader/x20;->b:I

    .line 14
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/rb1;->a(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object v5

    if-nez v5, :cond_1

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unresolved type: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (arrayDimensions="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {v5}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v4

    const-string v5, "descriptor.defaultType"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/shabakaty/downloader/hu4;->m(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 17
    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {v6, v7, v4}, Lcom/shabakaty/downloader/zd2;->h(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object p1, v4

    .line 18
    :goto_1
    invoke-direct {v3, p1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    invoke-static {v3}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/shabakaty/downloader/se2;->e(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/q20;Ljava/util/List;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1

    .line 19
    :cond_3
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    :cond_4
    const/16 p1, 0x15

    .line 20
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method
