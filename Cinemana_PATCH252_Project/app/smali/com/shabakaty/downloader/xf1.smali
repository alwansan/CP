.class public final Lcom/shabakaty/downloader/xf1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/xf1$a;,
        Lcom/shabakaty/downloader/xf1$b;
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
.field public final t:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lcom/shabakaty/downloader/j2;

.field public final w:Lcom/shabakaty/downloader/j2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/j2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/xf1;->t:Lcom/shabakaty/downloader/xc0;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/xf1;->u:Lcom/shabakaty/downloader/xc0;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/xf1;->v:Lcom/shabakaty/downloader/j2;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/xf1;->w:Lcom/shabakaty/downloader/j2;

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
    instance-of v0, p1, Lcom/shabakaty/downloader/m90;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    new-instance v7, Lcom/shabakaty/downloader/xf1$a;

    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/m90;

    iget-object v3, p0, Lcom/shabakaty/downloader/xf1;->t:Lcom/shabakaty/downloader/xc0;

    iget-object v4, p0, Lcom/shabakaty/downloader/xf1;->u:Lcom/shabakaty/downloader/xc0;

    iget-object v5, p0, Lcom/shabakaty/downloader/xf1;->v:Lcom/shabakaty/downloader/j2;

    iget-object v6, p0, Lcom/shabakaty/downloader/xf1;->w:Lcom/shabakaty/downloader/j2;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/xf1$a;-><init>(Lcom/shabakaty/downloader/m90;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    new-instance v7, Lcom/shabakaty/downloader/xf1$b;

    iget-object v3, p0, Lcom/shabakaty/downloader/xf1;->t:Lcom/shabakaty/downloader/xc0;

    iget-object v4, p0, Lcom/shabakaty/downloader/xf1;->u:Lcom/shabakaty/downloader/xc0;

    iget-object v5, p0, Lcom/shabakaty/downloader/xf1;->v:Lcom/shabakaty/downloader/j2;

    iget-object v6, p0, Lcom/shabakaty/downloader/xf1;->w:Lcom/shabakaty/downloader/j2;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/xf1$b;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    :goto_0
    return-void
.end method
