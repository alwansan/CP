.class public final Lcom/shabakaty/downloader/sf1;
.super Lcom/shabakaty/downloader/f74;
.source "FlowableAnySingle.java"

# interfaces
.implements Lcom/shabakaty/downloader/fo1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sf1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/f74<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/shabakaty/downloader/fo1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/qf1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/ye3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ye3<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/ye3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;",
            "Lcom/shabakaty/downloader/ye3<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sf1;->a:Lcom/shabakaty/downloader/qf1;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/sf1;->b:Lcom/shabakaty/downloader/ye3;

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/qf1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/qf1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/rf1;

    iget-object v1, p0, Lcom/shabakaty/downloader/sf1;->a:Lcom/shabakaty/downloader/qf1;

    iget-object v2, p0, Lcom/shabakaty/downloader/sf1;->b:Lcom/shabakaty/downloader/ye3;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/rf1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/ye3;)V

    return-object v0
.end method

.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf1;->a:Lcom/shabakaty/downloader/qf1;

    new-instance v1, Lcom/shabakaty/downloader/sf1$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/sf1;->b:Lcom/shabakaty/downloader/ye3;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/sf1$a;-><init>(Lcom/shabakaty/downloader/y74;Lcom/shabakaty/downloader/ye3;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    return-void
.end method
