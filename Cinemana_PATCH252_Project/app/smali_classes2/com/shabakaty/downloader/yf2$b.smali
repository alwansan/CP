.class public final Lcom/shabakaty/downloader/yf2$b;
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
        "Ljava/util/HashMap<",
        "Lcom/shabakaty/downloader/kb2;",
        "Lcom/shabakaty/downloader/kb2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/yf2$b;->r:Lcom/shabakaty/downloader/yf2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/yf2$b;->r:Lcom/shabakaty/downloader/yf2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/yf2;->S0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/he2;

    .line 3
    invoke-static {v3}, Lcom/shabakaty/downloader/kb2;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/kb2;

    move-result-object v3

    .line 4
    invoke-interface {v2}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v2

    .line 5
    iget-object v4, v2, Lcom/shabakaty/downloader/be2;->a:Lcom/shabakaty/downloader/be2$a;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/shabakaty/downloader/be2;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/shabakaty/downloader/kb2;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/kb2;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method
