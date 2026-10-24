.class public final Lcom/google/android/exoplayer2/source/hls/d$d;
.super Lcom/shabakaty/downloader/bx3;
.source "HlsSampleStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/o01;",
            ">;"
        }
    .end annotation
.end field

.field public J:Lcom/shabakaty/downloader/o01;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fn0;Landroid/os/Looper;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Ljava/util/Map;Lcom/google/android/exoplayer2/source/hls/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/bx3;-><init>(Lcom/shabakaty/downloader/fn0;Landroid/os/Looper;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;)V

    .line 2
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/d$d;->I:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b(JIIILcom/shabakaty/downloader/fp4$a;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/shabakaty/downloader/bx3;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    return-void
.end method

.method public n(Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/wh1;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d$d;->J:Lcom/shabakaty/downloader/o01;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/d$d;->I:Ljava/util/Map;

    iget-object v2, v0, Lcom/shabakaty/downloader/o01;->t:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/o01;

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 3
    :cond_1
    iget-object v1, p1, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :goto_1
    move-object v1, v2

    goto :goto_6

    .line 4
    :cond_2
    iget-object v3, v1, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, -0x1

    if-ge v5, v3, :cond_4

    .line 5
    iget-object v7, v1, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    aget-object v7, v7, v5

    .line 6
    instance-of v8, v7, Lcom/shabakaty/downloader/yf3;

    if-eqz v8, :cond_3

    .line 7
    check-cast v7, Lcom/shabakaty/downloader/yf3;

    .line 8
    iget-object v7, v7, Lcom/shabakaty/downloader/yf3;->s:Ljava/lang/String;

    const-string v8, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, -0x1

    :goto_3
    if-ne v5, v6, :cond_5

    goto :goto_6

    :cond_5
    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v3, -0x1

    .line 9
    new-array v2, v2, [Lcom/shabakaty/downloader/ps2$b;

    :goto_4
    if-ge v4, v3, :cond_9

    if-eq v4, v5, :cond_8

    if-ge v4, v5, :cond_7

    move v6, v4

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v4, -0x1

    .line 10
    :goto_5
    iget-object v7, v1, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    aget-object v7, v7, v4

    .line 11
    aput-object v7, v2, v6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 12
    :cond_9
    new-instance v1, Lcom/shabakaty/downloader/ps2;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/ps2;-><init>([Lcom/shabakaty/downloader/ps2$b;)V

    .line 13
    :goto_6
    iget-object v2, p1, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    if-ne v0, v2, :cond_a

    iget-object v2, p1, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    if-eq v1, v2, :cond_b

    .line 14
    :cond_a
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object p1

    .line 15
    iput-object v0, p1, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 16
    iput-object v1, p1, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 17
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    .line 18
    :cond_b
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/bx3;->n(Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    return-object p1
.end method
