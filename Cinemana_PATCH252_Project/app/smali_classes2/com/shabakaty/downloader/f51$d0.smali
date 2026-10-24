.class public final Lcom/shabakaty/downloader/f51$d0;
.super Lcom/shabakaty/downloader/f51;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f51;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)Z
    .locals 3

    .line 1
    iget-object p1, p2, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/k21;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    instance-of v0, v0, Lcom/shabakaty/downloader/wu0;

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/m21;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/m21;-><init>(I)V

    goto :goto_1

    .line 4
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/k21;

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k21;->B()Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/m21;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/m21;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/k21;

    if-eq v2, p2, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 9
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":only-child"

    return-object v0
.end method
