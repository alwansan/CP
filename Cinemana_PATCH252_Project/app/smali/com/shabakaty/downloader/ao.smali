.class public abstract Lcom/shabakaty/downloader/ao;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 1

    const/high16 v0, 0x10000000

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ao;->y(I)Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ao;->y(I)Z

    move-result v0

    return v0
.end method

.method public final F()Z
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ao;->y(I)Z

    move-result v0

    return v0
.end method

.method public final G()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ao;->y(I)Z

    move-result v0

    return v0
.end method

.method public final u(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ao;->r:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/ao;->r:I

    return-void
.end method

.method public final y(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ao;->r:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
