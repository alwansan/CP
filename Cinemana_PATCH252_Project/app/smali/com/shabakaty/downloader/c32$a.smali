.class public final Lcom/shabakaty/downloader/c32$a;
.super Lcom/shabakaty/downloader/af2;
.source "InternalSeasonFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/c32;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/d41;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/c32;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c32;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/c32$a;->r:Lcom/shabakaty/downloader/c32;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/d41;

    iget-object v1, p0, Lcom/shabakaty/downloader/c32$a;->r:Lcom/shabakaty/downloader/c32;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/u15;

    .line 2
    iget-object v2, v2, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/d41;-><init>(Lcom/shabakaty/downloader/c41;Ljava/lang/String;)V

    return-object v0
.end method
