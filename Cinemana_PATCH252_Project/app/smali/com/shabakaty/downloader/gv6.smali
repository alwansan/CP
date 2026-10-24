.class public final Lcom/shabakaty/downloader/gv6;
.super Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$c;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/wu4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wu4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/gv6;->a:Lcom/shabakaty/downloader/wu4;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;IZ)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/gv6;->a:Lcom/shabakaty/downloader/wu4;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p1, Lcom/shabakaty/downloader/wu4;->d:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fu5;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    int-to-long v2, p2

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 5
    invoke-virtual {v0, v4, v5}, Lcom/shabakaty/downloader/fu5;->f(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/gv6;->a:Lcom/shabakaty/downloader/wu4;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v2

    .line 3
    iget-object v3, v1, Lcom/shabakaty/downloader/wu4;->d:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/fu5;

    .line 4
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/fu5;->g(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/wu4;->m()Lcom/shabakaty/downloader/br3;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    iget-object v4, v1, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    int-to-long v6, v2

    .line 8
    invoke-virtual {v4}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v8

    add-long v11, v8, v6

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 9
    invoke-virtual {v3}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    .line 10
    invoke-virtual {v1, v11, v12}, Lcom/shabakaty/downloader/de5;->c(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v14, 0x0

    .line 11
    :goto_1
    new-instance v1, Lcom/shabakaty/downloader/pq2;

    const/16 v16, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/shabakaty/downloader/pq2;-><init>(JIZLorg/json/JSONObject;Lcom/shabakaty/downloader/hl3;)V

    .line 12
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/br3;->t(Lcom/shabakaty/downloader/pq2;)Lcom/shabakaty/downloader/nb3;

    :cond_2
    return-void
.end method
