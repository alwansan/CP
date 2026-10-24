.class public final Lcom/shabakaty/downloader/yt0;
.super Ljava/lang/Object;
.source "DispatchQueue.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zt0;

.field public final synthetic s:Lcom/shabakaty/downloader/me0;

.field public final synthetic t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zt0;Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/yt0;->r:Lcom/shabakaty/downloader/zt0;

    iput-object p2, p0, Lcom/shabakaty/downloader/yt0;->s:Lcom/shabakaty/downloader/me0;

    iput-object p3, p0, Lcom/shabakaty/downloader/yt0;->t:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yt0;->r:Lcom/shabakaty/downloader/zt0;

    iget-object v1, p0, Lcom/shabakaty/downloader/yt0;->t:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zt0;->c(Ljava/lang/Runnable;)V

    return-void
.end method
