.class public Lcom/shabakaty/downloader/nf3;
.super Ljava/lang/Object;
.source "PreviewStreamStateObserver.java"

# interfaces
.implements Lcom/shabakaty/downloader/ho1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ho1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/shabakaty/downloader/st;

.field public final synthetic c:Landroidx/camera/view/a;


# direct methods
.method public constructor <init>(Landroidx/camera/view/a;Ljava/util/List;Lcom/shabakaty/downloader/st;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nf3;->c:Landroidx/camera/view/a;

    iput-object p2, p0, Lcom/shabakaty/downloader/nf3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/shabakaty/downloader/nf3;->b:Lcom/shabakaty/downloader/st;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/nf3;->c:Landroidx/camera/view/a;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/camera/view/a;->e:Lcom/shabakaty/downloader/pi2;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/nf3;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/nf3;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ps;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/nf3;->b:Lcom/shabakaty/downloader/st;

    check-cast v1, Lcom/shabakaty/downloader/tt;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/tt;->a(Lcom/shabakaty/downloader/ps;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/nf3;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/nf3;->c:Landroidx/camera/view/a;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/camera/view/a;->e:Lcom/shabakaty/downloader/pi2;

    return-void
.end method
