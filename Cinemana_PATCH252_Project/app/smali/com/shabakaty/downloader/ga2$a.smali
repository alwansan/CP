.class public Lcom/shabakaty/downloader/ga2$a;
.super Lcom/shabakaty/downloader/cl4;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ga2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/cl4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/ga2;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/la2;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/la2;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/ka2;->v:Lcom/shabakaty/downloader/ka2;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/la2;->c0(Lcom/shabakaty/downloader/ka2;)V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/la2;->d0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/la2;->o0(Ljava/lang/Object;)V

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/fa2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/fa2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/la2;->o0(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/ga2;->y:I

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->d()I

    move-result v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    .line 10
    iput v0, p1, Lcom/shabakaty/downloader/ga2;->y:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    .line 11
    iput v0, p1, Lcom/shabakaty/downloader/ga2;->y:I

    goto :goto_0

    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    .line 12
    iput v0, p1, Lcom/shabakaty/downloader/ga2;->y:I

    :goto_0
    return-void

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
