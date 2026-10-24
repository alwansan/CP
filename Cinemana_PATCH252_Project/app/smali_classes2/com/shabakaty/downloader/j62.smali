.class public Lcom/shabakaty/downloader/j62;
.super Ljava/lang/Object;
.source "JavaAnnotationMapper.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r8;
.implements Lcom/shabakaty/downloader/le3;


# static fields
.field public static final synthetic f:[Lcom/shabakaty/downloader/jd2;
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
.field public final a:Lcom/shabakaty/downloader/fi1;

.field public final b:Lcom/shabakaty/downloader/s94;

.field public final c:Lcom/shabakaty/downloader/d03;

.field public final d:Lcom/shabakaty/downloader/h62;

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/di3;

    const-class v2, Lcom/shabakaty/downloader/j62;

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/shabakaty/downloader/j62;->f:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/fi1;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/j62;->a:Lcom/shabakaty/downloader/fi1;

    if-nez p2, :cond_0

    .line 3
    sget-object p3, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 5
    iget-object p3, p3, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 6
    invoke-interface {p3, p2}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/shabakaty/downloader/j62;->b:Lcom/shabakaty/downloader/s94;

    .line 7
    iget-object p3, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 8
    iget-object p3, p3, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/j62$a;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/j62$a;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/j62;)V

    invoke-interface {p3, v0}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/j62;->c:Lcom/shabakaty/downloader/d03;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/shabakaty/downloader/g62;->L()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->a0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/h62;

    :goto_1
    iput-object p1, p0, Lcom/shabakaty/downloader/j62;->d:Lcom/shabakaty/downloader/h62;

    const/4 p1, 0x0

    const/4 p3, 0x1

    if-nez p2, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {p2}, Lcom/shabakaty/downloader/g62;->j()Z

    move-result p2

    if-ne p2, p3, :cond_3

    const/4 p1, 0x1

    :cond_3
    :goto_2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/j62;->e:Z

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/qe2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j62;->c:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/j62;->f:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b74;

    return-object v0
.end method

.method public e()Lcom/shabakaty/downloader/fi1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j62;->a:Lcom/shabakaty/downloader/fi1;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/j62;->e:Z

    return v0
.end method

.method public k()Lcom/shabakaty/downloader/s94;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j62;->b:Lcom/shabakaty/downloader/s94;

    return-object v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    return-object v0
.end method
