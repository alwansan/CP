.class public final Lcom/shabakaty/downloader/jf1;
.super Ljava/lang/Object;
.source "Limit.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ue1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/hn1;

.field public final synthetic s:Lcom/shabakaty/downloader/lo3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/lo3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jf1;->r:Lcom/shabakaty/downloader/hn1;

    iput-object p2, p0, Lcom/shabakaty/downloader/jf1;->s:Lcom/shabakaty/downloader/lo3;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/shabakaty/downloader/jf1$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/jf1$a;

    iget v1, v0, Lcom/shabakaty/downloader/jf1$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/jf1$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/jf1$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/jf1$a;-><init>(Lcom/shabakaty/downloader/jf1;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/jf1$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/jf1$a;->v:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/jf1$a;->y:Ljava/lang/Object;

    iget-object v0, v0, Lcom/shabakaty/downloader/jf1$a;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/jf1;

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
    iget-object p2, p0, Lcom/shabakaty/downloader/jf1;->r:Lcom/shabakaty/downloader/hn1;

    iput-object p0, v0, Lcom/shabakaty/downloader/jf1$a;->w:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/jf1$a;->y:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/jf1$a;->v:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5
    iget-object p2, v0, Lcom/shabakaty/downloader/jf1;->s:Lcom/shabakaty/downloader/lo3;

    iput-object p1, p2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    .line 9
    :cond_5
    new-instance p1, Lcom/shabakaty/downloader/e;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/e;-><init>(Lcom/shabakaty/downloader/ue1;)V

    throw p1
.end method
