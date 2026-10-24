.class public final Lcom/shabakaty/downloader/xr0$j;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xr0;-><init>(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/ji3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/s94;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Collection<",
        "+",
        "Lcom/shabakaty/downloader/q20;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xr0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xr0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$j;->r:Lcom/shabakaty/downloader/xr0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$j;->r:Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/xr0;->z:Lcom/shabakaty/downloader/eu2;

    sget-object v2, Lcom/shabakaty/downloader/eu2;->s:Lcom/shabakaty/downloader/eu2;

    if-eq v1, v2, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/ji3;->I:Ljava/util/List;

    const-string v3, "fqNames"

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Integer;

    .line 9
    iget-object v4, v0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 10
    iget-object v5, v4, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 11
    iget-object v4, v4, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    const-string v6, "index"

    .line 12
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/or0;->b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    move-object v0, v2

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    const-string v3, "sealedClass"

    .line 14
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xr0;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v3

    if-eq v3, v2, :cond_4

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_2

    .line 16
    :cond_4
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xr0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v3

    .line 18
    instance-of v5, v3, Lcom/shabakaty/downloader/k93;

    if-eqz v5, :cond_5

    .line 19
    check-cast v3, Lcom/shabakaty/downloader/k93;

    invoke-interface {v3}, Lcom/shabakaty/downloader/k93;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v3

    .line 20
    invoke-static {v0, v2, v3, v1}, Lcom/shabakaty/downloader/p30;->c(Lcom/shabakaty/downloader/q20;Ljava/util/LinkedHashSet;Lcom/shabakaty/downloader/mr2;Z)V

    .line 21
    :cond_5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/p;->J0()Lcom/shabakaty/downloader/mr2;

    move-result-object v1

    const-string v3, "sealedClass.unsubstitutedInnerClassesScope"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v1, v4}, Lcom/shabakaty/downloader/p30;->c(Lcom/shabakaty/downloader/q20;Ljava/util/LinkedHashSet;Lcom/shabakaty/downloader/mr2;Z)V

    goto :goto_1

    :goto_2
    return-object v0
.end method
