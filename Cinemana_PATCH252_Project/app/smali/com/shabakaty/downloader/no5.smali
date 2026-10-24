.class public final Lcom/shabakaty/downloader/no5;
.super Lcom/shabakaty/downloader/vu4;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/br3$d;


# instance fields
.field public final b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

.field public final c:J

.field public final d:Lcom/shabakaty/downloader/de5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;JLcom/shabakaty/downloader/de5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vu4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/no5;->b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/no5;->c:J

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/no5;->d:Lcom/shabakaty/downloader/de5;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/no5;->f()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/no5;->g()V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/no5;->f()V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/xw;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/no5;->c:J

    invoke-virtual {p1, p0, v0, v1}, Lcom/shabakaty/downloader/br3;->a(Lcom/shabakaty/downloader/br3$d;J)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/no5;->f()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/br3;->r(Lcom/shabakaty/downloader/br3$d;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/no5;->f()V

    return-void
.end method

.method public final f()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/no5;->g()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->d()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->k()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/no5;->b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_3

    .line 10
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/i4;

    if-eqz v3, :cond_2

    .line 12
    iget-wide v3, v3, Lcom/shabakaty/downloader/i4;->r:J

    const-wide/16 v5, -0x3e8

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 13
    iget-object v3, p0, Lcom/shabakaty/downloader/no5;->d:Lcom/shabakaty/downloader/de5;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/de5;->a()I

    move-result v3

    goto :goto_2

    .line 14
    :cond_3
    iget-object v5, p0, Lcom/shabakaty/downloader/no5;->d:Lcom/shabakaty/downloader/de5;

    .line 15
    invoke-virtual {v5}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v4, v3

    .line 16
    iget-object v3, p0, Lcom/shabakaty/downloader/no5;->d:Lcom/shabakaty/downloader/de5;

    .line 17
    invoke-virtual {v3}, Lcom/shabakaty/downloader/de5;->a()I

    move-result v3

    .line 18
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    if-ltz v3, :cond_2

    .line 19
    new-instance v4, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$a;

    invoke-direct {v4, v3}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$a;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_4
    :goto_3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->setAdBreaks(Ljava/util/List;)V

    return-void

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/no5;->b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->setAdBreaks(Ljava/util/List;)V

    return-void
.end method

.method public final g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/no5;->b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/no5;->b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/no5;->h()I

    move-result v0

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/no5;->d:Lcom/shabakaty/downloader/de5;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/de5;->a()I

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/shabakaty/downloader/no5;->d:Lcom/shabakaty/downloader/de5;

    const-wide/16 v5, 0x0

    .line 9
    invoke-virtual {v4}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v4, v5

    .line 10
    iget-object v5, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v5, :cond_3

    .line 11
    invoke-virtual {v5}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v5}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    iget-object v5, p0, Lcom/shabakaty/downloader/no5;->d:Lcom/shabakaty/downloader/de5;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/de5;->e()I

    move-result v5

    goto :goto_3

    .line 14
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/no5;->h()I

    move-result v5

    .line 15
    :goto_3
    iget-object v6, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v6, :cond_5

    .line 16
    invoke-virtual {v6}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 17
    invoke-virtual {v6}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_4

    .line 18
    :cond_4
    iget-object v6, p0, Lcom/shabakaty/downloader/no5;->d:Lcom/shabakaty/downloader/de5;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/de5;->f()I

    move-result v6

    goto :goto_5

    .line 19
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/no5;->h()I

    move-result v6

    .line 20
    :goto_5
    iget-object v7, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v7, :cond_6

    .line 21
    invoke-virtual {v7}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 22
    invoke-virtual {v7}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    .line 23
    :goto_6
    iget-object v7, p0, Lcom/shabakaty/downloader/no5;->b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 24
    iget-boolean v8, v7, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->s:Z

    if-eqz v8, :cond_7

    goto :goto_7

    .line 25
    :cond_7
    new-instance v8, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$b;

    invoke-direct {v8}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$b;-><init>()V

    .line 26
    iput v0, v8, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$b;->a:I

    .line 27
    iput v3, v8, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$b;->b:I

    .line 28
    iput v4, v8, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$b;->c:I

    .line 29
    iput v5, v8, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$b;->d:I

    .line 30
    iput v6, v8, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$b;->e:I

    .line 31
    iput-boolean v2, v8, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$b;->f:Z

    .line 32
    iput-object v8, v7, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->r:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$b;

    const/4 v0, 0x0

    .line 33
    iput-object v0, v7, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->t:Ljava/lang/Integer;

    .line 34
    iget-object v0, v7, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->v:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$c;

    if-eqz v0, :cond_8

    .line 35
    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$c;->a(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;IZ)V

    .line 36
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->postInvalidate()V

    :goto_7
    return-void
.end method

.method public final h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/no5;->d:Lcom/shabakaty/downloader/de5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de5;->d()I

    move-result v0

    return v0
.end method
