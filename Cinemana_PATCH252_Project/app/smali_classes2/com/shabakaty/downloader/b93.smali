.class public final Lcom/shabakaty/downloader/b93;
.super Ljava/lang/Object;
.source "OverridingUtil.java"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/tq;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/q20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/b93;->r:Lcom/shabakaty/downloader/q20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tq;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/lr0;->e(Lcom/shabakaty/downloader/mr0;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/b93;->r:Lcom/shabakaty/downloader/q20;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/lr0;->f(Lcom/shabakaty/downloader/wm0;Lcom/shabakaty/downloader/qm0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
