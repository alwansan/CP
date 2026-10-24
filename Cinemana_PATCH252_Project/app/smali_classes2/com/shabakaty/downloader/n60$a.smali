.class public final Lcom/shabakaty/downloader/n60$a;
.super Lcom/shabakaty/downloader/n60;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/n60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/f51;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/n60;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/n60;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/n60;->b()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/shabakaty/downloader/f51;)V
    .locals 0

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/n60$a;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/shabakaty/downloader/n60;->b:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/n60;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/f51;

    .line 3
    invoke-virtual {v2, p1, p2}, Lcom/shabakaty/downloader/f51;->a(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n60;->a:Ljava/util/ArrayList;

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/de4;->e(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
