.class public final Lcom/shabakaty/downloader/cc4$a$a;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/cc4$a;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ue1<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ue1;

.field public final synthetic s:Lcom/shabakaty/downloader/ho3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ho3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/cc4$a$a;->r:Lcom/shabakaty/downloader/ue1;

    iput-object p2, p0, Lcom/shabakaty/downloader/cc4$a$a;->s:Lcom/shabakaty/downloader/ho3;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/shabakaty/downloader/cc4$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/cc4$a$a$a;

    iget v1, v0, Lcom/shabakaty/downloader/cc4$a$a$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/cc4$a$a$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/cc4$a$a$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/cc4$a$a$a;-><init>(Lcom/shabakaty/downloader/cc4$a$a;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/cc4$a$a$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/cc4$a$a$a;->v:I

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
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/cc4$a$a;->s:Lcom/shabakaty/downloader/ho3;

    iget-boolean p2, p1, Lcom/shabakaty/downloader/ho3;->r:Z

    if-nez p2, :cond_3

    .line 6
    iput-boolean v3, p1, Lcom/shabakaty/downloader/ho3;->r:Z

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/cc4$a$a;->r:Lcom/shabakaty/downloader/ue1;

    sget-object p2, Lcom/shabakaty/downloader/i54;->r:Lcom/shabakaty/downloader/i54;

    iput v3, v0, Lcom/shabakaty/downloader/cc4$a$a$a;->v:I

    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
