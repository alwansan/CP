.class public final Lcom/shabakaty/downloader/ng1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableOnBackpressureBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ng1$a;
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
.field public final t:I

.field public final u:Z

.field public final v:Z

.field public final w:Lcom/shabakaty/downloader/j2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;IZZLcom/shabakaty/downloader/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;IZZ",
            "Lcom/shabakaty/downloader/j2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/ng1;->t:I

    .line 3
    iput-boolean p3, p0, Lcom/shabakaty/downloader/ng1;->u:Z

    .line 4
    iput-boolean p4, p0, Lcom/shabakaty/downloader/ng1;->v:Z

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/ng1;->w:Lcom/shabakaty/downloader/j2;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    new-instance v7, Lcom/shabakaty/downloader/ng1$a;

    iget v3, p0, Lcom/shabakaty/downloader/ng1;->t:I

    iget-boolean v4, p0, Lcom/shabakaty/downloader/ng1;->u:Z

    iget-boolean v5, p0, Lcom/shabakaty/downloader/ng1;->v:Z

    iget-object v6, p0, Lcom/shabakaty/downloader/ng1;->w:Lcom/shabakaty/downloader/j2;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/ng1$a;-><init>(Lcom/shabakaty/downloader/ef4;IZZLcom/shabakaty/downloader/j2;)V

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    return-void
.end method
