.class public final Lcom/shabakaty/downloader/xr0$i;
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
        "Lcom/shabakaty/downloader/l20;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xr0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xr0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$i;->r:Lcom/shabakaty/downloader/xr0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$i;->r:Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/xr0;->B:Lcom/shabakaty/downloader/w20;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/w20;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/tq0$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/shabakaty/downloader/tq0$a;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/s94;Z)V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/p;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/yn1;->b1(Lcom/shabakaty/downloader/qe2;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/ji3;->D:Ljava/util/List;

    const-string v2, "classProto.constructorList"

    .line 8
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/shabakaty/downloader/li3;

    .line 10
    sget-object v6, Lcom/shabakaty/downloader/zd1;->m:Lcom/shabakaty/downloader/zd1$b;

    .line 11
    iget v5, v5, Lcom/shabakaty/downloader/li3;->u:I

    .line 12
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/zd1$b;->c(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    check-cast v2, Lcom/shabakaty/downloader/li3;

    if-nez v2, :cond_3

    move-object v2, v4

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->i:Lcom/shabakaty/downloader/jr2;

    .line 15
    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/jr2;->e(Lcom/shabakaty/downloader/li3;Z)Lcom/shabakaty/downloader/l20;

    move-result-object v2

    :goto_1
    return-object v2
.end method
