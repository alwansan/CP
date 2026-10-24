.class public abstract Lcom/shabakaty/downloader/b02;
.super Ljava/lang/Object;
.source "ImmutableZoomState.java"

# interfaces
.implements Lcom/shabakaty/downloader/r95;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/r95;)Lcom/shabakaty/downloader/r95;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ih;

    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/s95;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/s95;->a:F

    .line 3
    check-cast p0, Lcom/shabakaty/downloader/s95;

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/s95;->b:F

    .line 5
    iget v3, p0, Lcom/shabakaty/downloader/s95;->c:F

    .line 6
    iget p0, p0, Lcom/shabakaty/downloader/s95;->d:F

    .line 7
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/shabakaty/downloader/ih;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public abstract b()F
.end method

.method public abstract c()F
.end method

.method public abstract d()F
.end method

.method public abstract e()F
.end method
