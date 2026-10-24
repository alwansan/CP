.class public final Lcom/shabakaty/downloader/vf1;
.super Lcom/shabakaty/downloader/qf1;
.source "FlowableDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/vf1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/qf1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/wj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wj3<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/wj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wj3<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wj3;Lcom/shabakaty/downloader/wj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wj3<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/wj3<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vf1;->s:Lcom/shabakaty/downloader/wj3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/vf1;->t:Lcom/shabakaty/downloader/wj3;

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vf1$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/vf1;->s:Lcom/shabakaty/downloader/wj3;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/vf1$a;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/wj3;)V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/vf1;->t:Lcom/shabakaty/downloader/wj3;

    iget-object v0, v0, Lcom/shabakaty/downloader/vf1$a;->t:Lcom/shabakaty/downloader/vf1$a$a;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/wj3;->a(Lcom/shabakaty/downloader/ef4;)V

    return-void
.end method
