.class public final Lcom/shabakaty/downloader/zv4;
.super Lcom/shabakaty/downloader/c51;
.source "ErrorType.kt"


# instance fields
.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ts4;",
            "Lcom/shabakaty/downloader/mr2;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "presentableName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/c51;-><init>(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;Ljava/util/List;ZLjava/lang/String;I)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zv4;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic X0(Z)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zv4;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1
.end method

.method public Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public a1(Z)Lcom/shabakaty/downloader/b74;
    .locals 7

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/zv4;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/zv4;->x:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/c51;->s:Lcom/shabakaty/downloader/ts4;

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/c51;->t:Lcom/shabakaty/downloader/mr2;

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/c51;->u:Ljava/util/List;

    move-object v0, v6

    move v5, p1

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/zv4;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;Ljava/util/List;Z)V

    return-object v6
.end method

.method public c1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zv4;->x:Ljava/lang/String;

    return-object v0
.end method

.method public d1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/c51;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
