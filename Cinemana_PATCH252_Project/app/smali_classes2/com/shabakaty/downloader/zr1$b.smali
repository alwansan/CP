.class public final Lcom/shabakaty/downloader/zr1$b;
.super Lcom/shabakaty/downloader/af2;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/zr1;->f(JLcom/shabakaty/downloader/fv;)V
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
.field public final synthetic r:Lcom/shabakaty/downloader/zr1;

.field public final synthetic s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zr1;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/zr1$b;->r:Lcom/shabakaty/downloader/zr1;

    iput-object p2, p0, Lcom/shabakaty/downloader/zr1$b;->s:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/zr1$b;->r:Lcom/shabakaty/downloader/zr1;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/zr1;->t:Landroid/os/Handler;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/zr1$b;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
