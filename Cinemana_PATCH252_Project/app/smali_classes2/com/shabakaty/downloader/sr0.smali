.class public Lcom/shabakaty/downloader/sr0;
.super Ljava/lang/Object;
.source "DeserializedAnnotations.kt"

# interfaces
.implements Lcom/shabakaty/downloader/d9;


# static fields
.field public static final synthetic s:[Lcom/shabakaty/downloader/jd2;
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
.field public final r:Lcom/shabakaty/downloader/d03;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/di3;

    const-class v2, Lcom/shabakaty/downloader/sr0;

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v2

    const-string v3, "annotations"

    const-string v4, "getAnnotations()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/shabakaty/downloader/sr0;->s:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/md4;",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/r8;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/sr0;->r:Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr0;->r:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/sr0;->s:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr0;->r:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/sr0;->s:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public m1(Lcom/shabakaty/downloader/fi1;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/d9$b;->b(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/fi1;)Z

    move-result p1

    return p1
.end method

.method public r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/d9$b;->a(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object p1

    return-object p1
.end method
