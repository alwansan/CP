.class public final Lcom/shabakaty/downloader/wy$a$a;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wy$a;->t(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic r:Lcom/shabakaty/downloader/wy$a;

.field public final synthetic s:Lcom/shabakaty/downloader/se0;

.field public final synthetic t:Lcom/shabakaty/downloader/lo3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wy$a;Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/lo3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wy$a$a;->r:Lcom/shabakaty/downloader/wy$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/wy$a$a;->s:Lcom/shabakaty/downloader/se0;

    iput-object p3, p0, Lcom/shabakaty/downloader/wy$a$a;->t:Lcom/shabakaty/downloader/lo3;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/shabakaty/downloader/wy$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/wy$a$a$a;

    iget v1, v0, Lcom/shabakaty/downloader/wy$a$a$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/wy$a$a$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/wy$a$a$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/wy$a$a$a;-><init>(Lcom/shabakaty/downloader/wy$a$a;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/wy$a$a$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/wy$a$a$a;->v:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/wy$a$a$a;->z:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/e92;

    iget-object p1, v0, Lcom/shabakaty/downloader/wy$a$a$a;->y:Ljava/lang/Object;

    iget-object v0, v0, Lcom/shabakaty/downloader/wy$a$a$a;->x:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/wy$a$a;

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
    iget-object p2, p0, Lcom/shabakaty/downloader/wy$a$a;->t:Lcom/shabakaty/downloader/lo3;

    iget-object p2, p2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/e92;

    if-eqz p2, :cond_3

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/oz;

    invoke-direct {v2}, Lcom/shabakaty/downloader/oz;-><init>()V

    invoke-interface {p2, v2}, Lcom/shabakaty/downloader/e92;->b(Ljava/util/concurrent/CancellationException;)V

    .line 6
    iput-object p0, v0, Lcom/shabakaty/downloader/wy$a$a$a;->x:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/wy$a$a$a;->y:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/wy$a$a$a;->z:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/wy$a$a$a;->v:I

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/e92;->d(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 7
    :goto_1
    iget-object p2, v0, Lcom/shabakaty/downloader/wy$a$a;->t:Lcom/shabakaty/downloader/lo3;

    iget-object v1, v0, Lcom/shabakaty/downloader/wy$a$a;->s:Lcom/shabakaty/downloader/se0;

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-instance v4, Lcom/shabakaty/downloader/wy$a$a$b;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5, v0}, Lcom/shabakaty/downloader/wy$a$a$b;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/wy$a$a;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p1

    iput-object p1, p2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
