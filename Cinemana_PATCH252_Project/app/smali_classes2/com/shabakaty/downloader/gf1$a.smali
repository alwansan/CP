.class public final Lcom/shabakaty/downloader/gf1$a;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/gf1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ue1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ue1;

.field public final synthetic s:Lcom/shabakaty/downloader/ho3;

.field public final synthetic t:Lcom/shabakaty/downloader/gf1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ho3;Lcom/shabakaty/downloader/gf1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/gf1$a;->r:Lcom/shabakaty/downloader/ue1;

    iput-object p2, p0, Lcom/shabakaty/downloader/gf1$a;->s:Lcom/shabakaty/downloader/ho3;

    iput-object p3, p0, Lcom/shabakaty/downloader/gf1$a;->t:Lcom/shabakaty/downloader/gf1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/shabakaty/downloader/gf1$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/gf1$a$a;

    iget v1, v0, Lcom/shabakaty/downloader/gf1$a$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/gf1$a$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/gf1$a$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/gf1$a$a;-><init>(Lcom/shabakaty/downloader/gf1$a;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/gf1$a$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/gf1$a$a;->v:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/shabakaty/downloader/gf1$a$a;->x:Ljava/lang/Object;

    iget-object v2, v0, Lcom/shabakaty/downloader/gf1$a$a;->w:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/gf1$a;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/gf1$a;->s:Lcom/shabakaty/downloader/ho3;

    iget-boolean p2, p2, Lcom/shabakaty/downloader/ho3;->r:Z

    if-eqz p2, :cond_5

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/gf1$a;->r:Lcom/shabakaty/downloader/ue1;

    iput v5, v0, Lcom/shabakaty/downloader/gf1$a$a;->v:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 6
    :cond_5
    iget-object p2, p0, Lcom/shabakaty/downloader/gf1$a;->t:Lcom/shabakaty/downloader/gf1;

    iget-object p2, p2, Lcom/shabakaty/downloader/gf1;->s:Lcom/shabakaty/downloader/hn1;

    iput-object p0, v0, Lcom/shabakaty/downloader/gf1$a$a;->w:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/gf1$a$a;->x:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/gf1$a$a;->v:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_7

    .line 7
    iget-object p2, v2, Lcom/shabakaty/downloader/gf1$a;->s:Lcom/shabakaty/downloader/ho3;

    iput-boolean v5, p2, Lcom/shabakaty/downloader/ho3;->r:Z

    .line 8
    iget-object p2, v2, Lcom/shabakaty/downloader/gf1$a;->r:Lcom/shabakaty/downloader/ue1;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/shabakaty/downloader/gf1$a$a;->w:Ljava/lang/Object;

    iput-object v2, v0, Lcom/shabakaty/downloader/gf1$a$a;->x:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/gf1$a$a;->v:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 9
    :cond_7
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
