.class public final Lcom/shabakaty/downloader/d53;
.super Lcom/shabakaty/downloader/p0;
.source "ObservableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/d53$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/p0<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/in1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l53<",
            "TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/p0;-><init>(Lcom/shabakaty/downloader/l53;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/d53;->s:Lcom/shabakaty/downloader/in1;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p0;->r:Lcom/shabakaty/downloader/l53;

    new-instance v1, Lcom/shabakaty/downloader/d53$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/d53;->s:Lcom/shabakaty/downloader/in1;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/d53$a;-><init>(Lcom/shabakaty/downloader/q53;Lcom/shabakaty/downloader/in1;)V

    check-cast v0, Lcom/shabakaty/downloader/t43;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-void
.end method
