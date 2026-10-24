.class public final Lcom/shabakaty/downloader/ry$a;
.super Lcom/shabakaty/downloader/ui4;
.source "ChannelFlow.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2"
    f = "ChannelFlow.kt"
    l = {
        0x87
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ry;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic v:Ljava/lang/Object;

.field public w:I

.field public final synthetic x:Lcom/shabakaty/downloader/ry;

.field public final synthetic y:Lcom/shabakaty/downloader/ue1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ry;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ry$a;->x:Lcom/shabakaty/downloader/ry;

    iput-object p2, p0, Lcom/shabakaty/downloader/ry$a;->y:Lcom/shabakaty/downloader/ue1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ry$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/ry$a;->x:Lcom/shabakaty/downloader/ry;

    iget-object v2, p0, Lcom/shabakaty/downloader/ry$a;->y:Lcom/shabakaty/downloader/ue1;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/ry$a;-><init>(Lcom/shabakaty/downloader/ry;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ry$a;->v:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ry$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 3
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

    new-instance v0, Lcom/shabakaty/downloader/ry$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/ry$a;->x:Lcom/shabakaty/downloader/ry;

    iget-object v2, p0, Lcom/shabakaty/downloader/ry$a;->y:Lcom/shabakaty/downloader/ue1;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/ry$a;-><init>(Lcom/shabakaty/downloader/ry;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ry$a;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/ry$a;->w:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

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

    iget-object p1, p0, Lcom/shabakaty/downloader/ry$a;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/se0;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ry$a;->y:Lcom/shabakaty/downloader/ue1;

    iget-object v3, p0, Lcom/shabakaty/downloader/ry$a;->x:Lcom/shabakaty/downloader/ry;

    .line 5
    iget-object v4, v3, Lcom/shabakaty/downloader/ry;->r:Lcom/shabakaty/downloader/me0;

    .line 6
    iget v5, v3, Lcom/shabakaty/downloader/ry;->s:I

    const/4 v6, -0x3

    if-ne v5, v6, :cond_2

    const/4 v5, -0x2

    .line 7
    :cond_2
    iget-object v6, v3, Lcom/shabakaty/downloader/ry;->t:Lcom/shabakaty/downloader/co;

    const/4 v7, 0x3

    .line 8
    new-instance v8, Lcom/shabakaty/downloader/sy;

    const/4 v9, 0x0

    invoke-direct {v8, v3, v9}, Lcom/shabakaty/downloader/sy;-><init>(Lcom/shabakaty/downloader/ry;Lcom/shabakaty/downloader/ud0;)V

    const/4 v3, 0x4

    .line 9
    invoke-static {v5, v6, v9, v3}, Lcom/shabakaty/downloader/he0;->a(ILcom/shabakaty/downloader/co;Lcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/py;

    move-result-object v3

    .line 10
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/ne0;->a(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    .line 11
    new-instance v4, Lcom/shabakaty/downloader/gg3;

    invoke-direct {v4, p1, v3}, Lcom/shabakaty/downloader/gg3;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/py;)V

    .line 12
    invoke-virtual {v4, v7, v4, v8}, Lcom/shabakaty/downloader/u;->r0(ILjava/lang/Object;Lcom/shabakaty/downloader/hn1;)V

    .line 13
    iput v2, p0, Lcom/shabakaty/downloader/ry$a;->w:I

    .line 14
    invoke-static {v1, v4, v2, p0}, Lcom/shabakaty/downloader/xe1;->a(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/yn3;ZLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-ne p1, v0, :cond_4

    return-object v0

    .line 15
    :cond_4
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
