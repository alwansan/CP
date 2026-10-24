.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/shabakaty/downloader/ra3<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->r:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 18

    move-object/from16 v0, p6

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ra3;

    move-object/from16 v2, p0

    .line 2
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->r:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 3
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    new-instance v15, Lcom/shabakaty/downloader/hj2;

    iget-wide v6, v1, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v8, v1, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    .line 4
    iget-object v5, v1, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 5
    iget-object v9, v5, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 6
    iget-object v10, v5, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 7
    iget-wide v13, v5, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v5, v15

    move-wide/from16 v11, p2

    move-wide/from16 v16, v13

    move-wide/from16 v13, p4

    move-object v2, v15

    move-wide/from16 v15, v16

    .line 8
    invoke-direct/range {v5 .. v16}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget v1, v1, Lcom/shabakaty/downloader/ra3;->c:I

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v4, v2, v1, v0, v5}, Lcom/shabakaty/downloader/yq2$a;->k(Lcom/shabakaty/downloader/hj2;ILjava/io/IOException;Z)V

    .line 10
    iget-object v1, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B(Ljava/io/IOException;)V

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/ij2;->e:Lcom/shabakaty/downloader/ij2$c;

    return-object v0
.end method

.method public g(Lcom/shabakaty/downloader/ij2$e;JJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ra3;

    move-object/from16 v1, p0

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->r:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v15, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v0, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v6, v0, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 5
    iget-object v7, v3, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 6
    iget-object v8, v3, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 7
    iget-wide v13, v3, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 8
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 9
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lcom/shabakaty/downloader/gj2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    iget v4, v0, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {v3, v15, v4}, Lcom/shabakaty/downloader/yq2$a;->g(Lcom/shabakaty/downloader/hj2;I)V

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/ra3;->f:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v3, p2

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C(J)V

    return-void
.end method

.method public l(Lcom/shabakaty/downloader/ij2$e;JJZ)V
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ra3;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->r:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A(Lcom/shabakaty/downloader/ra3;JJ)V

    return-void
.end method
