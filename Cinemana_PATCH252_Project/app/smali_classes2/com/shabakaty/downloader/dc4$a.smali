.class public final Lcom/shabakaty/downloader/dc4$a;
.super Lcom/shabakaty/downloader/ui4;
.source "SharingStarted.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1"
    f = "SharingStarted.kt"
    l = {
        0xb3,
        0xb5,
        0xb7,
        0xb8,
        0xba
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/dc4;->a(Lcom/shabakaty/downloader/gc4;)Lcom/shabakaty/downloader/te1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/jn1<",
        "Lcom/shabakaty/downloader/ue1<",
        "-",
        "Lcom/shabakaty/downloader/i54;",
        ">;",
        "Ljava/lang/Integer;",
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

.field public synthetic w:I

.field public x:I

.field public final synthetic y:Lcom/shabakaty/downloader/dc4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dc4;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/dc4$a;->y:Lcom/shabakaty/downloader/dc4;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dc4$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/dc4$a;->y:Lcom/shabakaty/downloader/dc4;

    invoke-direct {v0, v1, p3}, Lcom/shabakaty/downloader/dc4$a;-><init>(Lcom/shabakaty/downloader/dc4;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/dc4$a;->v:Ljava/lang/Object;

    iput p2, v0, Lcom/shabakaty/downloader/dc4$a;->w:I

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dc4$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/dc4$a;->x:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/dc4$a;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ue1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/dc4$a;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ue1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/dc4$a;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ue1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/dc4$a;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    iget v1, p0, Lcom/shabakaty/downloader/dc4$a;->w:I

    if-lez v1, :cond_6

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/i54;->r:Lcom/shabakaty/downloader/i54;

    iput v6, p0, Lcom/shabakaty/downloader/dc4$a;->x:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 5
    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/dc4$a;->y:Lcom/shabakaty/downloader/dc4;

    .line 6
    iget-wide v6, v1, Lcom/shabakaty/downloader/dc4;->b:J

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/dc4$a;->v:Ljava/lang/Object;

    iput v5, p0, Lcom/shabakaty/downloader/dc4$a;->x:I

    invoke-static {v6, v7, p0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v1, p1

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/dc4$a;->y:Lcom/shabakaty/downloader/dc4;

    .line 9
    iget-wide v5, p1, Lcom/shabakaty/downloader/dc4;->c:J

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_9

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/i54;->s:Lcom/shabakaty/downloader/i54;

    iput-object v1, p0, Lcom/shabakaty/downloader/dc4$a;->v:Ljava/lang/Object;

    iput v4, p0, Lcom/shabakaty/downloader/dc4$a;->x:I

    invoke-interface {v1, p1, p0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 11
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/downloader/dc4$a;->y:Lcom/shabakaty/downloader/dc4;

    .line 12
    iget-wide v4, p1, Lcom/shabakaty/downloader/dc4;->c:J

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/dc4$a;->v:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/dc4$a;->x:I

    invoke-static {v4, v5, p0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 14
    :cond_9
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/i54;->t:Lcom/shabakaty/downloader/i54;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/shabakaty/downloader/dc4$a;->v:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/dc4$a;->x:I

    invoke-interface {v1, p1, p0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 15
    :cond_a
    :goto_4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
