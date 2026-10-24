.class public final Lcom/shabakaty/downloader/wf1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wf1$a;,
        Lcom/shabakaty/downloader/wf1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/a0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/xl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xl<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;Lcom/shabakaty/downloader/xl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;TK;>;",
            "Lcom/shabakaty/downloader/xl<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/wf1;->t:Lcom/shabakaty/downloader/in1;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/wf1;->u:Lcom/shabakaty/downloader/xl;

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/m90;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/m90;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    new-instance v1, Lcom/shabakaty/downloader/wf1$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/wf1;->t:Lcom/shabakaty/downloader/in1;

    iget-object v3, p0, Lcom/shabakaty/downloader/wf1;->u:Lcom/shabakaty/downloader/xl;

    invoke-direct {v1, p1, v2, v3}, Lcom/shabakaty/downloader/wf1$a;-><init>(Lcom/shabakaty/downloader/m90;Lcom/shabakaty/downloader/in1;Lcom/shabakaty/downloader/xl;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    new-instance v1, Lcom/shabakaty/downloader/wf1$b;

    iget-object v2, p0, Lcom/shabakaty/downloader/wf1;->t:Lcom/shabakaty/downloader/in1;

    iget-object v3, p0, Lcom/shabakaty/downloader/wf1;->u:Lcom/shabakaty/downloader/xl;

    invoke-direct {v1, p1, v2, v3}, Lcom/shabakaty/downloader/wf1$b;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;Lcom/shabakaty/downloader/xl;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    :goto_0
    return-void
.end method
