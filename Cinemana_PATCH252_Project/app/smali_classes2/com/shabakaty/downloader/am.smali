.class public final Lcom/shabakaty/downloader/am;
.super Lcom/shabakaty/downloader/k;
.source "BinaryClassAnnotationAndConstantLoaderImpl.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/k<",
        "Lcom/shabakaty/downloader/r8;",
        "Lcom/shabakaty/downloader/qb0<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/shabakaty/downloader/nu2;

.field public final d:Lcom/shabakaty/downloader/b03;

.field public final e:Lcom/shabakaty/downloader/t8;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ae2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/shabakaty/downloader/k;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ae2;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/am;->c:Lcom/shabakaty/downloader/nu2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/am;->d:Lcom/shabakaty/downloader/b03;

    .line 4
    new-instance p3, Lcom/shabakaty/downloader/t8;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/t8;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;)V

    iput-object p3, p0, Lcom/shabakaty/downloader/am;->e:Lcom/shabakaty/downloader/t8;

    return-void
.end method


# virtual methods
.method public s(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)Lcom/shabakaty/downloader/he2$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/v20;",
            "Lcom/shabakaty/downloader/s94;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;)",
            "Lcom/shabakaty/downloader/he2$a;"
        }
    .end annotation

    const-string v0, "annotationClassId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/am;->c:Lcom/shabakaty/downloader/nu2;

    iget-object v1, p0, Lcom/shabakaty/downloader/am;->d:Lcom/shabakaty/downloader/b03;

    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/rb1;->c(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/b03;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/am$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/am$a;-><init>(Lcom/shabakaty/downloader/am;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)V

    return-object v0
.end method
