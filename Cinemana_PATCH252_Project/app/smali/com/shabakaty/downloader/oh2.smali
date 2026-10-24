.class public final Lcom/shabakaty/downloader/oh2;
.super Lcom/shabakaty/downloader/af2;
.source "LifecycleFrameLayout.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/n35;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ph2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ph2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/oh2;->r:Lcom/shabakaty/downloader/ph2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/n35;

    iget-object v1, p0, Lcom/shabakaty/downloader/oh2;->r:Lcom/shabakaty/downloader/ph2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/n35;-><init>(Lcom/shabakaty/downloader/rh2;)V

    return-object v0
.end method
