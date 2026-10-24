.class public final Lcom/shabakaty/downloader/og2$c;
.super Lcom/shabakaty/downloader/af2;
.source "LazyPackageViewDescriptorImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/og2;-><init>(Lcom/shabakaty/downloader/qu2;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/mr2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/og2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/og2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/og2$c;->r:Lcom/shabakaty/downloader/og2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/og2$c;->r:Lcom/shabakaty/downloader/og2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/og2;->w:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/og2;->y:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/og2$c;->r:Lcom/shabakaty/downloader/og2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/og2;->P()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Lcom/shabakaty/downloader/k93;

    .line 8
    invoke-interface {v2}, Lcom/shabakaty/downloader/k93;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/af4;

    iget-object v2, p0, Lcom/shabakaty/downloader/og2$c;->r:Lcom/shabakaty/downloader/og2;

    .line 9
    iget-object v3, v2, Lcom/shabakaty/downloader/og2;->t:Lcom/shabakaty/downloader/qu2;

    .line 10
    iget-object v2, v2, Lcom/shabakaty/downloader/og2;->u:Lcom/shabakaty/downloader/fi1;

    .line 11
    invoke-direct {v0, v3, v2}, Lcom/shabakaty/downloader/af4;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/fi1;)V

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/m50;->o0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "package view scope for "

    .line 12
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/og2$c;->r:Lcom/shabakaty/downloader/og2;

    .line 13
    iget-object v2, v2, Lcom/shabakaty/downloader/og2;->u:Lcom/shabakaty/downloader/fi1;

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shabakaty/downloader/og2$c;->r:Lcom/shabakaty/downloader/og2;

    .line 15
    iget-object v2, v2, Lcom/shabakaty/downloader/og2;->t:Lcom/shabakaty/downloader/qu2;

    .line 16
    invoke-virtual {v2}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/jy;->h(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    :goto_1
    return-object v0
.end method
