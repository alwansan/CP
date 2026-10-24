.class public abstract Lcom/shabakaty/downloader/ur3;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ur3$b;,
        Lcom/shabakaty/downloader/ur3$c;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/wh1;

.field public final s:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Lcom/shabakaty/downloader/nk;",
            ">;"
        }
    .end annotation
.end field

.field public final t:J

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/oq0;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lcom/shabakaty/downloader/qm3;


# direct methods
.method public constructor <init>(JLcom/shabakaty/downloader/wh1;Ljava/util/List;Lcom/shabakaty/downloader/b04;Ljava/util/List;Lcom/shabakaty/downloader/ur3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/ur3;->r:Lcom/shabakaty/downloader/wh1;

    .line 4
    invoke-static {p4}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ur3;->s:Lcom/google/common/collect/p;

    if-nez p6, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/ur3;->u:Ljava/util/List;

    .line 7
    invoke-virtual {p5, p0}, Lcom/shabakaty/downloader/b04;->a(Lcom/shabakaty/downloader/ur3;)Lcom/shabakaty/downloader/qm3;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ur3;->v:Lcom/shabakaty/downloader/qm3;

    .line 8
    iget-wide p2, p5, Lcom/shabakaty/downloader/b04;->c:J

    iget-wide p6, p5, Lcom/shabakaty/downloader/b04;->b:J

    const-wide/32 p4, 0xf4240

    invoke-static/range {p2 .. p7}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide p1

    .line 9
    iput-wide p1, p0, Lcom/shabakaty/downloader/ur3;->t:J

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Lcom/shabakaty/downloader/dl0;
.end method

.method public abstract c()Lcom/shabakaty/downloader/qm3;
.end method
