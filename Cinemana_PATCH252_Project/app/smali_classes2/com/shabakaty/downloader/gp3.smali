.class public final Lcom/shabakaty/downloader/gp3;
.super Ljava/lang/Object;
.source "ReflectJavaClassFinder.kt"

# interfaces
.implements Lcom/shabakaty/downloader/u62;


# instance fields
.field public final a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gp3;->a:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/u62$a;)Lcom/shabakaty/downloader/q62;
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/u62$a;->a:Lcom/shabakaty/downloader/v20;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    const-string v1, "classId.packageFqName"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "classId.relativeClassName.asString()"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x24

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x2e

    invoke-static {p1, v4, v1, v2, v3}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gp3;->a:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/vd5;->D(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/fp3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fp3;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/s72;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/rp3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/rp3;-><init>(Lcom/shabakaty/downloader/fi1;)V

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/fi1;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fi1;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
