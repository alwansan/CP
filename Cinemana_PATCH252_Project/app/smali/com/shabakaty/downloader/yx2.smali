.class public abstract Lcom/shabakaty/downloader/yx2;
.super Lcom/shabakaty/downloader/cl2;
.source "NavigationViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N::",
        "Lcom/shabakaty/downloader/vj;",
        ">",
        "Lcom/shabakaty/downloader/cl2<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/al2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/cl2;-><init>(Lcom/shabakaty/downloader/al2;)V

    .line 2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yx2;->h:Ljava/util/Stack;

    return-void
.end method
