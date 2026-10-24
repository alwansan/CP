.class public final Lcom/shabakaty/downloader/ce2;
.super Lcom/shabakaty/downloader/af2;
.source "KotlinExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
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
.field public final synthetic r:Lcom/shabakaty/downloader/nq;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nq;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ce2;->r:Lcom/shabakaty/downloader/nq;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ce2;->r:Lcom/shabakaty/downloader/nq;

    invoke-interface {p1}, Lcom/shabakaty/downloader/nq;->cancel()V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
