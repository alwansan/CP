.class public final Lcom/shabakaty/downloader/sg1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableRetryPredicate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sg1$a;
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
.field public final t:Lcom/shabakaty/downloader/ye3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ye3<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final u:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;JLcom/shabakaty/downloader/ye3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;J",
            "Lcom/shabakaty/downloader/ye3<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/sg1;->t:Lcom/shabakaty/downloader/ye3;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/sg1;->u:J

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/shabakaty/downloader/of4;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/shabakaty/downloader/of4;-><init>(Z)V

    .line 2
    invoke-interface {p1, v5}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 3
    new-instance v7, Lcom/shabakaty/downloader/sg1$a;

    iget-wide v2, p0, Lcom/shabakaty/downloader/sg1;->u:J

    iget-object v4, p0, Lcom/shabakaty/downloader/sg1;->t:Lcom/shabakaty/downloader/ye3;

    iget-object v6, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/sg1$a;-><init>(Lcom/shabakaty/downloader/ef4;JLcom/shabakaty/downloader/ye3;Lcom/shabakaty/downloader/of4;Lcom/shabakaty/downloader/wj3;)V

    .line 4
    invoke-virtual {v7}, Lcom/shabakaty/downloader/sg1$a;->c()V

    return-void
.end method
