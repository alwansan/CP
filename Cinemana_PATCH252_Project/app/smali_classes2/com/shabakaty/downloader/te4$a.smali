.class public Lcom/shabakaty/downloader/te4$a;
.super Lcom/shabakaty/downloader/te4;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/te4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f51;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/te4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/te4;->a:Lcom/shabakaty/downloader/f51;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)Z
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/f51$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/f51$a;-><init>()V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/m21;

    invoke-direct {v1}, Lcom/shabakaty/downloader/m21;-><init>()V

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/n50;

    invoke-direct {v2, p2, v1, v0}, Lcom/shabakaty/downloader/n50;-><init>(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/m21;Lcom/shabakaty/downloader/f51;)V

    invoke-static {v2, p2}, Lcom/shabakaty/downloader/c12;->d(Lcom/shabakaty/downloader/uz2;Lcom/shabakaty/downloader/sz2;)V

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k21;

    if-eq v1, p2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/te4;->a:Lcom/shabakaty/downloader/f51;

    invoke-virtual {v2, p1, v1}, Lcom/shabakaty/downloader/f51;->a(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/te4;->a:Lcom/shabakaty/downloader/f51;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":has(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
