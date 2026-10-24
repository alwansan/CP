.class public final Lcom/shabakaty/downloader/ig1;
.super Lcom/shabakaty/downloader/qf1;
.source "FlowableFromObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ig1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/qf1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/t43;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/t43<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/t43;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/t43<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ig1;->s:Lcom/shabakaty/downloader/t43;

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/shabakaty/downloader/ig1;->s:Lcom/shabakaty/downloader/t43;

    new-instance v1, Lcom/shabakaty/downloader/ig1$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ig1$a;-><init>(Lcom/shabakaty/downloader/ef4;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-void
.end method
