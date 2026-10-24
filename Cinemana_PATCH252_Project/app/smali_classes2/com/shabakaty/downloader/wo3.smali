.class public final Lcom/shabakaty/downloader/wo3;
.super Lcom/shabakaty/downloader/up3;
.source "ReflectJavaArrayType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/o62;


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Lcom/shabakaty/downloader/up3;

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/g62;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/up3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wo3;->a:Ljava/lang/reflect/Type;

    .line 2
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    const-string v0, "genericComponentType"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lcom/shabakaty/downloader/sp3;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/sp3;-><init>(Ljava/lang/Class;)V

    goto/16 :goto_3

    .line 4
    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/shabakaty/downloader/xp3;

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/xp3;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/ip3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ip3;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    new-instance v0, Lcom/shabakaty/downloader/wo3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/wo3;-><init>(Ljava/lang/reflect/Type;)V

    :goto_1
    move-object p1, v0

    goto :goto_3

    .line 8
    :cond_4
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getComponentType()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/shabakaty/downloader/sp3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/sp3;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    .line 10
    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 11
    :cond_6
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/shabakaty/downloader/xp3;

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/xp3;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_1

    .line 12
    :cond_7
    new-instance v0, Lcom/shabakaty/downloader/ip3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ip3;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 13
    :cond_8
    :goto_2
    new-instance v0, Lcom/shabakaty/downloader/wo3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/wo3;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 14
    :goto_3
    iput-object p1, p0, Lcom/shabakaty/downloader/wo3;->b:Lcom/shabakaty/downloader/up3;

    .line 15
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    iput-object p1, p0, Lcom/shabakaty/downloader/wo3;->c:Ljava/util/Collection;

    return-void

    .line 16
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array type ("

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public X()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wo3;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Lcom/shabakaty/downloader/g82;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wo3;->b:Lcom/shabakaty/downloader/up3;

    return-object v0
.end method

.method public y()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/g62;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wo3;->c:Ljava/util/Collection;

    return-object v0
.end method
