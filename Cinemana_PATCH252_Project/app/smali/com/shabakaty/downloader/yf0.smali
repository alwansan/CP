.class public Lcom/shabakaty/downloader/yf0;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/downloader/uk4<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/x24;

.field public final synthetic s:Lcom/shabakaty/downloader/zf0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zf0;Lcom/shabakaty/downloader/x24;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yf0;->s:Lcom/shabakaty/downloader/zf0;

    iput-object p2, p0, Lcom/shabakaty/downloader/yf0;->r:Lcom/shabakaty/downloader/x24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yf0;->s:Lcom/shabakaty/downloader/zf0;

    iget-object v1, p0, Lcom/shabakaty/downloader/yf0;->r:Lcom/shabakaty/downloader/x24;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/zf0;->a(Lcom/shabakaty/downloader/zf0;Lcom/shabakaty/downloader/x24;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    return-object v0
.end method
