.class public final Lcom/shabakaty/downloader/ru0$a;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ru0;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ue1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ru0;

.field public final synthetic s:Lcom/shabakaty/downloader/lo3;

.field public final synthetic t:Lcom/shabakaty/downloader/ue1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ru0;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/ue1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ru0$a;->r:Lcom/shabakaty/downloader/ru0;

    iput-object p2, p0, Lcom/shabakaty/downloader/ru0$a;->s:Lcom/shabakaty/downloader/lo3;

    iput-object p3, p0, Lcom/shabakaty/downloader/ru0$a;->t:Lcom/shabakaty/downloader/ue1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/shabakaty/downloader/ru0$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ru0$a$a;

    iget v1, v0, Lcom/shabakaty/downloader/ru0$a$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ru0$a$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ru0$a$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ru0$a$a;-><init>(Lcom/shabakaty/downloader/ru0$a;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/ru0$a$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ru0$a$a;->v:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/ru0$a;->r:Lcom/shabakaty/downloader/ru0;

    iget-object p2, p2, Lcom/shabakaty/downloader/ru0;->s:Lcom/shabakaty/downloader/tm1;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/ru0$a;->s:Lcom/shabakaty/downloader/lo3;

    iget-object v2, v2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    sget-object v4, Lcom/shabakaty/downloader/q13;->a:Lcom/shabakaty/downloader/j61;

    if-eq v2, v4, :cond_3

    iget-object v4, p0, Lcom/shabakaty/downloader/ru0$a;->r:Lcom/shabakaty/downloader/ru0;

    iget-object v4, v4, Lcom/shabakaty/downloader/ru0;->t:Lcom/shabakaty/downloader/hn1;

    invoke-interface {v4, v2, p2}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/ru0$a;->s:Lcom/shabakaty/downloader/lo3;

    iput-object p2, v2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/ru0$a;->t:Lcom/shabakaty/downloader/ue1;

    iput v3, v0, Lcom/shabakaty/downloader/ru0$a$a;->v:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 8
    :cond_4
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
