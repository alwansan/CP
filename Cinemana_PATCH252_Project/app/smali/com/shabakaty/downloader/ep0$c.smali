.class public final Lcom/shabakaty/downloader/ep0$c;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ep0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/shabakaty/downloader/ep0$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Z

.field public final s:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wh1;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p1, p1, Lcom/shabakaty/downloader/wh1;->u:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$c;->r:Z

    .line 3
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/ep0;->g(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/downloader/ep0$c;->s:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ep0$c;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ep0$c;->f(Lcom/shabakaty/downloader/ep0$c;)I

    move-result p1

    return p1
.end method

.method public f(Lcom/shabakaty/downloader/ep0$c;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/l;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/ep0$c;->s:Z

    iget-boolean v2, p1, Lcom/shabakaty/downloader/ep0$c;->s:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/l;->d(ZZ)Lcom/google/common/collect/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/shabakaty/downloader/ep0$c;->r:Z

    iget-boolean p1, p1, Lcom/shabakaty/downloader/ep0$c;->r:Z

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/l;->d(ZZ)Lcom/google/common/collect/l;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/common/collect/l;->f()I

    move-result p1

    return p1
.end method
