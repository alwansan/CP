.class public final Lcom/shabakaty/downloader/xr0$b;
.super Lcom/shabakaty/downloader/q;
.source "DeserializedClassDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final c:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/shabakaty/downloader/xr0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xr0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$b;->d:Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 5
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/q;-><init>(Lcom/shabakaty/downloader/md4;)V

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/xr0$b$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/xr0$b$a;-><init>(Lcom/shabakaty/downloader/xr0;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$b;->c:Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public d()Lcom/shabakaty/downloader/g30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$b;->d:Lcom/shabakaty/downloader/xr0;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$b;->c:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$b;->d:Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    const-string v2, "<this>"

    .line 5
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeTable"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/ji3;->y:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/16 v3, 0xa

    if-nez v2, :cond_1

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/ji3;->z:Ljava/util/List;

    const-string v2, "supertypeIdList"

    .line 9
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Ljava/lang/Integer;

    const-string v6, "it"

    .line 13
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$b;->d:Lcom/shabakaty/downloader/xr0;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 17
    check-cast v5, Lcom/shabakaty/downloader/yi3;

    .line 18
    iget-object v6, v0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 19
    iget-object v6, v6, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 20
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/xs4;->h(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$b;->d:Lcom/shabakaty/downloader/xr0;

    .line 22
    iget-object v2, v0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 23
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 24
    iget-object v2, v2, Lcom/shabakaty/downloader/or0;->n:Lcom/shabakaty/downloader/o4;

    .line 25
    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/o4;->a(Lcom/shabakaty/downloader/q20;)Ljava/util/Collection;

    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 29
    check-cast v5, Lcom/shabakaty/downloader/qe2;

    .line 30
    invoke-virtual {v5}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v5

    invoke-interface {v5}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v5

    instance-of v6, v5, Lcom/shabakaty/downloader/b03$b;

    if-eqz v6, :cond_3

    check-cast v5, Lcom/shabakaty/downloader/b03$b;

    goto :goto_4

    :cond_3
    move-object v5, v4

    :goto_4
    if-nez v5, :cond_4

    goto :goto_3

    .line 31
    :cond_4
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 32
    :cond_5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 33
    iget-object v2, p0, Lcom/shabakaty/downloader/xr0$b;->d:Lcom/shabakaty/downloader/xr0;

    .line 34
    iget-object v4, v2, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 35
    iget-object v4, v4, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 36
    iget-object v4, v4, Lcom/shabakaty/downloader/or0;->h:Lcom/shabakaty/downloader/y41;

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 39
    check-cast v3, Lcom/shabakaty/downloader/b03$b;

    .line 40
    invoke-static {v3}, Lcom/shabakaty/downloader/hr0;->f(Lcom/shabakaty/downloader/g30;)Lcom/shabakaty/downloader/v20;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {v3}, Lcom/shabakaty/downloader/p;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_6
    invoke-virtual {v6}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 41
    :cond_7
    invoke-interface {v4, v2, v5}, Lcom/shabakaty/downloader/y41;->a(Lcom/shabakaty/downloader/q20;Ljava/util/List;)V

    .line 42
    :cond_8
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/shabakaty/downloader/ph4;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ph4$a;->a:Lcom/shabakaty/downloader/ph4$a;

    return-object v0
.end method

.method public s()Lcom/shabakaty/downloader/q20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$b;->d:Lcom/shabakaty/downloader/xr0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$b;->d:Lcom/shabakaty/downloader/xr0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/p;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/hw2;->r:Ljava/lang/String;

    const-string v1, "name.toString()"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
