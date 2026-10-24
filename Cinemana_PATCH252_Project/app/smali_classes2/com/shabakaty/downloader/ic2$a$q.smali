.class public final Lcom/shabakaty/downloader/ic2$a$q;
.super Lcom/shabakaty/downloader/af2;
.source "KClassImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ic2$a;-><init>(Lcom/shabakaty/downloader/ic2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/od2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ic2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public final synthetic s:Lcom/shabakaty/downloader/ic2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ic2$a;Lcom/shabakaty/downloader/ic2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>.a;",
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ic2$a$q;->r:Lcom/shabakaty/downloader/ic2$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/ic2$a$q;->s:Lcom/shabakaty/downloader/ic2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2$a$q;->r:Lcom/shabakaty/downloader/ic2$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ic2$a;->a()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ic2$a$q;->r:Lcom/shabakaty/downloader/ic2$a;

    iget-object v3, p0, Lcom/shabakaty/downloader/ic2$a$q;->s:Lcom/shabakaty/downloader/ic2;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Lcom/shabakaty/downloader/qe2;

    .line 6
    new-instance v5, Lcom/shabakaty/downloader/od2;

    const-string v6, "kotlinType"

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/shabakaty/downloader/jc2;

    invoke-direct {v6, v4, v2, v3}, Lcom/shabakaty/downloader/jc2;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ic2$a;Lcom/shabakaty/downloader/ic2;)V

    invoke-direct {v5, v4, v6}, Lcom/shabakaty/downloader/od2;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/rm1;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2$a$q;->r:Lcom/shabakaty/downloader/ic2$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ic2$a;->a()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->L(Lcom/shabakaty/downloader/q20;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/od2;

    .line 10
    iget-object v4, v4, Lcom/shabakaty/downloader/od2;->a:Lcom/shabakaty/downloader/qe2;

    .line 11
    invoke-static {v4}, Lcom/shabakaty/downloader/gr0;->c(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/q20;

    move-result-object v4

    invoke-interface {v4}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v4

    const-string v5, "getClassDescriptorForType(it.type).kind"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v5, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/shabakaty/downloader/w20;->v:Lcom/shabakaty/downloader/w20;

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_2

    const/4 v2, 0x0

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/od2;

    iget-object v2, p0, Lcom/shabakaty/downloader/ic2$a$q;->r:Lcom/shabakaty/downloader/ic2$a;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ic2$a;->a()Lcom/shabakaty/downloader/q20;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/zd2;->f()Lcom/shabakaty/downloader/b74;

    move-result-object v2

    const-string v3, "descriptor.builtIns.anyType"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/shabakaty/downloader/kc2;->r:Lcom/shabakaty/downloader/kc2;

    invoke-direct {v0, v2, v3}, Lcom/shabakaty/downloader/od2;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/rm1;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_6
    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->g(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
