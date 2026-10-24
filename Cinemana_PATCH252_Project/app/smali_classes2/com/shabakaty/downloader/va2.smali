.class public final Lcom/shabakaty/downloader/va2;
.super Ljava/lang/Object;
.source "JvmBuiltInClassDescriptorFactory.kt"

# interfaces
.implements Lcom/shabakaty/downloader/s20;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/va2$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/shabakaty/downloader/va2$b;

.field public static final synthetic e:[Lcom/shabakaty/downloader/jd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/shabakaty/downloader/fi1;

.field public static final g:Lcom/shabakaty/downloader/hw2;

.field public static final h:Lcom/shabakaty/downloader/v20;


# instance fields
.field public final a:Lcom/shabakaty/downloader/nu2;

.field public final b:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/nu2;",
            "Lcom/shabakaty/downloader/qm0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/d03;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/di3;

    const-class v2, Lcom/shabakaty/downloader/va2;

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v2

    const-string v3, "cloneable"

    const-string v4, "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"

    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/shabakaty/downloader/va2;->e:[Lcom/shabakaty/downloader/jd2;

    new-instance v0, Lcom/shabakaty/downloader/va2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/va2$b;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/va2;->d:Lcom/shabakaty/downloader/va2$b;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    sput-object v0, Lcom/shabakaty/downloader/va2;->f:Lcom/shabakaty/downloader/fi1;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->d:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/gi1;->h()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    const-string v2, "cloneable.shortName()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/va2;->g:Lcom/shabakaty/downloader/hw2;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/va2;->h:Lcom/shabakaty/downloader/v20;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/tm1;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_0

    .line 1
    sget-object p3, Lcom/shabakaty/downloader/va2$a;->r:Lcom/shabakaty/downloader/va2$a;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string p4, "computeContainingDeclaration"

    .line 2
    invoke-static {p3, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/va2;->a:Lcom/shabakaty/downloader/nu2;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/va2;->b:Lcom/shabakaty/downloader/tm1;

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/wa2;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/wa2;-><init>(Lcom/shabakaty/downloader/va2;Lcom/shabakaty/downloader/md4;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/va2;->c:Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/fi1;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fi1;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/va2;->f:Lcom/shabakaty/downloader/fi1;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/va2;->c:Lcom/shabakaty/downloader/d03;

    sget-object v0, Lcom/shabakaty/downloader/va2;->e:[Lcom/shabakaty/downloader/jd2;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/t20;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/nl6;->s(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    :goto_0
    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/va2;->h:Lcom/shabakaty/downloader/v20;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/va2;->c:Lcom/shabakaty/downloader/d03;

    sget-object v0, Lcom/shabakaty/downloader/va2;->e:[Lcom/shabakaty/downloader/jd2;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/t20;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)Z
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/va2;->g:Lcom/shabakaty/downloader/hw2;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/shabakaty/downloader/va2;->f:Lcom/shabakaty/downloader/fi1;

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
