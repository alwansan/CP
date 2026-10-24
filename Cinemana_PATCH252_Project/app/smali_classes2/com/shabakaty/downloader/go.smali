.class public final Lcom/shabakaty/downloader/go;
.super Ljava/lang/Object;
.source "BuiltInAnnotationDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r8;


# instance fields
.field public final a:Lcom/shabakaty/downloader/zd2;

.field public final b:Lcom/shabakaty/downloader/fi1;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/fi1;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/zd2;",
            "Lcom/shabakaty/downloader/fi1;",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "+",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/go;->a:Lcom/shabakaty/downloader/zd2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/go;->b:Lcom/shabakaty/downloader/fi1;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/go;->c:Ljava/util/Map;

    .line 5
    sget-object p1, Lkotlin/a;->s:Lkotlin/a;

    new-instance p2, Lcom/shabakaty/downloader/go$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/go$a;-><init>(Lcom/shabakaty/downloader/go;)V

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/go;->d:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/qe2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/go;->d:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-type>(...)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/qe2;

    return-object v0
.end method

.method public e()Lcom/shabakaty/downloader/fi1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/go;->b:Lcom/shabakaty/downloader/fi1;

    return-object v0
.end method

.method public k()Lcom/shabakaty/downloader/s94;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/go;->c:Ljava/util/Map;

    return-object v0
.end method
