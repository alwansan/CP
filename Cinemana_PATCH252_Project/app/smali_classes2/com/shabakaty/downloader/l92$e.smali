.class public final Lcom/shabakaty/downloader/l92$e;
.super Lcom/shabakaty/downloader/ct3;
.source "JobSupport.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.JobSupport$children$1"
    f = "JobSupport.kt"
    l = {
        0x3b8,
        0x3ba
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/l92;->p()Lcom/shabakaty/downloader/l04;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ct3;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/n04<",
        "-",
        "Lcom/shabakaty/downloader/tz;",
        ">;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public w:I

.field public final synthetic x:Lcom/shabakaty/downloader/l92;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l92;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/l92$e;->x:Lcom/shabakaty/downloader/l92;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ct3;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/l92$e;

    iget-object v1, p0, Lcom/shabakaty/downloader/l92$e;->x:Lcom/shabakaty/downloader/l92;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/l92$e;-><init>(Lcom/shabakaty/downloader/l92;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/l92$e;->t:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/l92$e;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/downloader/l92$e;

    iget-object v1, p0, Lcom/shabakaty/downloader/l92$e;->x:Lcom/shabakaty/downloader/l92;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/l92$e;-><init>(Lcom/shabakaty/downloader/l92;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/l92$e;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/l92$e;->w:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/l92$e;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ck2;

    iget-object v4, p0, Lcom/shabakaty/downloader/l92$e;->u:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/ak2;

    iget-object v5, p0, Lcom/shabakaty/downloader/l92$e;->t:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/n04;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/l92$e;->t:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/n04;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/l92$e;->x:Lcom/shabakaty/downloader/l92;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v4, v1, Lcom/shabakaty/downloader/rz;

    if-eqz v4, :cond_3

    check-cast v1, Lcom/shabakaty/downloader/rz;

    iget-object v1, v1, Lcom/shabakaty/downloader/rz;->v:Lcom/shabakaty/downloader/tz;

    iput v3, p0, Lcom/shabakaty/downloader/l92$e;->w:I

    invoke-virtual {p1, v1, p0}, Lcom/shabakaty/downloader/n04;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 6
    :cond_3
    instance-of v4, v1, Lcom/shabakaty/downloader/g02;

    if-eqz v4, :cond_5

    check-cast v1, Lcom/shabakaty/downloader/g02;

    invoke-interface {v1}, Lcom/shabakaty/downloader/g02;->e()Lcom/shabakaty/downloader/tz2;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ck2;->l()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/ck2;

    move-object v5, p1

    move-object p1, p0

    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    .line 8
    :goto_0
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_5

    .line 9
    instance-of v6, v1, Lcom/shabakaty/downloader/rz;

    if-eqz v6, :cond_4

    move-object v6, v1

    check-cast v6, Lcom/shabakaty/downloader/rz;

    .line 10
    iget-object v6, v6, Lcom/shabakaty/downloader/rz;->v:Lcom/shabakaty/downloader/tz;

    iput-object v5, p1, Lcom/shabakaty/downloader/l92$e;->t:Ljava/lang/Object;

    iput-object v4, p1, Lcom/shabakaty/downloader/l92$e;->u:Ljava/lang/Object;

    iput-object v1, p1, Lcom/shabakaty/downloader/l92$e;->v:Ljava/lang/Object;

    iput v2, p1, Lcom/shabakaty/downloader/l92$e;->w:I

    invoke-virtual {v5, v6, p1}, Lcom/shabakaty/downloader/n04;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    return-object v0

    .line 11
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ck2;->m()Lcom/shabakaty/downloader/ck2;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_5
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
