.class public final Lcom/shabakaty/downloader/zp3;
.super Ljava/lang/Object;
.source "ReflectKotlinClassFinder.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ae2;


# instance fields
.field public final a:Ljava/lang/ClassLoader;

.field public final b:Lcom/shabakaty/downloader/qo;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zp3;->a:Ljava/lang/ClassLoader;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/qo;

    invoke-direct {p1}, Lcom/shabakaty/downloader/qo;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zp3;->b:Lcom/shabakaty/downloader/qo;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/ae2$a;
    .locals 1

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/q62;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "javaClass.fqName?.asString() ?: return null"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp3;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/ae2$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/fi1;)Ljava/io/InputStream;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb4;->h:Lcom/shabakaty/downloader/hw2;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/fi1;->i(Lcom/shabakaty/downloader/hw2;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zp3;->b:Lcom/shabakaty/downloader/qo;

    sget-object v1, Lcom/shabakaty/downloader/jo;->m:Lcom/shabakaty/downloader/jo;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/jo;->a(Lcom/shabakaty/downloader/fi1;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qo;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/ae2$a;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "relativeClassName.asString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2e

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/fi1;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/zp3;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/ae2$a;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Lcom/shabakaty/downloader/ae2$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zp3;->a:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/vd5;->D(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/yp3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/yp3;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/ae2$a$b;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2}, Lcom/shabakaty/downloader/ae2$a$b;-><init>(Lcom/shabakaty/downloader/he2;[BI)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method
