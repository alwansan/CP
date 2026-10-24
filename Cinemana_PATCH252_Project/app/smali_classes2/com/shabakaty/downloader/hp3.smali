.class public final Lcom/shabakaty/downloader/hp3;
.super Lcom/shabakaty/downloader/so3;
.source "ReflectJavaAnnotationArguments.kt"

# interfaces
.implements Lcom/shabakaty/downloader/v62;


# instance fields
.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/so3;-><init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/hp3;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public c()Lcom/shabakaty/downloader/g82;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hp3;->b:Ljava/lang/Class;

    const-string v1, "type"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/shabakaty/downloader/sp3;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/sp3;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    .line 4
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/shabakaty/downloader/xp3;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/xp3;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Lcom/shabakaty/downloader/ip3;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ip3;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/wo3;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/wo3;-><init>(Ljava/lang/reflect/Type;)V

    :goto_1
    return-object v1
.end method
