.class public final Lcom/shabakaty/downloader/vu1;
.super Ljava/lang/Object;
.source "HomeUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/g25;

.field public final b:Lcom/shabakaty/downloader/s25;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/g25;Lcom/shabakaty/downloader/s25;Lcom/shabakaty/usermanagement/UserManagement;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoModelDao"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoStatusDao"

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "userManagement"

    invoke-static {p4, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/vu1;->a:Lcom/shabakaty/downloader/g25;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/vu1;->b:Lcom/shabakaty/downloader/s25;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/vu1$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/vu1$a;

    iget v1, v0, Lcom/shabakaty/downloader/vu1$a;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/vu1$a;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/vu1$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/vu1$a;-><init>(Lcom/shabakaty/downloader/vu1;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/vu1$a;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/vu1$a;->x:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/vu1$a;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/vu1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/vu1;->b:Lcom/shabakaty/downloader/s25;

    iput-object p0, v0, Lcom/shabakaty/downloader/vu1$a;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/vu1$a;->x:I

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    iget-object p1, v2, Lcom/shabakaty/downloader/vu1;->a:Lcom/shabakaty/downloader/g25;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/shabakaty/downloader/vu1$a;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/vu1$a;->x:I

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/g25;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
