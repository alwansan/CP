.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/zq2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/dash/a$a;

.field public final b:Lcom/shabakaty/downloader/vl0$a;

.field public c:Lcom/shabakaty/downloader/w01;

.field public d:Lcom/shabakaty/downloader/kd;

.field public e:Lcom/shabakaty/downloader/gj2;

.field public f:J

.field public g:J

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ud4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0$a;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/dash/c$a;-><init>(Lcom/shabakaty/downloader/vl0$a;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->b:Lcom/shabakaty/downloader/vl0$a;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/vn0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/vn0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lcom/shabakaty/downloader/w01;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/po0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/po0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Lcom/shabakaty/downloader/gj2;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:J

    const-wide/16 v0, 0x7530

    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->g:J

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/kd;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/kd;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d:Lcom/shabakaty/downloader/kd;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/dp2;)Lcom/shabakaty/downloader/uq2;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/al0;

    invoke-direct {v2}, Lcom/shabakaty/downloader/al0;-><init>()V

    .line 4
    iget-object v3, v1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object v3, v3, Lcom/shabakaty/downloader/dp2$g;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->h:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, v1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object v3, v3, Lcom/shabakaty/downloader/dp2$g;->e:Ljava/util/List;

    .line 7
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    new-instance v4, Lcom/shabakaty/downloader/ob1;

    invoke-direct {v4, v2, v3}, Lcom/shabakaty/downloader/ob1;-><init>(Lcom/shabakaty/downloader/ra3$a;Ljava/util/List;)V

    move-object v9, v4

    goto :goto_1

    :cond_1
    move-object v9, v2

    .line 9
    :goto_1
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object v4, v2, Lcom/shabakaty/downloader/dp2$g;->h:Ljava/lang/Object;

    .line 10
    iget-object v2, v2, Lcom/shabakaty/downloader/dp2$g;->e:Ljava/util/List;

    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 12
    :goto_2
    iget-object v6, v1, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v6, v6, Lcom/shabakaty/downloader/dp2$f;->a:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v6, v10

    if-nez v8, :cond_3

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:J

    cmp-long v8, v6, v10

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-nez v2, :cond_5

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    move-object v6, v1

    goto :goto_5

    .line 13
    :cond_5
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/dp2;->a()Lcom/shabakaty/downloader/dp2$c;

    move-result-object v1

    if-eqz v2, :cond_6

    .line 14
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/dp2$c;->b(Ljava/util/List;)Lcom/shabakaty/downloader/dp2$c;

    :cond_6
    if-eqz v4, :cond_7

    .line 15
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:J

    .line 16
    iput-wide v2, v1, Lcom/shabakaty/downloader/dp2$c;->w:J

    .line 17
    :cond_7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/dp2$c;->a()Lcom/shabakaty/downloader/dp2;

    move-result-object v1

    goto :goto_3

    .line 18
    :goto_5
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->b:Lcom/shabakaty/downloader/vl0$a;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/dash/a$a;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d:Lcom/shabakaty/downloader/kd;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lcom/shabakaty/downloader/w01;

    .line 19
    check-cast v2, Lcom/shabakaty/downloader/vn0;

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/vn0;->b(Lcom/shabakaty/downloader/dp2;)Lcom/shabakaty/downloader/u01;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Lcom/shabakaty/downloader/gj2;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->g:J

    const/16 v16, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/zk0;Lcom/shabakaty/downloader/vl0$a;Lcom/shabakaty/downloader/ra3$a;Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/shabakaty/downloader/kd;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/gj2;JLcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    return-object v1
.end method
