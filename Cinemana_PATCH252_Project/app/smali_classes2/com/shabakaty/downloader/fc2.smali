.class public final Lcom/shabakaty/downloader/fc2;
.super Lcom/shabakaty/downloader/af2;
.source "KCallableImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ac2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ac2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ac2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ac2<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/fc2;->r:Lcom/shabakaty/downloader/ac2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fc2;->r:Lcom/shabakaty/downloader/ac2;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ac2;->e()Lcom/shabakaty/downloader/tq;

    move-result-object v1

    instance-of v2, v1, Lcom/shabakaty/downloader/xn1;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/shabakaty/downloader/xn1;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/shabakaty/downloader/xn1;->H0()Z

    move-result v1

    if-ne v1, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_1
    if-eqz v2, :cond_8

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ac2;->b()Lcom/shabakaty/downloader/er;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/er;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_4

    move-object v1, v3

    goto :goto_3

    .line 4
    :cond_4
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    :goto_3
    const-class v2, Lcom/shabakaty/downloader/ud0;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "continuationType.actualTypeArguments"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/id;->Z([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/lang/reflect/WildcardType;

    goto :goto_4

    :cond_5
    move-object v0, v3

    :goto_4
    if-nez v0, :cond_6

    goto :goto_5

    .line 6
    :cond_6
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v0}, Lcom/shabakaty/downloader/id;->Q([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/Type;

    :cond_8
    :goto_5
    if-nez v3, :cond_9

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/fc2;->r:Lcom/shabakaty/downloader/ac2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ac2;->b()Lcom/shabakaty/downloader/er;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/er;->h()Ljava/lang/reflect/Type;

    move-result-object v3

    :cond_9
    return-object v3
.end method
