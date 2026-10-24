.class public final Lcom/shabakaty/downloader/xa2;
.super Lcom/shabakaty/downloader/zd2;
.source "JvmBuiltIns.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/xa2$a;,
        Lcom/shabakaty/downloader/xa2$b;
    }
.end annotation


# static fields
.field public static final synthetic h:[Lcom/shabakaty/downloader/jd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public f:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/xa2$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/shabakaty/downloader/d03;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/di3;

    const-class v2, Lcom/shabakaty/downloader/xa2;

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v2

    const-string v3, "customizer"

    const-string v4, "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"

    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/shabakaty/downloader/xa2;->h:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/xa2$a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/zd2;-><init>(Lcom/shabakaty/downloader/md4;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/xa2$c;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/xa2$c;-><init>(Lcom/shabakaty/downloader/xa2;Lcom/shabakaty/downloader/md4;)V

    check-cast p1, Lcom/shabakaty/downloader/yj2;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/yj2;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xa2;->g:Lcom/shabakaty/downloader/d03;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/zd2;->d(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zd2;->d(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final Q()Lcom/shabakaty/downloader/ab2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xa2;->g:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/xa2;->h:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ab2;

    return-object v0
.end method

.method public e()Lcom/shabakaty/downloader/o4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xa2;->Q()Lcom/shabakaty/downloader/ab2;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/Iterable;
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/zd2;->m()Ljava/lang/Iterable;

    move-result-object v0

    const-string v1, "super.getClassDescriptorFactories()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shabakaty/downloader/va2;

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/zd2;->d:Lcom/shabakaty/downloader/md4;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zd2;->l()Lcom/shabakaty/downloader/qu2;

    move-result-object v4

    const-string v5, "builtInsModule"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/shabakaty/downloader/va2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/tm1;I)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/m50;->m0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->a(I)V

    throw v3
.end method

.method public r()Lcom/shabakaty/downloader/oc3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xa2;->Q()Lcom/shabakaty/downloader/ab2;

    move-result-object v0

    return-object v0
.end method
