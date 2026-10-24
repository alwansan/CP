.class public final Lcom/shabakaty/downloader/kg1;
.super Lcom/shabakaty/downloader/qf1;
.source "FlowableJust.java"

# interfaces
.implements Lcom/shabakaty/downloader/hx3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/qf1<",
        "TT;>;",
        "Lcom/shabakaty/downloader/hx3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/kg1;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kg1;->s:Ljava/lang/Object;

    return-object v0
.end method

.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ix3;

    iget-object v1, p0, Lcom/shabakaty/downloader/kg1;->s:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/ix3;-><init>(Lcom/shabakaty/downloader/ef4;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    return-void
.end method
