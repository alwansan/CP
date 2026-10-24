.class public Lcom/shabakaty/downloader/s03;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Lcom/shabakaty/downloader/h03;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/Notification$Builder;

.field public final c:Lcom/shabakaty/downloader/m03;

.field public d:Landroid/widget/RemoteViews;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/os/Bundle;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/m03;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/shabakaty/downloader/s03;->e:Ljava/util/List;

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Lcom/shabakaty/downloader/s03;->f:Landroid/os/Bundle;

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/s03;->c:Lcom/shabakaty/downloader/m03;

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/m03;->a:Landroid/content/Context;

    iput-object v2, v0, Lcom/shabakaty/downloader/s03;->a:Landroid/content/Context;

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 7
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lcom/shabakaty/downloader/m03;->a:Landroid/content/Context;

    iget-object v5, v1, Lcom/shabakaty/downloader/m03;->x:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lcom/shabakaty/downloader/m03;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    .line 9
    :goto_0
    iget-object v2, v1, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    .line 10
    iget-object v4, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    iget-wide v5, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->icon:I

    iget v6, v2, Landroid/app/Notification;->iconLevel:I

    .line 11
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 12
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    .line 13
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->vibrate:[J

    .line 14
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->ledARGB:I

    iget v7, v2, Landroid/app/Notification;->ledOnMS:I

    iget v8, v2, Landroid/app/Notification;->ledOffMS:I

    .line 15
    invoke-virtual {v4, v5, v7, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 16
    :goto_1
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 17
    :goto_2
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 18
    :goto_3
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->defaults:I

    .line 19
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Lcom/shabakaty/downloader/m03;->e:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Lcom/shabakaty/downloader/m03;->f:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 22
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Lcom/shabakaty/downloader/m03;->g:Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 24
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    .line 25
    :goto_4
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Lcom/shabakaty/downloader/m03;->h:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Lcom/shabakaty/downloader/m03;->i:I

    .line 27
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Lcom/shabakaty/downloader/m03;->n:I

    iget v7, v1, Lcom/shabakaty/downloader/m03;->o:I

    iget-boolean v9, v1, Lcom/shabakaty/downloader/m03;->p:Z

    .line 28
    invoke-virtual {v4, v5, v7, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 29
    iget-object v4, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    iget-object v5, v1, Lcom/shabakaty/downloader/m03;->m:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 30
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Lcom/shabakaty/downloader/m03;->j:I

    .line 31
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 32
    iget-object v4, v1, Lcom/shabakaty/downloader/m03;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v9, "android.support.allowGeneratedReplies"

    const/16 v10, 0x17

    const/16 v11, 0x1d

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/j03;

    .line 33
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    invoke-virtual {v5}, Lcom/shabakaty/downloader/j03;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v14

    if-lt v13, v10, :cond_6

    .line 35
    new-instance v10, Landroid/app/Notification$Action$Builder;

    if-eqz v14, :cond_5

    .line 36
    invoke-virtual {v14}, Landroidx/core/graphics/drawable/IconCompat;->i()Landroid/graphics/drawable/Icon;

    move-result-object v13

    goto :goto_6

    :cond_5
    move-object v13, v6

    .line 37
    :goto_6
    iget-object v14, v5, Lcom/shabakaty/downloader/j03;->j:Ljava/lang/CharSequence;

    .line 38
    iget-object v15, v5, Lcom/shabakaty/downloader/j03;->k:Landroid/app/PendingIntent;

    .line 39
    invoke-direct {v10, v13, v14, v15}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_8

    .line 40
    :cond_6
    new-instance v10, Landroid/app/Notification$Action$Builder;

    if-eqz v14, :cond_7

    .line 41
    invoke-virtual {v14}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v13

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    .line 42
    :goto_7
    iget-object v14, v5, Lcom/shabakaty/downloader/j03;->j:Ljava/lang/CharSequence;

    .line 43
    iget-object v15, v5, Lcom/shabakaty/downloader/j03;->k:Landroid/app/PendingIntent;

    .line 44
    invoke-direct {v10, v13, v14, v15}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 45
    :goto_8
    iget-object v13, v5, Lcom/shabakaty/downloader/j03;->c:[Lcom/shabakaty/downloader/ar3;

    if-eqz v13, :cond_a

    .line 46
    array-length v14, v13

    new-array v15, v14, [Landroid/app/RemoteInput;

    const/4 v3, 0x0

    .line 47
    :goto_9
    array-length v12, v13

    if-ge v3, v12, :cond_9

    .line 48
    aget-object v12, v13, v3

    .line 49
    new-instance v7, Landroid/app/RemoteInput$Builder;

    .line 50
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v7, v6}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v7, v6}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v7

    .line 52
    invoke-virtual {v7, v6}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v7

    .line 53
    invoke-virtual {v7, v8}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v7

    .line 54
    invoke-virtual {v7, v6}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v7

    .line 55
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v11, :cond_8

    .line 56
    invoke-virtual {v7, v8}, Landroid/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;

    .line 57
    :cond_8
    invoke-virtual {v7}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v7

    .line 58
    aput-object v7, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v14, :cond_a

    .line 59
    aget-object v7, v15, v3

    .line 60
    invoke-virtual {v10, v7}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 61
    :cond_a
    iget-object v3, v5, Lcom/shabakaty/downloader/j03;->a:Landroid/os/Bundle;

    if-eqz v3, :cond_b

    .line 62
    new-instance v3, Landroid/os/Bundle;

    .line 63
    iget-object v7, v5, Lcom/shabakaty/downloader/j03;->a:Landroid/os/Bundle;

    .line 64
    invoke-direct {v3, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_b

    .line 65
    :cond_b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 66
    :goto_b
    iget-boolean v7, v5, Lcom/shabakaty/downloader/j03;->e:Z

    .line 67
    invoke-virtual {v3, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v7, v9, :cond_c

    .line 69
    iget-boolean v9, v5, Lcom/shabakaty/downloader/j03;->e:Z

    .line 70
    invoke-virtual {v10, v9}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 71
    :cond_c
    iget v9, v5, Lcom/shabakaty/downloader/j03;->g:I

    const-string v12, "android.support.action.semanticAction"

    .line 72
    invoke-virtual {v3, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v9, 0x1c

    if-lt v7, v9, :cond_d

    .line 73
    iget v9, v5, Lcom/shabakaty/downloader/j03;->g:I

    .line 74
    invoke-virtual {v10, v9}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    :cond_d
    if-lt v7, v11, :cond_e

    .line 75
    iget-boolean v7, v5, Lcom/shabakaty/downloader/j03;->h:Z

    .line 76
    invoke-virtual {v10, v7}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 77
    :cond_e
    iget-boolean v5, v5, Lcom/shabakaty/downloader/j03;->f:Z

    const-string v7, "android.support.action.showsUserInterface"

    .line 78
    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {v10, v3}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 80
    iget-object v3, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    const/16 v3, 0x1a

    goto/16 :goto_5

    .line 81
    :cond_f
    iget-object v3, v1, Lcom/shabakaty/downloader/m03;->t:Landroid/os/Bundle;

    if-eqz v3, :cond_10

    .line 82
    iget-object v4, v0, Lcom/shabakaty/downloader/s03;->f:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 83
    :cond_10
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    iget-object v4, v1, Lcom/shabakaty/downloader/m03;->w:Landroid/widget/RemoteViews;

    iput-object v4, v0, Lcom/shabakaty/downloader/s03;->d:Landroid/widget/RemoteViews;

    .line 85
    iget-object v4, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    iget-boolean v5, v1, Lcom/shabakaty/downloader/m03;->k:Z

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 86
    iget-object v4, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    iget-boolean v5, v1, Lcom/shabakaty/downloader/m03;->s:Z

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Lcom/shabakaty/downloader/m03;->q:Ljava/lang/String;

    .line 87
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/shabakaty/downloader/m03;->r:Z

    .line 88
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 90
    iget v4, v1, Lcom/shabakaty/downloader/m03;->z:I

    iput v4, v0, Lcom/shabakaty/downloader/s03;->g:I

    .line 91
    iget-object v4, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Lcom/shabakaty/downloader/m03;->u:I

    .line 92
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Lcom/shabakaty/downloader/m03;->v:I

    .line 93
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 94
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v2, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 95
    invoke-virtual {v4, v5, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    const/16 v2, 0x1c

    if-ge v3, v2, :cond_11

    .line 96
    iget-object v2, v1, Lcom/shabakaty/downloader/m03;->c:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/shabakaty/downloader/s03;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/shabakaty/downloader/m03;->C:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/s03;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_c

    .line 97
    :cond_11
    iget-object v2, v1, Lcom/shabakaty/downloader/m03;->C:Ljava/util/ArrayList;

    :goto_c
    if-eqz v2, :cond_12

    .line 98
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 99
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    iget-object v4, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_d

    .line 101
    :cond_12
    iget-object v2, v1, Lcom/shabakaty/downloader/m03;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_19

    .line 102
    iget-object v2, v1, Lcom/shabakaty/downloader/m03;->t:Landroid/os/Bundle;

    if-nez v2, :cond_13

    .line 103
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lcom/shabakaty/downloader/m03;->t:Landroid/os/Bundle;

    .line 104
    :cond_13
    iget-object v2, v1, Lcom/shabakaty/downloader/m03;->t:Landroid/os/Bundle;

    const-string v3, "android.car.EXTENSIONS"

    .line 105
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_14

    .line 106
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 107
    :cond_14
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 108
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x0

    .line 109
    :goto_e
    iget-object v10, v1, Lcom/shabakaty/downloader/m03;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_17

    .line 110
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/shabakaty/downloader/m03;->d:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/j03;

    .line 112
    sget-object v13, Lcom/shabakaty/downloader/t03;->a:Ljava/lang/Object;

    .line 113
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 114
    invoke-virtual {v12}, Lcom/shabakaty/downloader/j03;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v14

    if-eqz v14, :cond_15

    .line 115
    invoke-virtual {v14}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v14

    goto :goto_f

    :cond_15
    const/4 v14, 0x0

    :goto_f
    const-string v15, "icon"

    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    iget-object v14, v12, Lcom/shabakaty/downloader/j03;->j:Ljava/lang/CharSequence;

    const-string v15, "title"

    .line 117
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 118
    iget-object v14, v12, Lcom/shabakaty/downloader/j03;->k:Landroid/app/PendingIntent;

    const-string v15, "actionIntent"

    .line 119
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    iget-object v14, v12, Lcom/shabakaty/downloader/j03;->a:Landroid/os/Bundle;

    if-eqz v14, :cond_16

    .line 121
    new-instance v14, Landroid/os/Bundle;

    .line 122
    iget-object v15, v12, Lcom/shabakaty/downloader/j03;->a:Landroid/os/Bundle;

    .line 123
    invoke-direct {v14, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_10

    .line 124
    :cond_16
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 125
    :goto_10
    iget-boolean v15, v12, Lcom/shabakaty/downloader/j03;->e:Z

    .line 126
    invoke-virtual {v14, v9, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v15, "extras"

    .line 127
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    iget-object v14, v12, Lcom/shabakaty/downloader/j03;->c:[Lcom/shabakaty/downloader/ar3;

    .line 129
    invoke-static {v14}, Lcom/shabakaty/downloader/t03;->a([Lcom/shabakaty/downloader/ar3;)[Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "remoteInputs"

    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 130
    iget-boolean v14, v12, Lcom/shabakaty/downloader/j03;->f:Z

    const-string v15, "showsUserInterface"

    .line 131
    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    iget v12, v12, Lcom/shabakaty/downloader/j03;->g:I

    const-string v14, "semanticAction"

    .line 133
    invoke-virtual {v13, v14, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {v5, v10, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_17
    const-string v7, "invisible_actions"

    .line 135
    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    iget-object v5, v1, Lcom/shabakaty/downloader/m03;->t:Landroid/os/Bundle;

    if-nez v5, :cond_18

    .line 138
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v1, Lcom/shabakaty/downloader/m03;->t:Landroid/os/Bundle;

    .line 139
    :cond_18
    iget-object v5, v1, Lcom/shabakaty/downloader/m03;->t:Landroid/os/Bundle;

    .line 140
    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 141
    iget-object v2, v0, Lcom/shabakaty/downloader/s03;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    :cond_19
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1a

    .line 143
    iget-object v3, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    iget-object v4, v1, Lcom/shabakaty/downloader/m03;->t:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 144
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 145
    iget-object v3, v1, Lcom/shabakaty/downloader/m03;->w:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_1a

    .line 146
    iget-object v4, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_1a
    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1b

    .line 147
    iget-object v3, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 148
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 149
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-wide v4, v1, Lcom/shabakaty/downloader/m03;->y:J

    .line 150
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Lcom/shabakaty/downloader/m03;->z:I

    .line 151
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 152
    iget-object v3, v1, Lcom/shabakaty/downloader/m03;->x:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 153
    iget-object v3, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 155
    invoke-virtual {v3, v8, v8, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_1b
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1c

    .line 157
    iget-object v2, v1, Lcom/shabakaty/downloader/m03;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/bc3;

    .line 158
    iget-object v4, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v3, Landroid/app/Person$Builder;

    invoke-direct {v3}, Landroid/app/Person$Builder;-><init>()V

    .line 160
    invoke-virtual {v3, v6}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v3

    .line 161
    invoke-virtual {v3, v6}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v3

    .line 162
    invoke-virtual {v3, v6}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v3

    .line 163
    invoke-virtual {v3, v6}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v3

    .line 164
    invoke-virtual {v3, v8}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v3

    .line 165
    invoke-virtual {v3, v8}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v3

    .line 167
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    goto :goto_11

    .line 168
    :cond_1c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_1d

    .line 169
    iget-object v2, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/m03;->A:Z

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 170
    iget-object v1, v0, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    :cond_1d
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 1
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/dd;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/dd;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/dd;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dd;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/bc3;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/bc3;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final c(Landroid/app/Notification;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 3
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    .line 4
    iput v0, p1, Landroid/app/Notification;->defaults:I

    return-void
.end method
