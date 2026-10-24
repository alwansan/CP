.class public Lcom/shabakaty/downloader/u01$a;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"

# interfaces
.implements Lcom/shabakaty/downloader/u01;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/u01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/t01;->c(Lcom/shabakaty/downloader/u01;)V

    return-void
.end method

.method public b(Landroid/os/Looper;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/p01;
    .locals 1

    .line 1
    iget-object p1, p3, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/b51;

    new-instance p2, Lcom/shabakaty/downloader/p01$a;

    new-instance p3, Lcom/shabakaty/downloader/nw4;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/shabakaty/downloader/nw4;-><init>(I)V

    const/16 v0, 0x1771

    invoke-direct {p2, p3, v0}, Lcom/shabakaty/downloader/p01$a;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/b51;-><init>(Lcom/shabakaty/downloader/p01$a;)V

    return-object p1
.end method

.method public synthetic c(Landroid/os/Looper;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/u01$b;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/t01;->a(Lcom/shabakaty/downloader/u01;Landroid/os/Looper;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/u01$b;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/wh1;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wh1;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/ow4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    if-eqz p1, :cond_0

    const-class p1, Lcom/shabakaty/downloader/ow4;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public synthetic g()V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/t01;->b(Lcom/shabakaty/downloader/u01;)V

    return-void
.end method
