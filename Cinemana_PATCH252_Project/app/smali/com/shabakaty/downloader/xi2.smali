.class public final Lcom/shabakaty/downloader/xi2;
.super Ljava/lang/Object;
.source "LiveDataExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r53;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/r53<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/r53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/r53<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r53;Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/r53<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/xi2;->a:Lcom/shabakaty/downloader/r53;

    iput-object p2, p0, Lcom/shabakaty/downloader/xi2;->b:Landroidx/lifecycle/LiveData;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi2;->a:Lcom/shabakaty/downloader/r53;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/r53;->onChanged(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/xi2;->b:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    return-void
.end method
