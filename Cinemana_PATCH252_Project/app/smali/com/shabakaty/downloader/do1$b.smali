.class public final Lcom/shabakaty/downloader/do1$b;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/do1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/in1<",
        "[",
        "Ljava/lang/Object;",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/l91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l91;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l91;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l91;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/do1$b;->r:Lcom/shabakaty/downloader/l91;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, [Ljava/lang/Object;

    .line 2
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/do1$b;->r:Lcom/shabakaty/downloader/l91;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object p1, p1, v3

    iget-object v0, v0, Lcom/shabakaty/downloader/l91;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/u15;

    check-cast v1, Lcom/shabakaty/downloader/tj;

    check-cast v2, Lcom/shabakaty/downloader/tj;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    const-string v3, "this$0"

    .line 4
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "videoModel"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "transcodeFiles"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "videoStatus"

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, v1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 6
    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v5, "srt"

    .line 7
    invoke-virtual {v0, v5, v3}, Lcom/shabakaty/downloader/u15;->t(Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->g(Ljava/lang/String;)V

    .line 8
    iget-object v5, v1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 9
    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v6, "vtt"

    invoke-virtual {v0, v6, v5}, Lcom/shabakaty/downloader/u15;->t(Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->i(Ljava/lang/String;)V

    .line 10
    iget-object v2, v2, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 11
    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    move-object v2, v4

    goto :goto_1

    .line 12
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 14
    check-cast v6, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;

    .line 15
    new-instance v7, Lcom/shabakaty/cinemana/domain/models/local/Quality;

    .line 16
    iget-object v8, v6, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;->resolution:Ljava/lang/String;

    .line 17
    iget-object v9, v6, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;->name:Ljava/lang/String;

    .line 18
    iget-object v6, v6, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;->videoUrl:Ljava/lang/String;

    .line 19
    invoke-direct {v7, v8, v9, v6}, Lcom/shabakaty/cinemana/domain/models/local/Quality;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {v5}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :cond_3
    invoke-virtual {v3, v2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->m(Ljava/util/List;)V

    .line 23
    iget-object v2, v1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 24
    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v2, :cond_4

    goto :goto_2

    .line 25
    :cond_4
    iget-object v2, v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->actorsInfo:Ljava/util/List;

    if-nez v2, :cond_5

    goto :goto_2

    .line 26
    :cond_5
    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ob4;

    if-nez v2, :cond_6

    :goto_2
    move-object v2, v4

    goto :goto_3

    .line 27
    :cond_6
    iget-object v2, v2, Lcom/shabakaty/downloader/ob4;->s:Ljava/lang/String;

    :goto_3
    const-string v5, "nostaff"

    .line 28
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 29
    iget-object v2, v1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 30
    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    sget-object v5, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-virtual {v2, v5}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->f(Ljava/util/List;)V

    .line 31
    :cond_8
    :goto_4
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 32
    check-cast p1, Lcom/shabakaty/downloader/q25;

    .line 33
    iput-object p1, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    .line 34
    :goto_5
    iget-object p1, v1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 35
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 36
    new-instance v2, Lcom/shabakaty/downloader/ag6;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v4}, Lcom/shabakaty/downloader/ag6;-><init>(ILcom/shabakaty/downloader/io2;)V

    .line 37
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->w:Lcom/shabakaty/downloader/xv2;

    if-nez p1, :cond_9

    move-object v3, v4

    goto :goto_6

    .line 38
    :cond_9
    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    :goto_6
    const-string v5, "1"

    .line 39
    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 40
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->filmRating:Ljava/lang/String;

    .line 41
    iget-object v2, v2, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/hd0;

    goto :goto_8

    :cond_a
    if-nez p1, :cond_b

    goto :goto_7

    .line 42
    :cond_b
    iget-object v4, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->seriesRating:Ljava/lang/String;

    .line 43
    :goto_7
    iget-object p1, v2, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/hd0;

    .line 44
    :goto_8
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 45
    iget-object v4, v1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 46
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 47
    sget-object v3, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p1

    .line 48
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object p1

    .line 49
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of size 3 expected but got "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
