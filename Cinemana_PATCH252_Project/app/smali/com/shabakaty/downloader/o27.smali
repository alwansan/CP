.class public final Lcom/shabakaty/downloader/o27;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/br3$b;


# static fields
.field public static final m:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/vw;

.field public final c:Lcom/shabakaty/downloader/tk5;

.field public final d:Landroid/content/ComponentName;

.field public final e:Lcom/shabakaty/downloader/sm5;

.field public final f:Lcom/shabakaty/downloader/sm5;

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/lang/Runnable;

.field public i:Lcom/shabakaty/downloader/br3;

.field public j:Lcom/google/android/gms/cast/CastDevice;

.field public k:Landroid/support/v4/media/session/MediaSessionCompat;

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "MediaSessionManager"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/o27;->m:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/tk5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/o27;->b:Lcom/shabakaty/downloader/vw;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/o27;->c:Lcom/shabakaty/downloader/tk5;

    .line 5
    iget-object p3, p2, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    if-eqz p3, :cond_0

    .line 6
    iget-object p3, p3, Lcom/shabakaty/downloader/uw;->s:Ljava/lang/String;

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 8
    new-instance p3, Landroid/content/ComponentName;

    .line 9
    iget-object p2, p2, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/uw;->s:Ljava/lang/String;

    .line 11
    invoke-direct {p3, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/shabakaty/downloader/o27;->d:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/shabakaty/downloader/o27;->d:Landroid/content/ComponentName;

    .line 13
    :goto_0
    new-instance p2, Lcom/shabakaty/downloader/sm5;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/sm5;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/o27;->e:Lcom/shabakaty/downloader/sm5;

    .line 14
    new-instance p3, Lcom/shabakaty/downloader/r57;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/shabakaty/downloader/r57;-><init>(Lcom/shabakaty/downloader/o27;I)V

    .line 15
    iput-object p3, p2, Lcom/shabakaty/downloader/sm5;->f:Lcom/shabakaty/downloader/ce5;

    .line 16
    new-instance p2, Lcom/shabakaty/downloader/sm5;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/sm5;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/o27;->f:Lcom/shabakaty/downloader/sm5;

    .line 17
    new-instance p1, Lcom/shabakaty/downloader/r57;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/shabakaty/downloader/r57;-><init>(Lcom/shabakaty/downloader/o27;I)V

    .line 18
    iput-object p1, p2, Lcom/shabakaty/downloader/sm5;->f:Lcom/shabakaty/downloader/ce5;

    .line 19
    new-instance p1, Lcom/shabakaty/downloader/p36;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/p36;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/o27;->g:Landroid/os/Handler;

    .line 20
    new-instance p1, Lcom/shabakaty/downloader/zz6;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/o27;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/o27;->h:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/cast/MediaInfo;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v7, 0x0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v16, v1

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v17, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 4
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object v3, v1

    invoke-direct/range {v3 .. v19}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 5
    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->k(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 7
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v3, v2}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    .line 9
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompat$b;->g(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x200

    .line 10
    iget-object v4, v0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v4

    if-nez v4, :cond_2

    const-wide/16 v2, 0x300

    :cond_2
    move-wide v10, v2

    .line 11
    iget-object v2, v0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v2

    .line 12
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v3

    const-wide/16 v20, 0x0

    if-eqz v3, :cond_3

    move-wide/from16 v5, v20

    goto :goto_0

    .line 13
    :cond_3
    iget-wide v2, v2, Lcom/shabakaty/downloader/dr2;->x:J

    move-wide v5, v2

    .line 14
    :goto_0
    iget-object v2, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-wide/16 v7, 0x0

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v16, v3

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v17, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 17
    new-instance v4, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object v3, v4

    move-object/from16 v22, v4

    move/from16 v4, p1

    invoke-direct/range {v3 .. v19}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 18
    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    move-object/from16 v3, v22

    invoke-interface {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$b;->k(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 19
    iget-object v2, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 20
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->d:Landroid/content/ComponentName;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_1

    .line 21
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 22
    iget-object v6, v0, Lcom/shabakaty/downloader/o27;->d:Landroid/content/ComponentName;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 23
    iget-object v6, v0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    const/high16 v7, 0x8000000

    invoke-static {v6, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 24
    :goto_1
    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$b;->c(Landroid/app/PendingIntent;)V

    .line 25
    iget-object v2, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v2, :cond_b

    .line 26
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    .line 27
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    move-wide/from16 v6, v20

    goto :goto_2

    .line 28
    :cond_5
    iget-wide v6, v1, Lcom/google/android/gms/cast/MediaInfo;->v:J

    .line 29
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/o27;->g()Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v1

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    .line 30
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ip2;->o1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.media.metadata.TITLE"

    .line 31
    invoke-virtual {v1, v9, v8}, Landroid/support/v4/media/MediaMetadataCompat$b;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    .line 32
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ip2;->o1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "android.media.metadata.DISPLAY_TITLE"

    .line 33
    invoke-virtual {v1, v8, v3}, Landroid/support/v4/media/MediaMetadataCompat$b;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 34
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ip2;->o1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 35
    invoke-virtual {v1, v8, v3}, Landroid/support/v4/media/MediaMetadataCompat$b;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    const-string v3, "android.media.metadata.DURATION"

    .line 36
    sget-object v8, Landroid/support/v4/media/MediaMetadataCompat;->u:Lcom/shabakaty/downloader/ad;

    .line 37
    invoke-virtual {v8, v3}, Lcom/shabakaty/downloader/m64;->e(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_8

    .line 38
    invoke-virtual {v8, v3, v4}, Lcom/shabakaty/downloader/m64;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 39
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_7

    goto :goto_4

    .line 40
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The android.media.metadata.DURATION key cannot be used to put a long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_8
    :goto_4
    iget-object v8, v1, Landroid/support/v4/media/MediaMetadataCompat$b;->a:Landroid/os/Bundle;

    invoke-virtual {v8, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    .line 43
    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->g(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 44
    invoke-virtual {v0, v2, v5}, Lcom/shabakaty/downloader/o27;->e(Lcom/shabakaty/downloader/ip2;I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 45
    iget-object v3, v0, Lcom/shabakaty/downloader/o27;->e:Lcom/shabakaty/downloader/sm5;

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/sm5;->c(Landroid/net/Uri;)Z

    goto :goto_5

    .line 46
    :cond_9
    invoke-virtual {v0, v4, v5}, Lcom/shabakaty/downloader/o27;->c(Landroid/graphics/Bitmap;I)V

    :goto_5
    const/4 v1, 0x3

    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/o27;->e(Lcom/shabakaty/downloader/ip2;I)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 48
    iget-object v1, v0, Lcom/shabakaty/downloader/o27;->f:Lcom/shabakaty/downloader/sm5;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/sm5;->c(Landroid/net/Uri;)Z

    return-void

    .line 49
    :cond_a
    invoke-virtual {v0, v4, v1}, Lcom/shabakaty/downloader/o27;->c(Landroid/graphics/Bitmap;I)V

    :cond_b
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/o27;->j(Z)V

    return-void
.end method

.method public final c(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    const-string p2, "android.media.metadata.DISPLAY_ICON"

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o27;->g()Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/media/MediaMetadataCompat$b;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$b;

    .line 4
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 5
    iget-object p2, v0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->g(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    .line 6
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o27;->g()Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v1

    .line 10
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/media/MediaMetadataCompat$b;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$b;

    .line 11
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 12
    iget-object p2, v0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->g(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o27;->g()Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object p2

    const-string v1, "android.media.metadata.ALBUM_ART"

    .line 14
    invoke-virtual {p2, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$b;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$b;

    .line 15
    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 16
    iget-object p2, v0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->g(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_3
    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/br3;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/o27;->l:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->b:Lcom/shabakaty/downloader/vw;

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    const-string v0, "Must be called from the main thread."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/br3;->g:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/o27;->j:Lcom/google/android/gms/cast/CastDevice;

    .line 7
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->b:Lcom/shabakaty/downloader/vw;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/uw;->r:Ljava/lang/String;

    .line 10
    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->b:Lcom/shabakaty/downloader/vw;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    .line 17
    iget-boolean v0, v0, Lcom/shabakaty/downloader/uw;->w:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 18
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v3, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    const-string v4, "CastMediaSession"

    invoke-direct {v0, v3, v4, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, v1, p1}, Lcom/shabakaty/downloader/o27;->a(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 20
    iget-object p2, p0, Lcom/shabakaty/downloader/o27;->j:Lcom/google/android/gms/cast/CastDevice;

    if-eqz p2, :cond_4

    .line 21
    iget-object p2, p2, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 23
    iget-object p2, p0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    .line 25
    iget-object v4, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120052

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/shabakaty/downloader/o27;->j:Lcom/google/android/gms/cast/CastDevice;

    .line 27
    iget-object v7, v7, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 28
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 29
    sget-object v5, Landroid/support/v4/media/MediaMetadataCompat;->u:Lcom/shabakaty/downloader/ad;

    .line 30
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/m64;->e(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    .line 31
    invoke-virtual {v5, v3, p1}, Lcom/shabakaty/downloader/m64;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 32
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_2

    goto :goto_1

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The android.media.metadata.ALBUM_ARTIST key cannot be used to put a String"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_3
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 35
    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v3, v0}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    .line 36
    iget-object p2, p2, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {p2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$b;->g(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 37
    :cond_4
    new-instance p2, Lcom/shabakaty/downloader/mc7;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/mc7;-><init>(Lcom/shabakaty/downloader/o27;)V

    .line 38
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 39
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->e(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    .line 40
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->d(Z)V

    .line 41
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->c:Lcom/shabakaty/downloader/tk5;

    iget-object p2, p0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/tk5;->g2(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 42
    :cond_5
    iput-boolean v2, p0, Lcom/shabakaty/downloader/o27;->l:Z

    .line 43
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/o27;->j(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final e(Lcom/shabakaty/downloader/ip2;I)Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/o27;->b:Lcom/shabakaty/downloader/vw;

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/uw;->W0()Lcom/shabakaty/downloader/ez1;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/o27;->b:Lcom/shabakaty/downloader/vw;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    .line 6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/uw;->W0()Lcom/shabakaty/downloader/ez1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ez1;->a(Lcom/shabakaty/downloader/ip2;)Lcom/shabakaty/downloader/s55;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ip2;->D1()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    const/4 p2, 0x0

    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s55;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 10
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/downloader/s55;->s:Landroid/net/Uri;

    return-object p1
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/o27;->j(Z)V

    return-void
.end method

.method public final g()Landroid/support/v4/media/MediaMetadataCompat$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$b;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$b;-><init>()V

    return-object v0

    .line 5
    :cond_1
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$b;

    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$b;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-object v1
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->b:Lcom/shabakaty/downloader/vw;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/uw;->u:Lcom/shabakaty/downloader/a13;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/o27;->m:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Stopping notification service."

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 6
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->I:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->b:Lcom/shabakaty/downloader/vw;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/vw;->x:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public final j(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->d()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->i()Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->c()Lcom/shabakaty/downloader/sp2;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    if-nez v1, :cond_6

    :cond_5
    const/4 v2, 0x0

    .line 10
    :cond_6
    invoke-virtual {p0, v2, v0}, Lcom/shabakaty/downloader/o27;->a(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-nez v0, :cond_7

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o27;->h()V

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o27;->i()V

    return-void

    :cond_7
    if-eqz v2, :cond_1b

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->j:Lcom/google/android/gms/cast/CastDevice;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->b:Lcom/shabakaty/downloader/vw;

    sget-object v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    .line 15
    const-class v2, Lcom/google/android/gms/cast/framework/media/a;

    iget-object v0, v0, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/uw;->u:Lcom/shabakaty/downloader/a13;

    if-nez v0, :cond_8

    goto/16 :goto_a

    .line 17
    :cond_8
    iget-object v0, v0, Lcom/shabakaty/downloader/a13;->W:Lcom/shabakaty/downloader/qt5;

    if-nez v0, :cond_9

    goto/16 :goto_9

    .line 18
    :cond_9
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->a(Lcom/shabakaty/downloader/qt5;)Ljava/util/List;

    move-result-object v6

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b(Lcom/shabakaty/downloader/qt5;)[I

    move-result-object v0

    if-eqz v6, :cond_c

    .line 20
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_1

    .line 21
    :cond_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x5

    if-le v7, v8, :cond_b

    .line 22
    sget-object v7, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, " provides more than 5 actions."

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/shabakaty/downloader/pk2;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    const/4 v7, 0x1

    goto :goto_3

    .line 23
    :cond_c
    :goto_1
    sget-object v7, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, " doesn\'t provide any action."

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/shabakaty/downloader/pk2;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_12

    .line 24
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v0, :cond_11

    .line 25
    array-length v7, v0

    if-nez v7, :cond_d

    goto :goto_6

    .line 26
    :cond_d
    array-length v7, v0

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_10

    aget v9, v0, v8

    if-ltz v9, :cond_f

    if-lt v9, v6, :cond_e

    goto :goto_5

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 27
    :cond_f
    :goto_5
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "provides a compact view action whose index is out of bounds."

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v0, v2, v6}, Lcom/shabakaty/downloader/pk2;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_10
    const/4 v0, 0x1

    goto :goto_8

    .line 30
    :cond_11
    :goto_6
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v6, " doesn\'t provide any actions for compact view."

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    .line 32
    invoke-virtual {v0, v2, v6}, Lcom/shabakaty/downloader/pk2;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_12

    :goto_9
    const/4 v0, 0x1

    goto :goto_b

    :cond_12
    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_13

    goto/16 :goto_e

    .line 33
    :cond_13
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    const-class v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_media_notification_force_update"

    .line 34
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    .line 36
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/br3;->d()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    const-string v2, "extra_media_info"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    .line 39
    invoke-virtual {p1}, Lcom/shabakaty/downloader/br3;->f()I

    move-result p1

    const-string v2, "extra_remote_media_client_player_state"

    .line 40
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->j:Lcom/google/android/gms/cast/CastDevice;

    const-string v2, "extra_cast_device"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->k:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p1, :cond_14

    .line 43
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    const-string v2, "extra_media_session_token"

    .line 44
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    :cond_14
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object p1

    .line 46
    iget v2, p1, Lcom/shabakaty/downloader/dr2;->G:I

    if-eq v2, v1, :cond_18

    if-eq v2, v4, :cond_18

    if-eq v2, v3, :cond_18

    .line 47
    iget v2, p1, Lcom/shabakaty/downloader/dr2;->t:I

    .line 48
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/dr2;->o1(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 49
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    .line 50
    :goto_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 51
    iget-object p1, p1, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-ge v2, p1, :cond_16

    const/4 p1, 0x1

    goto :goto_d

    :cond_16
    const/4 p1, 0x0

    goto :goto_d

    :cond_17
    const/4 p1, 0x0

    const/4 v3, 0x0

    goto :goto_d

    :cond_18
    const/4 p1, 0x1

    const/4 v3, 0x1

    :goto_d
    const-string v2, "extra_can_skip_next"

    .line 52
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extra_can_skip_prev"

    .line 53
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    sget-object p1, Lcom/shabakaty/downloader/o27;->m:Lcom/shabakaty/downloader/pk2;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Starting notification service."

    invoke-virtual {p1, v3, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_19

    .line 56
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_e

    .line 57
    :cond_19
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    :cond_1a
    :goto_e
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/br3;->k()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 59
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/o27;->k(Z)V

    :cond_1b
    return-void
.end method

.method public final k(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->b:Lcom/shabakaty/downloader/vw;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/vw;->x:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/o27;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/o27;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcom/shabakaty/downloader/o27;->h:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final onMetadataUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/o27;->j(Z)V

    return-void
.end method

.method public final onStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/o27;->j(Z)V

    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/o27;->j(Z)V

    return-void
.end method

.method public final q()V
    .locals 0

    return-void
.end method
