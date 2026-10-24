.class public final Lcom/shabakaty/downloader/eg1;
.super Lcom/shabakaty/downloader/qf1;
.source "FlowableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/eg1$a;,
        Lcom/shabakaty/downloader/eg1$b;,
        Lcom/shabakaty/downloader/eg1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/qf1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final s:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/eg1;->s:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 3
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
    new-instance v0, Lcom/shabakaty/downloader/eg1$a;

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/m90;

    iget-object v2, p0, Lcom/shabakaty/downloader/eg1;->s:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/eg1$a;-><init>(Lcom/shabakaty/downloader/m90;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/eg1$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/eg1;->s:[Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/eg1$b;-><init>(Lcom/shabakaty/downloader/ef4;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    :goto_0
    return-void
.end method
