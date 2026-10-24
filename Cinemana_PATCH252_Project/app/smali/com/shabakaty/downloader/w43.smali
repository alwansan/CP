.class public final Lcom/shabakaty/downloader/w43;
.super Lcom/shabakaty/downloader/t43;
.source "ObservableDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/w43$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/t43<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/l53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l53<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/l53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l53<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/l53;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l53<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/l53<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/t43;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/w43;->r:Lcom/shabakaty/downloader/l53;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/w43;->s:Lcom/shabakaty/downloader/l53;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v04;

    invoke-direct {v0}, Lcom/shabakaty/downloader/v04;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/w43$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/shabakaty/downloader/w43$a;-><init>(Lcom/shabakaty/downloader/w43;Lcom/shabakaty/downloader/v04;Lcom/shabakaty/downloader/q53;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/w43;->s:Lcom/shabakaty/downloader/l53;

    check-cast p1, Lcom/shabakaty/downloader/t43;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-void
.end method
