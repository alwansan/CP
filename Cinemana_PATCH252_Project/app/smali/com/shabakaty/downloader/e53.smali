.class public final Lcom/shabakaty/downloader/e53;
.super Lcom/shabakaty/downloader/p0;
.source "ObservableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/e53$a;
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

.field public final t:Z

.field public final u:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/wx3;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l53<",
            "TT;>;",
            "Lcom/shabakaty/downloader/wx3;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/p0;-><init>(Lcom/shabakaty/downloader/l53;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/e53;->s:Lcom/shabakaty/downloader/wx3;

    .line 3
    iput-boolean p3, p0, Lcom/shabakaty/downloader/e53;->t:Z

    .line 4
    iput p4, p0, Lcom/shabakaty/downloader/e53;->u:I

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e53;->s:Lcom/shabakaty/downloader/wx3;

    instance-of v1, v0, Lcom/shabakaty/downloader/pp4;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/p0;->r:Lcom/shabakaty/downloader/l53;

    check-cast v0, Lcom/shabakaty/downloader/t43;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wx3;->a()Lcom/shabakaty/downloader/wx3$c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/p0;->r:Lcom/shabakaty/downloader/l53;

    new-instance v2, Lcom/shabakaty/downloader/e53$a;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/e53;->t:Z

    iget v4, p0, Lcom/shabakaty/downloader/e53;->u:I

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/shabakaty/downloader/e53$a;-><init>(Lcom/shabakaty/downloader/q53;Lcom/shabakaty/downloader/wx3$c;ZI)V

    check-cast v1, Lcom/shabakaty/downloader/t43;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    :goto_0
    return-void
.end method
