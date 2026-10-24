.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SsMediaSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/zq2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

.field public final b:Lcom/shabakaty/downloader/vl0$a;

.field public c:Lcom/shabakaty/downloader/kd;

.field public d:Lcom/shabakaty/downloader/w01;

.field public e:Lcom/shabakaty/downloader/gj2;

.field public f:J

.field public g:Ljava/util/List;
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
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;-><init>(Lcom/shabakaty/downloader/vl0$a;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->b:Lcom/shabakaty/downloader/vl0$a;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/vn0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/vn0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->d:Lcom/shabakaty/downloader/w01;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/po0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/po0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->e:Lcom/shabakaty/downloader/gj2;

    const-wide/16 v0, 0x7530

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->f:J

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/kd;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/kd;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->c:Lcom/shabakaty/downloader/kd;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->g:Ljava/util/List;

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
    new-instance v2, Lcom/shabakaty/downloader/xa4;

    invoke-direct {v2}, Lcom/shabakaty/downloader/xa4;-><init>()V

    .line 4
    iget-object v3, v1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object v3, v3, Lcom/shabakaty/downloader/dp2$g;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iget-object v3, v1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object v3, v3, Lcom/shabakaty/downloader/dp2$g;->e:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->g:Ljava/util/List;

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

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/dp2;->a()Lcom/shabakaty/downloader/dp2$c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/dp2$c;->b(Ljava/util/List;)Lcom/shabakaty/downloader/dp2$c;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/dp2$c;->a()Lcom/shabakaty/downloader/dp2;

    move-result-object v1

    :cond_3
    move-object v6, v1

    .line 13
    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->b:Lcom/shabakaty/downloader/vl0$a;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->c:Lcom/shabakaty/downloader/kd;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->d:Lcom/shabakaty/downloader/w01;

    .line 14
    check-cast v2, Lcom/shabakaty/downloader/vn0;

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/vn0;->b(Lcom/shabakaty/downloader/dp2;)Lcom/shabakaty/downloader/u01;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->e:Lcom/shabakaty/downloader/gj2;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->f:J

    const/16 v16, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/wa4;Lcom/shabakaty/downloader/vl0$a;Lcom/shabakaty/downloader/ra3$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lcom/shabakaty/downloader/kd;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/gj2;JLcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$a;)V

    return-object v1
.end method
