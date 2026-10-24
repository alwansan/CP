.class public final Lcom/shabakaty/downloader/s74;
.super Lcom/shabakaty/downloader/qf1;
.source "SingleFlatMapIterableFlowable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/s74$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/qf1<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/h84;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/h84<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/h84<",
            "TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s74;->s:Lcom/shabakaty/downloader/h84;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/s74;->t:Lcom/shabakaty/downloader/in1;

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s74;->s:Lcom/shabakaty/downloader/h84;

    new-instance v1, Lcom/shabakaty/downloader/s74$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/s74;->t:Lcom/shabakaty/downloader/in1;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/s74$a;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/h84;->a(Lcom/shabakaty/downloader/y74;)V

    return-void
.end method
