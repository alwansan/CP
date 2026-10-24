.class public final Lcom/shabakaty/downloader/i15;
.super Ljava/lang/Object;
.source "VideoInfoFragment.kt"


# instance fields
.field public a:Lcom/shabakaty/downloader/f4;

.field public b:Lcom/shabakaty/downloader/pq3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j15;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/i15$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/i15$a;-><init>(Lcom/shabakaty/downloader/j15;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/i15;->a:Lcom/shabakaty/downloader/f4;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/i15$b;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/i15$b;-><init>(Lcom/shabakaty/downloader/j15;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/i15;->b:Lcom/shabakaty/downloader/pq3;

    return-void
.end method
