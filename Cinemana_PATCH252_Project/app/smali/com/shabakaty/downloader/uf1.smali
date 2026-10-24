.class public final Lcom/shabakaty/downloader/uf1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/uf1$d;,
        Lcom/shabakaty/downloader/uf1$e;,
        Lcom/shabakaty/downloader/uf1$b;,
        Lcom/shabakaty/downloader/uf1$f;,
        Lcom/shabakaty/downloader/uf1$c;,
        Lcom/shabakaty/downloader/uf1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/a0<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/wj3<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final u:I

.field public final v:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/wj3<",
            "+TR;>;>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/uf1;->t:Lcom/shabakaty/downloader/in1;

    .line 3
    iput p3, p0, Lcom/shabakaty/downloader/uf1;->u:I

    .line 4
    iput p4, p0, Lcom/shabakaty/downloader/uf1;->v:I

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    iget-object v1, p0, Lcom/shabakaty/downloader/uf1;->t:Lcom/shabakaty/downloader/in1;

    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/tg1;->a(Lcom/shabakaty/downloader/wj3;Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    iget-object v1, p0, Lcom/shabakaty/downloader/uf1;->t:Lcom/shabakaty/downloader/in1;

    iget v2, p0, Lcom/shabakaty/downloader/uf1;->u:I

    iget v3, p0, Lcom/shabakaty/downloader/uf1;->v:I

    .line 3
    invoke-static {v3}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/uf1$c;

    invoke-direct {v3, p1, v1, v2}, Lcom/shabakaty/downloader/uf1$c;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;I)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v3, Lcom/shabakaty/downloader/uf1$b;

    invoke-direct {v3, p1, v1, v2, v4}, Lcom/shabakaty/downloader/uf1$b;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;IZ)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance v3, Lcom/shabakaty/downloader/uf1$b;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, v2, v4}, Lcom/shabakaty/downloader/uf1$b;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;IZ)V

    .line 7
    :goto_0
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/qf1;->a(Lcom/shabakaty/downloader/ef4;)V

    return-void
.end method
