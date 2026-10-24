.class public final Lcom/shabakaty/downloader/x43;
.super Lcom/shabakaty/downloader/p0;
.source "ObservableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/x43$a;
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
.field public final s:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/j2;

.field public final v:Lcom/shabakaty/downloader/j2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l53<",
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
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/p0;-><init>(Lcom/shabakaty/downloader/l53;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/x43;->s:Lcom/shabakaty/downloader/xc0;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/x43;->t:Lcom/shabakaty/downloader/xc0;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/x43;->u:Lcom/shabakaty/downloader/j2;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/x43;->v:Lcom/shabakaty/downloader/j2;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p0;->r:Lcom/shabakaty/downloader/l53;

    new-instance v7, Lcom/shabakaty/downloader/x43$a;

    iget-object v3, p0, Lcom/shabakaty/downloader/x43;->s:Lcom/shabakaty/downloader/xc0;

    iget-object v4, p0, Lcom/shabakaty/downloader/x43;->t:Lcom/shabakaty/downloader/xc0;

    iget-object v5, p0, Lcom/shabakaty/downloader/x43;->u:Lcom/shabakaty/downloader/j2;

    iget-object v6, p0, Lcom/shabakaty/downloader/x43;->v:Lcom/shabakaty/downloader/j2;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/x43$a;-><init>(Lcom/shabakaty/downloader/q53;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V

    check-cast v0, Lcom/shabakaty/downloader/t43;

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-void
.end method
