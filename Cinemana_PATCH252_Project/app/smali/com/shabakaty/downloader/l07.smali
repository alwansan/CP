.class public final Lcom/shabakaty/downloader/l07;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# static fields
.field public static j:Lcom/shabakaty/downloader/iu5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/iu5<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/shabakaty/downloader/j07;

.field public final d:Lcom/shabakaty/downloader/d54;

.field public final e:Lcom/shabakaty/downloader/uk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/uk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hr6;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hr6;",
            "Lcom/shabakaty/downloader/gv5<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/d54;Lcom/shabakaty/downloader/j07;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/l07;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/l07;->i:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/l07;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/o70;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/l07;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/l07;->d:Lcom/shabakaty/downloader/d54;

    iput-object p3, p0, Lcom/shabakaty/downloader/l07;->c:Lcom/shabakaty/downloader/j07;

    iput-object p4, p0, Lcom/shabakaty/downloader/l07;->g:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/ul2;->a()Lcom/shabakaty/downloader/ul2;

    move-result-object p1

    new-instance p3, Lcom/shabakaty/downloader/cr6;

    const/4 v0, 0x1

    invoke-direct {p3, p4, v0}, Lcom/shabakaty/downloader/cr6;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/ul2;->b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/l07;->e:Lcom/shabakaty/downloader/uk4;

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/ul2;->a()Lcom/shabakaty/downloader/ul2;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p3, Lcom/shabakaty/downloader/gr6;

    invoke-direct {p3, p2, v0}, Lcom/shabakaty/downloader/gr6;-><init>(Lcom/shabakaty/downloader/d54;I)V

    .line 9
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/ul2;->b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/l07;->f:Lcom/shabakaty/downloader/uk4;

    return-void
.end method

.method public static a(Ljava/util/List;D)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;D)J"
        }
    .end annotation

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/qz2;Lcom/shabakaty/downloader/hr6;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ul2;->b:Ljava/lang/Object;

    sget-object v0, Lcom/shabakaty/downloader/tk6;->r:Lcom/shabakaty/downloader/tk6;

    new-instance v1, Lcom/shabakaty/downloader/so5;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/l07;Lcom/shabakaty/downloader/qz2;Lcom/shabakaty/downloader/hr6;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tk6;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/hr6;J)Z
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/l07;->h:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l07;->h:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr p2, v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long p1, p2, v2

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
