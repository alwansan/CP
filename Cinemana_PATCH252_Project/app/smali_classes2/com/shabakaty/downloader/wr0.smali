.class public final Lcom/shabakaty/downloader/wr0;
.super Ljava/lang/Object;
.source "DeserializedClassDataFinder.kt"

# interfaces
.implements Lcom/shabakaty/downloader/o20;


# instance fields
.field public final a:Lcom/shabakaty/downloader/m93;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/m93;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wr0;->a:Lcom/shabakaty/downloader/m93;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/n20;
    .locals 3

    const-string v0, "classId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wr0;->a:Lcom/shabakaty/downloader/m93;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    const-string v2, "classId.packageFqName"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/md0;->G(Lcom/shabakaty/downloader/m93;Lcom/shabakaty/downloader/fi1;)Ljava/util/List;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k93;

    .line 3
    instance-of v2, v1, Lcom/shabakaty/downloader/es0;

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    check-cast v1, Lcom/shabakaty/downloader/es0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/es0;->S0()Lcom/shabakaty/downloader/o20;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/o20;->a(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/n20;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
