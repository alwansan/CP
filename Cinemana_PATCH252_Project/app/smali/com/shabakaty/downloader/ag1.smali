.class public final Lcom/shabakaty/downloader/ag1;
.super Lcom/shabakaty/downloader/f74;
.source "FlowableElementAtSingle.java"

# interfaces
.implements Lcom/shabakaty/downloader/fo1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ag1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/f74<",
        "TT;>;",
        "Lcom/shabakaty/downloader/fo1<",
        "TT;>;"
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

.field public final b:J

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;JTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ag1;->a:Lcom/shabakaty/downloader/qf1;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/ag1;->b:J

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/ag1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/qf1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/zf1;

    iget-object v1, p0, Lcom/shabakaty/downloader/ag1;->a:Lcom/shabakaty/downloader/qf1;

    iget-wide v2, p0, Lcom/shabakaty/downloader/ag1;->b:J

    iget-object v4, p0, Lcom/shabakaty/downloader/ag1;->c:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/zf1;-><init>(Lcom/shabakaty/downloader/qf1;JLjava/lang/Object;Z)V

    return-object v6
.end method

.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag1;->a:Lcom/shabakaty/downloader/qf1;

    new-instance v1, Lcom/shabakaty/downloader/ag1$a;

    iget-wide v2, p0, Lcom/shabakaty/downloader/ag1;->b:J

    iget-object v4, p0, Lcom/shabakaty/downloader/ag1;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/shabakaty/downloader/ag1$a;-><init>(Lcom/shabakaty/downloader/y74;JLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    return-void
.end method
