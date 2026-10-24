.class public final Lcom/shabakaty/downloader/ao5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/vn5;

.field public final synthetic s:Lcom/shabakaty/downloader/vn5;

.field public final synthetic t:Lcom/shabakaty/downloader/op4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/op4;Lcom/shabakaty/downloader/vn5;Lcom/shabakaty/downloader/vn5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ao5;->t:Lcom/shabakaty/downloader/op4;

    iput-object p2, p0, Lcom/shabakaty/downloader/ao5;->r:Lcom/shabakaty/downloader/vn5;

    iput-object p3, p0, Lcom/shabakaty/downloader/ao5;->s:Lcom/shabakaty/downloader/vn5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ao5;->t:Lcom/shabakaty/downloader/op4;

    iget-object p2, p0, Lcom/shabakaty/downloader/ao5;->r:Lcom/shabakaty/downloader/vn5;

    iget-object v0, p0, Lcom/shabakaty/downloader/ao5;->s:Lcom/shabakaty/downloader/vn5;

    .line 2
    iget-boolean v1, p1, Lcom/shabakaty/downloader/op4;->H:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/shabakaty/downloader/op4;->M:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/shabakaty/downloader/vn5;->a()Lcom/google/android/gms/cast/MediaTrack;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    iget-wide v3, p2, Lcom/google/android/gms/cast/MediaTrack;->r:J

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vn5;->a()Lcom/google/android/gms/cast/MediaTrack;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 8
    iget-wide v3, p2, Lcom/google/android/gms/cast/MediaTrack;->r:J

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    iget-object p2, p1, Lcom/shabakaty/downloader/op4;->K:[J

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    array-length p2, p2

    if-lez p2, :cond_6

    .line 11
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 12
    iget-object v3, p1, Lcom/shabakaty/downloader/op4;->J:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/cast/MediaTrack;

    .line 13
    iget-wide v4, v4, Lcom/google/android/gms/cast/MediaTrack;->r:J

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    iget-object v3, p1, Lcom/shabakaty/downloader/op4;->I:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/cast/MediaTrack;

    .line 16
    iget-wide v4, v4, Lcom/google/android/gms/cast/MediaTrack;->r:J

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_4
    iget-object v3, p1, Lcom/shabakaty/downloader/op4;->K:[J

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    aget-wide v6, v3, v5

    .line 19
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 20
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [J

    .line 22
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 24
    :cond_7
    invoke-static {p2}, Ljava/util/Arrays;->sort([J)V

    .line 25
    iget-object v0, p1, Lcom/shabakaty/downloader/op4;->M:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/br3;->u([J)Lcom/shabakaty/downloader/nb3;

    .line 26
    iget-object p2, p1, Lcom/shabakaty/downloader/op4;->L:Landroid/app/Dialog;

    if-eqz p2, :cond_9

    .line 27
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 28
    iput-object v2, p1, Lcom/shabakaty/downloader/op4;->L:Landroid/app/Dialog;

    goto :goto_5

    .line 29
    :cond_8
    :goto_4
    iget-object p2, p1, Lcom/shabakaty/downloader/op4;->L:Landroid/app/Dialog;

    if-eqz p2, :cond_9

    .line 30
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 31
    iput-object v2, p1, Lcom/shabakaty/downloader/op4;->L:Landroid/app/Dialog;

    :cond_9
    :goto_5
    return-void
.end method
