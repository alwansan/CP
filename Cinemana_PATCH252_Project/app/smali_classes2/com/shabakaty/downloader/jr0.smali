.class public final Lcom/shabakaty/downloader/jr0;
.super Lcom/shabakaty/downloader/nh0$b;
.source "DescriptorUtils.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/nh0$b<",
        "Lcom/shabakaty/downloader/tq;",
        "Lcom/shabakaty/downloader/tq;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/lo3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/lo3<",
            "Lcom/shabakaty/downloader/tq;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/tq;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/lo3<",
            "Lcom/shabakaty/downloader/tq;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/tq;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/jr0;->a:Lcom/shabakaty/downloader/lo3;

    iput-object p2, p0, Lcom/shabakaty/downloader/jr0;->b:Lcom/shabakaty/downloader/tm1;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/nh0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jr0;->a:Lcom/shabakaty/downloader/lo3;

    iget-object v0, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tq;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tq;

    const-string v0, "current"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/jr0;->a:Lcom/shabakaty/downloader/lo3;

    iget-object v0, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/jr0;->b:Lcom/shabakaty/downloader/tm1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/jr0;->a:Lcom/shabakaty/downloader/lo3;

    iput-object p1, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tq;

    const-string v0, "current"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/jr0;->a:Lcom/shabakaty/downloader/lo3;

    iget-object p1, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
