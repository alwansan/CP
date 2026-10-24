.class public final Lcom/shabakaty/downloader/eb2;
.super Ljava/lang/Object;
.source "JvmBuiltInsCustomizer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/nh0$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/nh0$c;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ab2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ab2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/eb2;->a:Lcom/shabakaty/downloader/ab2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/q20;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "it.typeConstructor.supertypes"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/eb2;->a:Lcom/shabakaty/downloader/ab2;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/shabakaty/downloader/qe2;

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lcom/shabakaty/downloader/g30;->a()Lcom/shabakaty/downloader/g30;

    move-result-object v2

    :goto_1
    instance-of v4, v2, Lcom/shabakaty/downloader/q20;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/shabakaty/downloader/q20;

    goto :goto_2

    :cond_1
    move-object v2, v3

    :goto_2
    if-nez v2, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ab2;->f(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/uf2;

    move-result-object v3

    :goto_3
    if-nez v3, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method
