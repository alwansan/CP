.class public final Lcom/shabakaty/downloader/mg1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mg1$b;,
        Lcom/shabakaty/downloader/mg1$c;,
        Lcom/shabakaty/downloader/mg1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/a0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/wx3;

.field public final u:Z

.field public final v:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/wx3;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;",
            "Lcom/shabakaty/downloader/wx3;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/mg1;->t:Lcom/shabakaty/downloader/wx3;

    .line 3
    iput-boolean p3, p0, Lcom/shabakaty/downloader/mg1;->u:Z

    .line 4
    iput p4, p0, Lcom/shabakaty/downloader/mg1;->v:I

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mg1;->t:Lcom/shabakaty/downloader/wx3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wx3;->a()Lcom/shabakaty/downloader/wx3$c;

    move-result-object v0

    .line 2
    instance-of v1, p1, Lcom/shabakaty/downloader/m90;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    new-instance v2, Lcom/shabakaty/downloader/mg1$b;

    check-cast p1, Lcom/shabakaty/downloader/m90;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/mg1;->u:Z

    iget v4, p0, Lcom/shabakaty/downloader/mg1;->v:I

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/shabakaty/downloader/mg1$b;-><init>(Lcom/shabakaty/downloader/m90;Lcom/shabakaty/downloader/wx3$c;ZI)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    new-instance v2, Lcom/shabakaty/downloader/mg1$c;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/mg1;->u:Z

    iget v4, p0, Lcom/shabakaty/downloader/mg1;->v:I

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/shabakaty/downloader/mg1$c;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/wx3$c;ZI)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    :goto_0
    return-void
.end method
