.class public Lcom/shabakaty/downloader/o;
.super Ljava/lang/Object;
.source "AbstractClassDescriptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/ve2;",
        "Lcom/shabakaty/downloader/b74;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/p$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/p$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/o;->r:Lcom/shabakaty/downloader/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ve2;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/o;->r:Lcom/shabakaty/downloader/p$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/p$a;->r:Lcom/shabakaty/downloader/p;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ve2;->f(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/g30;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/o;->r:Lcom/shabakaty/downloader/p$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/p$a;->r:Lcom/shabakaty/downloader/p;

    iget-object p1, p1, Lcom/shabakaty/downloader/p;->s:Lcom/shabakaty/downloader/d03;

    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b74;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/shabakaty/downloader/hs4;

    if-eqz v1, :cond_1

    .line 5
    move-object p1, v0

    check-cast p1, Lcom/shabakaty/downloader/hs4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/eu4;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/se2;->b(Lcom/shabakaty/downloader/hs4;Ljava/util/List;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Lcom/shabakaty/downloader/iu2;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/ts4;->c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    .line 8
    check-cast v0, Lcom/shabakaty/downloader/iu2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/iu2;->O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/shabakaty/downloader/eu4;->p(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    :goto_0
    return-object p1
.end method
