.class public final Lcom/shabakaty/downloader/ab2$d;
.super Lcom/shabakaty/downloader/af2;
.source "JvmBuiltInsCustomizer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ab2;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/d9;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ab2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ab2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ab2$d;->r:Lcom/shabakaty/downloader/ab2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ab2$d;->r:Lcom/shabakaty/downloader/ab2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ab2;->a:Lcom/shabakaty/downloader/nu2;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    const-string v1, "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version"

    sget-object v2, Lcom/shabakaty/downloader/b9;->a:Lcom/shabakaty/downloader/hw2;

    const-string v2, ""

    const-string v3, "WARNING"

    const-string v4, "<this>"

    .line 4
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "message"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "replaceWith"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "level"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/go;

    .line 6
    sget-object v5, Lcom/shabakaty/downloader/tb4$a;->p:Lcom/shabakaty/downloader/fi1;

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/shabakaty/downloader/x93;

    .line 7
    sget-object v8, Lcom/shabakaty/downloader/b9;->d:Lcom/shabakaty/downloader/hw2;

    new-instance v9, Lcom/shabakaty/downloader/ge4;

    invoke-direct {v9, v2}, Lcom/shabakaty/downloader/ge4;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/x93;

    invoke-direct {v2, v8, v9}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 9
    sget-object v2, Lcom/shabakaty/downloader/b9;->e:Lcom/shabakaty/downloader/hw2;

    new-instance v9, Lcom/shabakaty/downloader/fd;

    sget-object v10, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    new-instance v11, Lcom/shabakaty/downloader/a9;

    invoke-direct {v11, v0}, Lcom/shabakaty/downloader/a9;-><init>(Lcom/shabakaty/downloader/zd2;)V

    invoke-direct {v9, v10, v11}, Lcom/shabakaty/downloader/fd;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/tm1;)V

    .line 10
    new-instance v10, Lcom/shabakaty/downloader/x93;

    invoke-direct {v10, v2, v9}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v10, v7, v2

    .line 11
    invoke-static {v7}, Lcom/shabakaty/downloader/vm2;->s([Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v7

    .line 12
    invoke-direct {v4, v0, v5, v7}, Lcom/shabakaty/downloader/go;-><init>(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/fi1;Ljava/util/Map;)V

    .line 13
    new-instance v5, Lcom/shabakaty/downloader/go;

    .line 14
    sget-object v7, Lcom/shabakaty/downloader/tb4$a;->n:Lcom/shabakaty/downloader/fi1;

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/shabakaty/downloader/x93;

    .line 15
    sget-object v10, Lcom/shabakaty/downloader/b9;->a:Lcom/shabakaty/downloader/hw2;

    new-instance v11, Lcom/shabakaty/downloader/ge4;

    invoke-direct {v11, v1}, Lcom/shabakaty/downloader/ge4;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/shabakaty/downloader/x93;

    invoke-direct {v1, v10, v11}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v9, v8

    .line 17
    sget-object v1, Lcom/shabakaty/downloader/b9;->b:Lcom/shabakaty/downloader/hw2;

    new-instance v8, Lcom/shabakaty/downloader/c9;

    invoke-direct {v8, v4}, Lcom/shabakaty/downloader/c9;-><init>(Lcom/shabakaty/downloader/r8;)V

    .line 18
    new-instance v4, Lcom/shabakaty/downloader/x93;

    invoke-direct {v4, v1, v8}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v9, v2

    .line 19
    sget-object v1, Lcom/shabakaty/downloader/b9;->c:Lcom/shabakaty/downloader/hw2;

    new-instance v2, Lcom/shabakaty/downloader/z31;

    .line 20
    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->o:Lcom/shabakaty/downloader/fi1;

    invoke-static {v4}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v4

    .line 21
    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    .line 22
    invoke-direct {v2, v4, v3}, Lcom/shabakaty/downloader/z31;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V

    .line 23
    new-instance v3, Lcom/shabakaty/downloader/x93;

    invoke-direct {v3, v1, v2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v9, v6

    .line 24
    invoke-static {v9}, Lcom/shabakaty/downloader/vm2;->s([Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v1

    .line 25
    invoke-direct {v5, v0, v7, v1}, Lcom/shabakaty/downloader/go;-><init>(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/fi1;Ljava/util/Map;)V

    .line 26
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    invoke-static {v5}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "annotations"

    .line 27
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/e9;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/e9;-><init>(Ljava/util/List;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method
