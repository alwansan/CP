.class public final Lcom/shabakaty/downloader/pz0$a$a;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadsFragment$onCreateCollectionClicked$$inlined$showCreateCollectionDialog$default$1$1"
    f = "DownloadsFragment.kt"
    l = {
        0x75
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/pz0$a;->onClick(Landroid/content/DialogInterface;I)V
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
.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:I

.field public final synthetic y:Lcom/shabakaty/downloader/pz0;

.field public final synthetic z:Lcom/shabakaty/downloader/lo3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pz0;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/pz0$a$a;->y:Lcom/shabakaty/downloader/pz0;

    iput-object p2, p0, Lcom/shabakaty/downloader/pz0$a$a;->z:Lcom/shabakaty/downloader/lo3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/pz0$a$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/pz0$a$a;->y:Lcom/shabakaty/downloader/pz0;

    iget-object v1, p0, Lcom/shabakaty/downloader/pz0$a$a;->z:Lcom/shabakaty/downloader/lo3;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/pz0$a$a;-><init>(Lcom/shabakaty/downloader/pz0;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pz0$a$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/pz0$a$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/pz0$a$a;->y:Lcom/shabakaty/downloader/pz0;

    iget-object v1, p0, Lcom/shabakaty/downloader/pz0$a$a;->z:Lcom/shabakaty/downloader/lo3;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/pz0$a$a;-><init>(Lcom/shabakaty/downloader/pz0;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    iget v1, p0, Lcom/shabakaty/downloader/pz0$a$a;->x:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pz0$a$a;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/gz0;

    iget-object v1, p0, Lcom/shabakaty/downloader/pz0$a$a;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/gz0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/pz0$a$a;->y:Lcom/shabakaty/downloader/pz0;

    iget-object v1, p0, Lcom/shabakaty/downloader/pz0$a$a;->z:Lcom/shabakaty/downloader/lo3;

    iget-object v1, v1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/gz0;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/gz0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/zz0;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/zz0;->f:Lcom/shabakaty/downloader/jw0;

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/pz0$a$a;->v:Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/pz0$a$a;->w:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/pz0$a$a;->x:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/jw0;->g(Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-int p1, v1

    .line 9
    iput p1, v0, Lcom/shabakaty/downloader/gz0;->r:I

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
