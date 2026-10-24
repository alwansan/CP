.class public final Lcom/shabakaty/downloader/xr0$c$b;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xr0$c;-><init>(Lcom/shabakaty/downloader/xr0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Set<",
        "+",
        "Lcom/shabakaty/downloader/hw2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xr0$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xr0$c;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$c$b;->r:Lcom/shabakaty/downloader/xr0$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$c$b;->r:Lcom/shabakaty/downloader/xr0$c;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/xr0$c;->d:Lcom/shabakaty/downloader/xr0;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/xr0;->E:Lcom/shabakaty/downloader/xr0$b;

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/k1;->n()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qe2;

    .line 8
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v3, v5, v5, v4, v5}, Lcom/shabakaty/downloader/ls3$a;->a(Lcom/shabakaty/downloader/ls3;Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/qm0;

    .line 9
    instance-of v5, v4, Lcom/shabakaty/downloader/t64;

    if-nez v5, :cond_2

    instance-of v5, v4, Lcom/shabakaty/downloader/yh3;

    if-eqz v5, :cond_1

    .line 10
    :cond_2
    invoke-interface {v4}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    iget-object v2, v0, Lcom/shabakaty/downloader/xr0$c;->d:Lcom/shabakaty/downloader/xr0;

    .line 12
    iget-object v2, v2, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 13
    iget-object v2, v2, Lcom/shabakaty/downloader/ji3;->E:Ljava/util/List;

    const-string v3, "classProto.functionList"

    .line 14
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/shabakaty/downloader/xr0$c;->d:Lcom/shabakaty/downloader/xr0;

    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Lcom/shabakaty/downloader/qi3;

    .line 17
    iget-object v5, v3, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 18
    iget-object v5, v5, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 19
    iget v4, v4, Lcom/shabakaty/downloader/qi3;->w:I

    .line 20
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_4
    iget-object v2, v0, Lcom/shabakaty/downloader/xr0$c;->d:Lcom/shabakaty/downloader/xr0;

    .line 22
    iget-object v2, v2, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 23
    iget-object v2, v2, Lcom/shabakaty/downloader/ji3;->F:Ljava/util/List;

    const-string v3, "classProto.propertyList"

    .line 24
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/shabakaty/downloader/xr0$c;->d:Lcom/shabakaty/downloader/xr0;

    .line 25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 26
    check-cast v3, Lcom/shabakaty/downloader/vi3;

    .line 27
    iget-object v4, v0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 28
    iget-object v4, v4, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 29
    iget v3, v3, Lcom/shabakaty/downloader/vi3;->w:I

    .line 30
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_5
    invoke-static {v1, v1}, Lcom/shabakaty/downloader/f24;->B(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
