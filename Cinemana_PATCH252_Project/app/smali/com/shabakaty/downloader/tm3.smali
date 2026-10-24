.class public final Lcom/shabakaty/downloader/tm3;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/tm3$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/w90;

.field public final b:F

.field public c:Lcom/shabakaty/downloader/tm3$a;

.field public d:Lcom/shabakaty/downloader/tm3$a;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/sm3;J)V
    .locals 11

    .line 1
    new-instance v8, Lcom/shabakaty/downloader/ll3;

    const/16 v0, 0xc

    invoke-direct {v8, v0}, Lcom/shabakaty/downloader/ll3;-><init>(I)V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/w90;->e()Lcom/shabakaty/downloader/w90;

    move-result-object v9

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/tm3;->c:Lcom/shabakaty/downloader/tm3$a;

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/tm3;->d:Lcom/shabakaty/downloader/tm3$a;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/shabakaty/downloader/tm3;->e:Z

    const/4 v2, 0x0

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/tm3;->b:F

    .line 9
    iput-object v9, p0, Lcom/shabakaty/downloader/tm3;->a:Lcom/shabakaty/downloader/w90;

    .line 10
    new-instance v10, Lcom/shabakaty/downloader/tm3$a;

    iget-boolean v7, p0, Lcom/shabakaty/downloader/tm3;->e:Z

    const-string v6, "Trace"

    move-object v0, v10

    move-object v1, p2

    move-wide v2, p3

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/tm3$a;-><init>(Lcom/shabakaty/downloader/sm3;JLcom/shabakaty/downloader/ll3;Lcom/shabakaty/downloader/w90;Ljava/lang/String;Z)V

    iput-object v10, p0, Lcom/shabakaty/downloader/tm3;->c:Lcom/shabakaty/downloader/tm3$a;

    .line 11
    new-instance v10, Lcom/shabakaty/downloader/tm3$a;

    iget-boolean v7, p0, Lcom/shabakaty/downloader/tm3;->e:Z

    const-string v6, "Network"

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/tm3$a;-><init>(Lcom/shabakaty/downloader/sm3;JLcom/shabakaty/downloader/ll3;Lcom/shabakaty/downloader/w90;Ljava/lang/String;Z)V

    iput-object v10, p0, Lcom/shabakaty/downloader/tm3;->d:Lcom/shabakaty/downloader/tm3$a;

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/zy4;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/downloader/tm3;->e:Z

    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sampling bucket ID should be in range [0.0f, 1.0f)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tb3;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tb3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tb3;->E()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tb3;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/tb3;->D(I)Lcom/shabakaty/downloader/d24;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/d24;->t:Lcom/shabakaty/downloader/d24;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
