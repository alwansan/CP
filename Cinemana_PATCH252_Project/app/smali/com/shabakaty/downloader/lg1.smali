.class public final Lcom/shabakaty/downloader/lg1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/lg1$a;,
        Lcom/shabakaty/downloader/lg1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/a0<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/lg1;->t:Lcom/shabakaty/downloader/in1;

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/m90;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    new-instance v1, Lcom/shabakaty/downloader/lg1$a;

    check-cast p1, Lcom/shabakaty/downloader/m90;

    iget-object v2, p0, Lcom/shabakaty/downloader/lg1;->t:Lcom/shabakaty/downloader/in1;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/lg1$a;-><init>(Lcom/shabakaty/downloader/m90;Lcom/shabakaty/downloader/in1;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    new-instance v1, Lcom/shabakaty/downloader/lg1$b;

    iget-object v2, p0, Lcom/shabakaty/downloader/lg1;->t:Lcom/shabakaty/downloader/in1;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/lg1$b;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    :goto_0
    return-void
.end method
