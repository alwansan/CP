.class public final Lcom/shabakaty/downloader/l74;
.super Lcom/shabakaty/downloader/f74;
.source "SingleDelayWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/l74$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/f74<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/h84;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/h84<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/l53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l53<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/l53;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/h84<",
            "TT;>;",
            "Lcom/shabakaty/downloader/l53<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/l74;->a:Lcom/shabakaty/downloader/h84;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/l74;->b:Lcom/shabakaty/downloader/l53;

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l74;->b:Lcom/shabakaty/downloader/l53;

    new-instance v1, Lcom/shabakaty/downloader/l74$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/l74;->a:Lcom/shabakaty/downloader/h84;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/l74$a;-><init>(Lcom/shabakaty/downloader/y74;Lcom/shabakaty/downloader/h84;)V

    check-cast v0, Lcom/shabakaty/downloader/t43;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-void
.end method
