.class public final Lcom/shabakaty/downloader/ou2;
.super Lcom/shabakaty/downloader/af2;
.source "ModuleDescriptorImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/g90;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/qu2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qu2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ou2;->r:Lcom/shabakaty/downloader/qu2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ou2;->r:Lcom/shabakaty/downloader/qu2;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/qu2;->x:Lcom/shabakaty/downloader/lu2;

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Lcom/shabakaty/downloader/lu2;->a()Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ou2;->r:Lcom/shabakaty/downloader/qu2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qu2;->w0()V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ou2;->r:Lcom/shabakaty/downloader/qu2;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/qu2;

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/qu2;->y:Lcom/shabakaty/downloader/m93;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Lcom/shabakaty/downloader/qu2;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/qu2;->y:Lcom/shabakaty/downloader/m93;

    .line 12
    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ou2;->r:Lcom/shabakaty/downloader/qu2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    const-string v2, "CompositeProvider@ModuleDescriptor for "

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v2, Lcom/shabakaty/downloader/g90;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/g90;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const-string v1, "Dependencies of module "

    .line 15
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qu2;->S0()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " were not set before querying module content"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
