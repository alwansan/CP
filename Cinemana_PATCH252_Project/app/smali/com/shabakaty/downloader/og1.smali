.class public final Lcom/shabakaty/downloader/og1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableOnBackpressureDrop.java"

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/og1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/a0<",
        "TT;TT;>;",
        "Lcom/shabakaty/downloader/xc0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput-object p0, p0, Lcom/shabakaty/downloader/og1;->t:Lcom/shabakaty/downloader/xc0;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    new-instance v1, Lcom/shabakaty/downloader/og1$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/og1;->t:Lcom/shabakaty/downloader/xc0;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/og1$a;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/xc0;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    return-void
.end method
