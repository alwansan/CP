.class public Lcom/shabakaty/downloader/f51$b0;
.super Lcom/shabakaty/downloader/f51$o;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b0"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/f51$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)I
    .locals 4

    .line 1
    iget-object p1, p2, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    check-cast p1, Lcom/shabakaty/downloader/k21;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k21;->C()Lcom/shabakaty/downloader/m21;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/k21;->F()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/k21;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    iget-object v3, p2, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 6
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/kk4;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-last-of-type"

    return-object v0
.end method
