.class public final Lcom/shabakaty/downloader/a91$a;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/a91;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ue1<",
        "Lcom/shabakaty/downloader/pw0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ue1;

.field public final synthetic s:Lcom/shabakaty/downloader/a91;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/a91;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/a91$a;->r:Lcom/shabakaty/downloader/ue1;

    iput-object p2, p0, Lcom/shabakaty/downloader/a91$a;->s:Lcom/shabakaty/downloader/a91;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/shabakaty/downloader/a91$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/a91$a$a;

    iget v1, v0, Lcom/shabakaty/downloader/a91$a$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/a91$a$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/a91$a$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/a91$a$a;-><init>(Lcom/shabakaty/downloader/a91$a;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/a91$a$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    iget v2, v0, Lcom/shabakaty/downloader/a91$a$a;->v:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    .line 1
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
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/a91$a;->r:Lcom/shabakaty/downloader/ue1;

    .line 5
    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/pw0;

    if-nez v2, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    .line 6
    :cond_3
    iget-object v4, v2, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 7
    :goto_1
    iget-object v5, p0, Lcom/shabakaty/downloader/a91$a;->s:Lcom/shabakaty/downloader/a91;

    iget-object v5, v5, Lcom/shabakaty/downloader/a91;->s:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_7

    iput v3, v0, Lcom/shabakaty/downloader/a91$a$a;->v:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    goto :goto_5

    .line 8
    :cond_7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_5
    return-object p1
.end method
