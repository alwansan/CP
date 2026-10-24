.class public final Lcom/shabakaty/downloader/yf2$a;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaPackageFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/yf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/s72;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lcom/shabakaty/downloader/he2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/yf2$a;->r:Lcom/shabakaty/downloader/yf2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yf2$a;->r:Lcom/shabakaty/downloader/yf2;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/yf2;->y:Lcom/shabakaty/downloader/bg2;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->l:Lcom/shabakaty/downloader/r93;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/l93;->v:Lcom/shabakaty/downloader/fi1;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fqName.asString()"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/r93;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/yf2$a;->r:Lcom/shabakaty/downloader/yf2;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-static {v3}, Lcom/shabakaty/downloader/kb2;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/kb2;

    move-result-object v4

    .line 11
    new-instance v5, Lcom/shabakaty/downloader/fi1;

    iget-object v4, v4, Lcom/shabakaty/downloader/kb2;->a:Ljava/lang/String;

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {v5}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v4

    .line 13
    iget-object v5, v1, Lcom/shabakaty/downloader/yf2;->y:Lcom/shabakaty/downloader/bg2;

    .line 14
    iget-object v5, v5, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 15
    iget-object v5, v5, Lcom/shabakaty/downloader/y72;->c:Lcom/shabakaty/downloader/ae2;

    .line 16
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/he0;->g(Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 17
    :cond_0
    new-instance v5, Lcom/shabakaty/downloader/x93;

    invoke-direct {v5, v3, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v5

    :goto_1
    if-nez v3, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {v2}, Lcom/shabakaty/downloader/vm2;->u(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
