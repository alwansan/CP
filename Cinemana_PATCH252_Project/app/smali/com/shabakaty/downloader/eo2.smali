.class public final Lcom/shabakaty/downloader/eo2;
.super Lcom/shabakaty/downloader/h0;
.source "MaybePeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/eo2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/h0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Lcom/shabakaty/downloader/mu0;",
            ">;"
        }
    .end annotation
.end field

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

.field public final x:Lcom/shabakaty/downloader/j2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fo2;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fo2<",
            "TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Lcom/shabakaty/downloader/mu0;",
            ">;",
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/j2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/h0;-><init>(Lcom/shabakaty/downloader/fo2;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/eo2;->s:Lcom/shabakaty/downloader/xc0;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/eo2;->t:Lcom/shabakaty/downloader/xc0;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/eo2;->u:Lcom/shabakaty/downloader/xc0;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/eo2;->v:Lcom/shabakaty/downloader/j2;

    .line 6
    iput-object p6, p0, Lcom/shabakaty/downloader/eo2;->w:Lcom/shabakaty/downloader/j2;

    .line 7
    iput-object p7, p0, Lcom/shabakaty/downloader/eo2;->x:Lcom/shabakaty/downloader/j2;

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/do2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/do2<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/h0;->r:Lcom/shabakaty/downloader/fo2;

    new-instance v1, Lcom/shabakaty/downloader/eo2$a;

    invoke-direct {v1, p1, p0}, Lcom/shabakaty/downloader/eo2$a;-><init>(Lcom/shabakaty/downloader/do2;Lcom/shabakaty/downloader/eo2;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/fo2;->a(Lcom/shabakaty/downloader/do2;)V

    return-void
.end method
