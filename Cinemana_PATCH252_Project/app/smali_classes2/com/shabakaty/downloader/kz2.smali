.class public final Lcom/shabakaty/downloader/kz2;
.super Ljava/lang/Object;
.source "modifierChecks.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jz;


# static fields
.field public static final a:Lcom/shabakaty/downloader/kz2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/kz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/kz2;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/kz2;->a:Lcom/shabakaty/downloader/kz2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "should not have varargs or parameters with default values"

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/xn1;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p1

    const-string v0, "functionDescriptor.valueParameters"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/sz4;

    const-string v3, "it"

    .line 4
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->a(Lcom/shabakaty/downloader/sz4;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/shabakaty/downloader/sz4;->s0()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public c(Lcom/shabakaty/downloader/xn1;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/jz$a;->a(Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/xn1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
