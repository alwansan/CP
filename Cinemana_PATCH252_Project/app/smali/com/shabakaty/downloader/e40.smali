.class public final Lcom/shabakaty/downloader/e40;
.super Ljava/lang/Object;
.source "ViewModel.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/shabakaty/downloader/se0;


# instance fields
.field public final r:Lcom/shabakaty/downloader/me0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/e40;->r:Lcom/shabakaty/downloader/me0;

    return-void
.end method


# virtual methods
.method public B()Lcom/shabakaty/downloader/me0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e40;->r:Lcom/shabakaty/downloader/me0;

    return-object v0
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e40;->r:Lcom/shabakaty/downloader/me0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v2, v1, v2}, Lcom/shabakaty/downloader/bp;->c(Lcom/shabakaty/downloader/me0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
