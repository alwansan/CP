.class public final Lcom/shabakaty/downloader/uz0;
.super Ljava/lang/Object;
.source "DownloadsRepository.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/kz0;

.field public b:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/kf2;

.field public final d:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kz0;)V
    .locals 1

    const-string v0, "downloadsDao"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/uz0$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/uz0$a;-><init>(Lcom/shabakaty/downloader/uz0;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/uz0;->c:Lcom/shabakaty/downloader/kf2;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/uz0$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/uz0$b;-><init>(Lcom/shabakaty/downloader/uz0;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/uz0;->d:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lcom/shabakaty/downloader/vz0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/vz0;

    iget v1, v0, Lcom/shabakaty/downloader/vz0;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/vz0;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/vz0;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/vz0;-><init>(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/vz0;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/vz0;->y:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    iget-object p0, v0, Lcom/shabakaty/downloader/vz0;->v:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    iget-object p0, v0, Lcom/shabakaty/downloader/vz0;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/uz0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    const-wide/16 v5, 0x1388

    .line 6
    iput-object p0, v0, Lcom/shabakaty/downloader/vz0;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/vz0;->v:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/vz0;->y:I

    invoke-static {v5, v6, v0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uz0;->f()Lcom/shabakaty/downloader/te1;

    move-result-object p0

    const/4 p2, 0x0

    .line 8
    iput-object p2, v0, Lcom/shabakaty/downloader/vz0;->u:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/vz0;->v:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/vz0;->y:I

    invoke-interface {p0, p1, v0}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_3
    return-object v1
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/uz0$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/uz0$c;

    iget v1, v0, Lcom/shabakaty/downloader/uz0$c;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/uz0$c;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/uz0$c;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/uz0$c;-><init>(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/uz0$c;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/uz0$c;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    iput v3, v0, Lcom/shabakaty/downloader/uz0$c;->w:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/kz0;->f(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 5
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/uz0$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/uz0$d;

    iget v1, v0, Lcom/shabakaty/downloader/uz0$d;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/uz0$d;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/uz0$d;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/uz0$d;-><init>(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/uz0$d;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/uz0$d;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    iput v3, v0, Lcom/shabakaty/downloader/uz0$d;->w:I

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/kz0;->d(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/shabakaty/downloader/te1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/te1<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pw0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uz0;->d:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/te1;

    return-object v0
.end method

.method public final e(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/kz0;->a(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f()Lcom/shabakaty/downloader/te1;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/te1<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pw0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kz0;->k()Lcom/shabakaty/downloader/te1;

    move-result-object v0

    const-string v1, "<this>"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/nh3;->c()Lcom/shabakaty/downloader/se0;

    move-result-object v2

    .line 4
    new-instance v4, Lcom/shabakaty/downloader/dc4;

    const-wide v5, 0x7fffffffffffffffL

    const-wide/16 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/shabakaty/downloader/dc4;-><init>(JJ)V

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/nf1;->a(Lcom/shabakaty/downloader/te1;I)Lcom/shabakaty/downloader/n56;

    move-result-object v0

    .line 6
    iget v3, v0, Lcom/shabakaty/downloader/n56;->d:I

    .line 7
    iget-object v5, v0, Lcom/shabakaty/downloader/n56;->b:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/co;

    .line 8
    sget-object v6, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    const/4 v6, 0x1

    if-ltz v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_5

    if-gtz v3, :cond_2

    .line 9
    sget-object v7, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :cond_2
    :goto_1
    if-eqz v6, :cond_4

    add-int/2addr v3, v1

    if-gez v3, :cond_3

    const v3, 0x7fffffff

    .line 10
    :cond_3
    new-instance v9, Lcom/shabakaty/downloader/a54;

    invoke-direct {v9, v1, v3, v5}, Lcom/shabakaty/downloader/a54;-><init>(IILcom/shabakaty/downloader/co;)V

    .line 11
    iget-object v1, v0, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/me0;

    iget-object v0, v0, Lcom/shabakaty/downloader/n56;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/te1;

    sget-object v7, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/lf1;

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/lf1;-><init>(Lcom/shabakaty/downloader/j54;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/cw2;Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)V

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v3, v1

    move-object v5, v0

    move-object v7, v10

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/ln3;

    invoke-direct {v0, v9}, Lcom/shabakaty/downloader/ln3;-><init>(Lcom/shabakaty/downloader/z44;)V

    .line 14
    invoke-static {v0}, Lcom/shabakaty/downloader/zy;->f(Lcom/shabakaty/downloader/te1;)Lcom/shabakaty/downloader/te1;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/shabakaty/downloader/wz0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/wz0;-><init>(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ud0;)V

    .line 16
    new-instance v3, Lcom/shabakaty/downloader/bf1;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/bf1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/jn1;)V

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/xz0;

    invoke-direct {v0, p0, v2}, Lcom/shabakaty/downloader/xz0;-><init>(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ud0;)V

    .line 18
    new-instance v1, Lcom/shabakaty/downloader/df1;

    invoke-direct {v1, v3, v0}, Lcom/shabakaty/downloader/df1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/jn1;)V

    .line 19
    invoke-static {v1}, Lcom/shabakaty/downloader/d91;->a(Lcom/shabakaty/downloader/te1;)Lcom/shabakaty/downloader/te1;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v3, 0x2

    .line 20
    invoke-static {v0, v1, v2, v3, v2}, Lcom/shabakaty/downloader/zy;->b(Lcom/shabakaty/downloader/te1;ILcom/shabakaty/downloader/co;ILjava/lang/Object;)Lcom/shabakaty/downloader/te1;

    move-result-object v0

    return-object v0

    .line 21
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "extraBufferCapacity cannot be negative, but was "

    .line 23
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final g(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/uz0$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/uz0$e;

    iget v1, v0, Lcom/shabakaty/downloader/uz0$e;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/uz0$e;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/uz0$e;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/uz0$e;-><init>(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/uz0$e;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/uz0$e;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iput v3, v0, Lcom/shabakaty/downloader/uz0$e;->w:I

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/uz0;->b(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v3

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final h(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/uz0$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/uz0$f;

    iget v1, v0, Lcom/shabakaty/downloader/uz0$f;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/uz0$f;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/uz0$f;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/uz0$f;-><init>(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/uz0$f;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/uz0$f;->y:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p1, v0, Lcom/shabakaty/downloader/uz0$f;->v:I

    iget-object v2, v0, Lcom/shabakaty/downloader/uz0$f;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/uz0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    iput-object p0, v0, Lcom/shabakaty/downloader/uz0$f;->u:Ljava/lang/Object;

    iput p1, v0, Lcom/shabakaty/downloader/uz0$f;->v:I

    iput v4, v0, Lcom/shabakaty/downloader/uz0$f;->y:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/kz0;->a(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Lcom/shabakaty/downloader/pw0;

    if-nez p2, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    iget-object v4, v2, Lcom/shabakaty/downloader/uz0;->b:Lcom/shabakaty/downloader/tm1;

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v4, p2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_2
    iget-object p2, v2, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/shabakaty/downloader/uz0$f;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/uz0$f;->y:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/kz0;->h(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final i(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/kz0;->i(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
