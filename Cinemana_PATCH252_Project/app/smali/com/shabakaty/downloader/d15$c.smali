.class public final Lcom/shabakaty/downloader/d15$c;
.super Ljava/lang/Object;
.source "LiveDataExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r53;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/d15;->l2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/r53<",
        "Lcom/shabakaty/downloader/tj<",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Lcom/shabakaty/downloader/mj;

.field public final synthetic c:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final synthetic d:Lcom/shabakaty/downloader/d15;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/shabakaty/downloader/mj;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/d15;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/d15$c;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/shabakaty/downloader/d15$c;->b:Lcom/shabakaty/downloader/mj;

    iput-object p3, p0, Lcom/shabakaty/downloader/d15$c;->c:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iput-object p4, p0, Lcom/shabakaty/downloader/d15$c;->d:Lcom/shabakaty/downloader/d15;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tj;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 3
    :goto_0
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/d15$c;->c:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 7
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/d15$c;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/d15$c;->d:Lcom/shabakaty/downloader/d15;

    sget-boolean v0, Lcom/shabakaty/downloader/d15;->A:Z

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/d15;->o2()V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/d15$c;->b:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    :cond_2
    return-void
.end method
