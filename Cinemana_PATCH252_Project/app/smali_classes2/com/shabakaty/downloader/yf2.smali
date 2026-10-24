.class public final Lcom/shabakaty/downloader/yf2;
.super Lcom/shabakaty/downloader/l93;
.source "LazyJavaPackageFragment.kt"


# static fields
.field public static final synthetic D:[Lcom/shabakaty/downloader/jd2;
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
.field public final A:Lcom/shabakaty/downloader/rb2;

.field public final B:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final C:Lcom/shabakaty/downloader/d9;

.field public final x:Lcom/shabakaty/downloader/s72;

.field public final y:Lcom/shabakaty/downloader/bg2;

.field public final z:Lcom/shabakaty/downloader/d03;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/yf2;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "binaryClasses"

    const-string v5, "getBinaryClasses$descriptors_jvm()Ljava/util/Map;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "partToFacade"

    const-string v4, "getPartToFacade()Ljava/util/HashMap;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/yf2;->D:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/s72;)V
    .locals 3

    const-string v0, "outerContext"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jPackage"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 3
    invoke-interface {p2}, Lcom/shabakaty/downloader/s72;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/l93;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/fi1;)V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/yf2;->x:Lcom/shabakaty/downloader/s72;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 5
    invoke-static {p1, p0, v0, v1, v2}, Lcom/shabakaty/downloader/od0;->a(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/z20;Lcom/shabakaty/downloader/n82;II)Lcom/shabakaty/downloader/bg2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/yf2;->y:Lcom/shabakaty/downloader/bg2;

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/yf2$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/yf2$a;-><init>(Lcom/shabakaty/downloader/yf2;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/yf2;->z:Lcom/shabakaty/downloader/d03;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/rb2;

    invoke-direct {v0, p1, p2, p0}, Lcom/shabakaty/downloader/rb2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/s72;Lcom/shabakaty/downloader/yf2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/yf2;->A:Lcom/shabakaty/downloader/rb2;

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/yf2$c;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/yf2$c;-><init>(Lcom/shabakaty/downloader/yf2;)V

    .line 13
    sget-object v2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/md4;->e(Lcom/shabakaty/downloader/rm1;Ljava/lang/Object;)Lcom/shabakaty/downloader/d03;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/yf2;->B:Lcom/shabakaty/downloader/d03;

    .line 15
    iget-object v0, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->v:Lcom/shabakaty/downloader/k82;

    .line 17
    iget-boolean v0, v0, Lcom/shabakaty/downloader/k82;->c:Z

    if-eqz v0, :cond_0

    .line 18
    sget p2, Lcom/shabakaty/downloader/d9;->a:I

    sget-object p2, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/nh3;->I(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;)Lcom/shabakaty/downloader/d9;

    move-result-object p2

    .line 20
    :goto_0
    iput-object p2, p0, Lcom/shabakaty/downloader/yf2;->C:Lcom/shabakaty/downloader/d9;

    .line 21
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 22
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 23
    new-instance p2, Lcom/shabakaty/downloader/yf2$b;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/yf2$b;-><init>(Lcom/shabakaty/downloader/yf2;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public final S0()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/he2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yf2;->z:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/yf2;->D:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public k()Lcom/shabakaty/downloader/s94;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ie2;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ie2;-><init>(Lcom/shabakaty/downloader/yf2;)V

    return-object v0
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yf2;->A:Lcom/shabakaty/downloader/rb2;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Lazy Java package fragment: "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/l93;->v:Lcom/shabakaty/downloader/fi1;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/yf2;->y:Lcom/shabakaty/downloader/bg2;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yf2;->C:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method
