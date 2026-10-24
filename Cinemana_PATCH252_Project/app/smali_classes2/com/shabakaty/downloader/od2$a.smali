.class public final Lcom/shabakaty/downloader/od2$a;
.super Lcom/shabakaty/downloader/af2;
.source "KTypeImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/od2;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/rm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/sd2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/od2;

.field public final synthetic s:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/od2;Lcom/shabakaty/downloader/rm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/od2;",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/od2$a;->r:Lcom/shabakaty/downloader/od2;

    iput-object p2, p0, Lcom/shabakaty/downloader/od2$a;->s:Lcom/shabakaty/downloader/rm1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/od2$a;->r:Lcom/shabakaty/downloader/od2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/od2;->a:Lcom/shabakaty/downloader/qe2;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto/16 :goto_3

    .line 5
    :cond_0
    sget-object v1, Lkotlin/a;->s:Lkotlin/a;

    new-instance v2, Lcom/shabakaty/downloader/nd2;

    iget-object v3, p0, Lcom/shabakaty/downloader/od2$a;->r:Lcom/shabakaty/downloader/od2;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/nd2;-><init>(Lcom/shabakaty/downloader/od2;)V

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/od2$a;->s:Lcom/shabakaty/downloader/rm1;

    iget-object v3, p0, Lcom/shabakaty/downloader/od2$a;->r:Lcom/shabakaty/downloader/od2;

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x0

    if-ltz v5, :cond_6

    .line 9
    check-cast v6, Lcom/shabakaty/downloader/qt4;

    .line 10
    invoke-interface {v6}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 11
    sget-object v5, Lcom/shabakaty/downloader/sd2;->c:Lcom/shabakaty/downloader/sd2$a;

    .line 12
    sget-object v5, Lcom/shabakaty/downloader/sd2;->d:Lcom/shabakaty/downloader/sd2;

    goto :goto_2

    .line 13
    :cond_1
    new-instance v9, Lcom/shabakaty/downloader/od2;

    invoke-interface {v6}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v10

    const-string v11, "typeProjection.type"

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v8, Lcom/shabakaty/downloader/md2;

    invoke-direct {v8, v3, v5, v1}, Lcom/shabakaty/downloader/md2;-><init>(Lcom/shabakaty/downloader/od2;ILcom/shabakaty/downloader/kf2;)V

    :goto_1
    invoke-direct {v9, v10, v8}, Lcom/shabakaty/downloader/od2;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/rm1;)V

    .line 14
    invoke-interface {v6}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const-string v6, "type"

    if-eqz v5, :cond_5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_4

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 15
    sget-object v5, Lcom/shabakaty/downloader/sd2;->c:Lcom/shabakaty/downloader/sd2$a;

    .line 16
    invoke-static {v9, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v5, Lcom/shabakaty/downloader/sd2;

    sget-object v6, Lcom/shabakaty/downloader/td2;->t:Lcom/shabakaty/downloader/td2;

    invoke-direct {v5, v6, v9}, Lcom/shabakaty/downloader/sd2;-><init>(Lcom/shabakaty/downloader/td2;Lcom/shabakaty/downloader/ld2;)V

    goto :goto_2

    .line 18
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw v0

    .line 19
    :cond_4
    sget-object v5, Lcom/shabakaty/downloader/sd2;->c:Lcom/shabakaty/downloader/sd2$a;

    .line 20
    invoke-static {v9, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v5, Lcom/shabakaty/downloader/sd2;

    sget-object v6, Lcom/shabakaty/downloader/td2;->s:Lcom/shabakaty/downloader/td2;

    invoke-direct {v5, v6, v9}, Lcom/shabakaty/downloader/sd2;-><init>(Lcom/shabakaty/downloader/td2;Lcom/shabakaty/downloader/ld2;)V

    goto :goto_2

    .line 22
    :cond_5
    sget-object v5, Lcom/shabakaty/downloader/sd2;->c:Lcom/shabakaty/downloader/sd2$a;

    .line 23
    invoke-static {v9, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v5, Lcom/shabakaty/downloader/sd2;

    sget-object v6, Lcom/shabakaty/downloader/td2;->r:Lcom/shabakaty/downloader/td2;

    invoke-direct {v5, v6, v9}, Lcom/shabakaty/downloader/sd2;-><init>(Lcom/shabakaty/downloader/td2;Lcom/shabakaty/downloader/ld2;)V

    .line 25
    :goto_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_0

    .line 26
    :cond_6
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw v8

    :cond_7
    move-object v0, v4

    :goto_3
    return-object v0
.end method
