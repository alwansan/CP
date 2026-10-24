.class public final Lcom/shabakaty/downloader/f51$g0;
.super Lcom/shabakaty/downloader/f51;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g0"
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
    .locals 7

    .line 1
    instance-of p1, p2, Lcom/shabakaty/downloader/tj3;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p2, Lcom/shabakaty/downloader/k21;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/sz2;

    .line 5
    instance-of v3, v2, Lcom/shabakaty/downloader/zl4;

    if-eqz v3, :cond_1

    .line 6
    check-cast v2, Lcom/shabakaty/downloader/zl4;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/zl4;

    .line 9
    new-instance v3, Lcom/shabakaty/downloader/tj3;

    .line 10
    iget-object v4, p2, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 11
    iget-object v4, v4, Lcom/shabakaty/downloader/kk4;->a:Ljava/lang/String;

    .line 12
    invoke-static {v4}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 13
    sget-object v5, Lcom/shabakaty/downloader/kk4;->j:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/kk4;

    if-nez v6, :cond_3

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-static {v4}, Lcom/shabakaty/downloader/z02;->t(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/shabakaty/downloader/kk4;

    if-nez v6, :cond_3

    .line 17
    new-instance v6, Lcom/shabakaty/downloader/kk4;

    invoke-direct {v6, v4}, Lcom/shabakaty/downloader/kk4;-><init>(Ljava/lang/String;)V

    .line 18
    iput-boolean v2, v6, Lcom/shabakaty/downloader/kk4;->b:Z

    .line 19
    :cond_3
    iget-object v4, p2, Lcom/shabakaty/downloader/k21;->x:Ljava/lang/String;

    .line 20
    invoke-virtual {p2}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5}, Lcom/shabakaty/downloader/tj3;-><init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v3}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 23
    iget-object v4, v1, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    invoke-static {v4}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 24
    iget-object v4, v1, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v5, v1, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    if-ne v5, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {v2}, Lcom/shabakaty/downloader/z02;->o(Z)V

    .line 26
    invoke-static {v3}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 27
    iget-object v2, v3, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    if-eqz v2, :cond_5

    .line 28
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/sz2;->y(Lcom/shabakaty/downloader/sz2;)V

    .line 29
    :cond_5
    iget v2, v1, Lcom/shabakaty/downloader/sz2;->s:I

    .line 30
    invoke-virtual {v4}, Lcom/shabakaty/downloader/sz2;->l()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    iput-object v4, v3, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    .line 32
    iput v2, v3, Lcom/shabakaty/downloader/sz2;->s:I

    const/4 v2, 0x0

    .line 33
    iput-object v2, v1, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    .line 34
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    goto :goto_1

    :cond_6
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":matchText"

    return-object v0
.end method
