.class public abstract Lcom/shabakaty/downloader/sj;
.super Ljava/lang/Object;
.source "BaseMenuWrapper.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/shabakaty/downloader/m64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/m64<",
            "Lcom/shabakaty/downloader/xh4;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/shabakaty/downloader/m64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/m64<",
            "Lcom/shabakaty/downloader/di4;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sj;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/xh4;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/xh4;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/sj;->b:Lcom/shabakaty/downloader/m64;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/m64;

    invoke-direct {v1}, Lcom/shabakaty/downloader/m64;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/sj;->b:Lcom/shabakaty/downloader/m64;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sj;->b:Lcom/shabakaty/downloader/m64;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/m64;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/vr2;

    iget-object v1, p0, Lcom/shabakaty/downloader/sj;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/shabakaty/downloader/vr2;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/xh4;)V

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/sj;->b:Lcom/shabakaty/downloader/m64;

    invoke-virtual {v1, v0, p1}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public final d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/di4;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/di4;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/sj;->c:Lcom/shabakaty/downloader/m64;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/m64;

    invoke-direct {v0}, Lcom/shabakaty/downloader/m64;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sj;->c:Lcom/shabakaty/downloader/m64;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sj;->c:Lcom/shabakaty/downloader/m64;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/ye4;

    iget-object v1, p0, Lcom/shabakaty/downloader/sj;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/ye4;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/di4;)V

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/sj;->c:Lcom/shabakaty/downloader/m64;

    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method
