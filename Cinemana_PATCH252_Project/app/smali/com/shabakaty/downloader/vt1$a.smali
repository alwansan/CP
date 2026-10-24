.class public final Lcom/shabakaty/downloader/vt1$a;
.super Lcom/shabakaty/downloader/af2;
.source "HomeFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/vt1;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/vt1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/vt1$a;->r:Lcom/shabakaty/downloader/vt1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/vt1$a;->r:Lcom/shabakaty/downloader/vt1;

    sget v0, Lcom/shabakaty/downloader/vt1;->z:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/rd0;

    check-cast v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 7
    iget-object v0, v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->s:Lcom/shabakaty/downloader/me0;

    .line 8
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/rd0;-><init>(Lcom/shabakaty/downloader/me0;)V

    const/4 v3, 0x0

    .line 9
    new-instance v5, Lcom/shabakaty/downloader/ut1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Lcom/shabakaty/downloader/ut1;-><init>(Lcom/shabakaty/downloader/vt1;Lcom/shabakaty/downloader/ud0;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
