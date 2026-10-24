.class public final Lcom/shabakaty/downloader/md2;
.super Lcom/shabakaty/downloader/af2;
.source "KTypeImpl.kt"

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
.field public final synthetic r:Lcom/shabakaty/downloader/od2;

.field public final synthetic s:I

.field public final synthetic t:Lcom/shabakaty/downloader/kf2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/kf2<",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/od2;ILcom/shabakaty/downloader/kf2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/od2;",
            "I",
            "Lcom/shabakaty/downloader/kf2<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/md2;->r:Lcom/shabakaty/downloader/od2;

    iput p2, p0, Lcom/shabakaty/downloader/md2;->s:I

    iput-object p3, p0, Lcom/shabakaty/downloader/md2;->t:Lcom/shabakaty/downloader/kf2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/md2;->r:Lcom/shabakaty/downloader/od2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/od2;->b:Lcom/shabakaty/downloader/cq3$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3
    :goto_0
    instance-of v1, v0, Ljava/lang/Class;

    const-string v2, "{\n                      \u2026                        }"

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-class v0, Ljava/lang/Object;

    :goto_1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 5
    :cond_2
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_4

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/md2;->s:I

    if-nez v1, :cond_3

    .line 7
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 8
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/me2;

    iget-object v1, p0, Lcom/shabakaty/downloader/md2;->r:Lcom/shabakaty/downloader/od2;

    const-string v2, "Array type has been queried for a non-0th argument: "

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/md2;->t:Lcom/shabakaty/downloader/kf2;

    .line 11
    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 12
    iget v1, p0, Lcom/shabakaty/downloader/md2;->s:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 13
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v3, "argument.lowerBounds"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/id;->R([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "argument.upperBounds"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/id;->Q([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object v0

    .line 15
    :cond_7
    new-instance v0, Lcom/shabakaty/downloader/me2;

    iget-object v1, p0, Lcom/shabakaty/downloader/md2;->r:Lcom/shabakaty/downloader/od2;

    const-string v2, "Non-generic type has been queried for arguments: "

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v0
.end method
