.class public final Lcom/shabakaty/downloader/p53;
.super Lcom/shabakaty/downloader/p0;
.source "ObservableUnsubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/p53$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/p0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/wx3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/wx3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l53<",
            "TT;>;",
            "Lcom/shabakaty/downloader/wx3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/p0;-><init>(Lcom/shabakaty/downloader/l53;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/p53;->s:Lcom/shabakaty/downloader/wx3;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p0;->r:Lcom/shabakaty/downloader/l53;

    new-instance v1, Lcom/shabakaty/downloader/p53$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/p53;->s:Lcom/shabakaty/downloader/wx3;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/p53$a;-><init>(Lcom/shabakaty/downloader/q53;Lcom/shabakaty/downloader/wx3;)V

    check-cast v0, Lcom/shabakaty/downloader/t43;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-void
.end method
