.class public final Lcom/shabakaty/downloader/rb2$a;
.super Lcom/shabakaty/downloader/af2;
.source "JvmPackageScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/rb2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/s72;Lcom/shabakaty/downloader/yf2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "[",
        "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/rb2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rb2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/rb2$a;->r:Lcom/shabakaty/downloader/rb2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rb2$a;->r:Lcom/shabakaty/downloader/rb2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/rb2;->c:Lcom/shabakaty/downloader/yf2;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yf2;->S0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/rb2$a;->r:Lcom/shabakaty/downloader/rb2;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Lcom/shabakaty/downloader/he2;

    .line 7
    iget-object v4, v1, Lcom/shabakaty/downloader/rb2;->b:Lcom/shabakaty/downloader/bg2;

    .line 8
    iget-object v4, v4, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 9
    iget-object v4, v4, Lcom/shabakaty/downloader/y72;->d:Lcom/shabakaty/downloader/bs0;

    .line 10
    iget-object v5, v1, Lcom/shabakaty/downloader/rb2;->c:Lcom/shabakaty/downloader/yf2;

    .line 11
    invoke-virtual {v4, v5, v3}, Lcom/shabakaty/downloader/bs0;->a(Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/mr2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v2}, Lcom/shabakaty/downloader/z02;->s(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/e94;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/shabakaty/downloader/mr2;

    .line 14
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/e94;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method
