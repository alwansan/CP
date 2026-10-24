.class public final Lcom/shabakaty/downloader/zf1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableElementAt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zf1$a;
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
.field public final t:J

.field public final u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final v:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput-wide p2, p0, Lcom/shabakaty/downloader/zf1;->t:J

    .line 3
    iput-object p4, p0, Lcom/shabakaty/downloader/zf1;->u:Ljava/lang/Object;

    .line 4
    iput-boolean p5, p0, Lcom/shabakaty/downloader/zf1;->v:Z

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

    new-instance v7, Lcom/shabakaty/downloader/zf1$a;

    iget-wide v3, p0, Lcom/shabakaty/downloader/zf1;->t:J

    iget-object v5, p0, Lcom/shabakaty/downloader/zf1;->u:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/shabakaty/downloader/zf1;->v:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/zf1$a;-><init>(Lcom/shabakaty/downloader/ef4;JLjava/lang/Object;Z)V

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    return-void
.end method
