.class public final Lcom/shabakaty/downloader/cg1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/cg1$a;,
        Lcom/shabakaty/downloader/cg1$b;
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
            "-TT;+",
            "Lcom/shabakaty/downloader/wj3<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final u:Z

.field public final v:I

.field public final w:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/wj3<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/cg1;->t:Lcom/shabakaty/downloader/in1;

    .line 3
    iput-boolean p3, p0, Lcom/shabakaty/downloader/cg1;->u:Z

    .line 4
    iput p4, p0, Lcom/shabakaty/downloader/cg1;->v:I

    .line 5
    iput p5, p0, Lcom/shabakaty/downloader/cg1;->w:I

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    iget-object v1, p0, Lcom/shabakaty/downloader/cg1;->t:Lcom/shabakaty/downloader/in1;

    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/tg1;->a(Lcom/shabakaty/downloader/wj3;Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    iget-object v3, p0, Lcom/shabakaty/downloader/cg1;->t:Lcom/shabakaty/downloader/in1;

    iget-boolean v4, p0, Lcom/shabakaty/downloader/cg1;->u:Z

    iget v5, p0, Lcom/shabakaty/downloader/cg1;->v:I

    iget v6, p0, Lcom/shabakaty/downloader/cg1;->w:I

    .line 3
    new-instance v7, Lcom/shabakaty/downloader/cg1$b;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/cg1$b;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;ZII)V

    .line 4
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    return-void
.end method
