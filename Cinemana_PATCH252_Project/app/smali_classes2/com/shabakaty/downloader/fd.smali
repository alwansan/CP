.class public Lcom/shabakaty/downloader/fd;
.super Lcom/shabakaty/downloader/qb0;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qb0<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/qb0<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/nu2;",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/shabakaty/downloader/tm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/nu2;",
            "+",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "computeType"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qb0;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/fd;->b:Lcom/shabakaty/downloader/tm1;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fd;->b:Lcom/shabakaty/downloader/tm1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qe2;

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->A(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->t(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/sf3;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->V:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/zd2;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/gi1;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->W:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/zd2;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/gi1;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->X:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/zd2;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/gi1;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->Y:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/zd2;->D(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/gi1;)Z

    :cond_1
    return-object p1
.end method
