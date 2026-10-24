.class public Lcom/shabakaty/downloader/w4;
.super Ljava/lang/Object;
.source "AeFpsRange.java"


# instance fields
.field public final a:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/al3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/shabakaty/downloader/x4;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/al3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/zk3;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/x4;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/w4;->a:Landroid/util/Range;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/x4;->a:Landroid/util/Range;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/w4;->a:Landroid/util/Range;

    :goto_0
    return-void
.end method
