.class public final Lcom/shabakaty/downloader/u15$b;
.super Lcom/shabakaty/downloader/af2;
.source "VideoInfoViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/u15;-><init>(Lcom/shabakaty/downloader/q15;Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/jw0;Lcom/shabakaty/downloader/p5;Ljava/lang/ref/WeakReference;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/al2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/lx4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/u15;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u15;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/u15$b;->r:Lcom/shabakaty/downloader/u15;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lx4;

    iget-object v1, p0, Lcom/shabakaty/downloader/u15$b;->r:Lcom/shabakaty/downloader/u15;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/u15;->i:Lcom/shabakaty/downloader/ox4;

    .line 4
    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lx4;-><init>(Lcom/shabakaty/downloader/mj;Lcom/shabakaty/downloader/ox4;)V

    return-object v0
.end method
