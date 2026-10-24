.class public final Lcom/shabakaty/downloader/yf1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableDoOnLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/yf1$a;
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
            "-",
            "Lcom/shabakaty/downloader/lf4;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/gl2;

.field public final v:Lcom/shabakaty/downloader/j2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/gl2;Lcom/shabakaty/downloader/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Lcom/shabakaty/downloader/lf4;",
            ">;",
            "Lcom/shabakaty/downloader/gl2;",
            "Lcom/shabakaty/downloader/j2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/yf1;->t:Lcom/shabakaty/downloader/xc0;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/yf1;->u:Lcom/shabakaty/downloader/gl2;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/yf1;->v:Lcom/shabakaty/downloader/j2;

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    new-instance v1, Lcom/shabakaty/downloader/yf1$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/yf1;->t:Lcom/shabakaty/downloader/xc0;

    iget-object v3, p0, Lcom/shabakaty/downloader/yf1;->u:Lcom/shabakaty/downloader/gl2;

    iget-object v4, p0, Lcom/shabakaty/downloader/yf1;->v:Lcom/shabakaty/downloader/j2;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/shabakaty/downloader/yf1$a;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/gl2;Lcom/shabakaty/downloader/j2;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    return-void
.end method
