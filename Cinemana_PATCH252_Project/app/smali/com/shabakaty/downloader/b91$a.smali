.class public final Lcom/shabakaty/downloader/b91$a;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/b91;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ue1<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ue1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b91;Lcom/shabakaty/downloader/ue1;)V
    .locals 0

    iput-object p2, p0, Lcom/shabakaty/downloader/b91$a;->r:Lcom/shabakaty/downloader/ue1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/shabakaty/downloader/b91$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/b91$a$a;

    iget v1, v0, Lcom/shabakaty/downloader/b91$a$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/b91$a$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/b91$a$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/b91$a$a;-><init>(Lcom/shabakaty/downloader/b91$a;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/b91$a$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    iget v2, v0, Lcom/shabakaty/downloader/b91$a$a;->v:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    .line 1
    iget-object p1, v0, Lcom/shabakaty/downloader/b91$a$a;->y:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/shabakaty/downloader/b91$a$a;->x:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ue1;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/shabakaty/downloader/b91$a$a;->y:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    iget-object v2, v0, Lcom/shabakaty/downloader/b91$a$a;->x:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    .line 4
    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/b91$a;->r:Lcom/shabakaty/downloader/ue1;

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_5

    .line 6
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_7

    const/4 p1, 0x0

    .line 7
    iput-object v2, v0, Lcom/shabakaty/downloader/b91$a$a;->x:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/b91$a$a;->y:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/b91$a$a;->v:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, p2

    :goto_3
    move-object p2, p1

    :cond_7
    if-nez v2, :cond_8

    goto :goto_5

    .line 8
    :cond_8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p2

    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 9
    iput-object v2, v0, Lcom/shabakaty/downloader/b91$a$a;->x:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/b91$a$a;->y:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/b91$a$a;->v:I

    invoke-interface {v2, p2, v0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    .line 10
    :cond_a
    :goto_5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
