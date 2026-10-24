.class public final Lcom/shabakaty/downloader/eq1;
.super Lcom/shabakaty/downloader/yz2;
.source "GivenFunctionsMemberScope.kt"


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/shabakaty/downloader/dq1;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/shabakaty/downloader/dq1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;",
            "Lcom/shabakaty/downloader/dq1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/eq1;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/shabakaty/downloader/eq1;->b:Lcom/shabakaty/downloader/dq1;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/yz2;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/tq;)V
    .locals 1

    const-string v0, "fakeOverride"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/a93;->r(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/tm1;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/eq1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/tq;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Conflict in scope of "

    .line 1
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/eq1;->b:Lcom/shabakaty/downloader/dq1;

    .line 2
    iget-object v2, v2, Lcom/shabakaty/downloader/dq1;->b:Lcom/shabakaty/downloader/q20;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
