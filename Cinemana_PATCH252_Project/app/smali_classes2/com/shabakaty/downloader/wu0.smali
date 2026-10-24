.class public Lcom/shabakaty/downloader/wu0;
.super Lcom/shabakaty/downloader/k21;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wu0$a;
    }
.end annotation


# instance fields
.field public A:I

.field public z:Lcom/shabakaty/downloader/wu0$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/kk4;->j:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "#root"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/kk4;

    if-nez v2, :cond_0

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/shabakaty/downloader/z02;->t(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/kk4;

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/kk4;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/kk4;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, v2, Lcom/shabakaty/downloader/kk4;->b:Z

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v2, p1, v0}, Lcom/shabakaty/downloader/k21;-><init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/wu0$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/wu0$a;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wu0;->z:Lcom/shabakaty/downloader/wu0$a;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/shabakaty/downloader/wu0;->A:I

    return-void
.end method


# virtual methods
.method public bridge synthetic D()Lcom/shabakaty/downloader/k21;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu0;->L()Lcom/shabakaty/downloader/wu0;

    move-result-object v0

    return-object v0
.end method

.method public L()Lcom/shabakaty/downloader/wu0;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/k21;->D()Lcom/shabakaty/downloader/k21;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wu0;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/wu0;->z:Lcom/shabakaty/downloader/wu0$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wu0$a;->a()Lcom/shabakaty/downloader/wu0$a;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/wu0;->z:Lcom/shabakaty/downloader/wu0$a;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu0;->L()Lcom/shabakaty/downloader/wu0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lcom/shabakaty/downloader/sz2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu0;->L()Lcom/shabakaty/downloader/wu0;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/de4;->g()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/sz2;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/sz2$a;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/sz2;->m()Lcom/shabakaty/downloader/wu0$a;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/shabakaty/downloader/sz2$a;-><init>(Ljava/lang/Appendable;Lcom/shabakaty/downloader/wu0$a;)V

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/c12;->d(Lcom/shabakaty/downloader/uz2;Lcom/shabakaty/downloader/sz2;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->m()Lcom/shabakaty/downloader/wu0$a;

    move-result-object v1

    .line 5
    iget-boolean v1, v1, Lcom/shabakaty/downloader/wu0$a;->v:Z

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
