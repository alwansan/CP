.class public Lcom/shabakaty/downloader/to0;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/or3;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/shabakaty/downloader/uo2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/to0;->a:Landroid/content/Context;

    .line 3
    sget p1, Lcom/shabakaty/downloader/uo2;->a:I

    sget-object p1, Lcom/shabakaty/downloader/to2;->b:Lcom/shabakaty/downloader/to2;

    iput-object p1, p0, Lcom/shabakaty/downloader/to0;->b:Lcom/shabakaty/downloader/uo2;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Lcom/shabakaty/downloader/o25;Lcom/shabakaty/downloader/ye;Lcom/shabakaty/downloader/am4;Lcom/shabakaty/downloader/zs2;)[Lcom/shabakaty/downloader/lr3;
    .locals 12

    move-object v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/to0;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/shabakaty/downloader/to0;->b:Lcom/shabakaty/downloader/uo2;

    .line 3
    new-instance v11, Lcom/shabakaty/downloader/yo2;

    const-wide/16 v5, 0x1388

    const/4 v7, 0x1

    const/16 v10, 0x32

    move-object v2, v11

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/shabakaty/downloader/yo2;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/uo2;JZLandroid/os/Handler;Lcom/shabakaty/downloader/o25;I)V

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v11, Lcom/shabakaty/downloader/so2;->P0:Z

    .line 5
    iput-boolean v2, v11, Lcom/shabakaty/downloader/so2;->Q0:Z

    .line 6
    iput-boolean v2, v11, Lcom/shabakaty/downloader/so2;->R0:Z

    .line 7
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;

    invoke-direct {v11, p1, p2}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;-><init>(Landroid/os/Handler;Lcom/shabakaty/downloader/o25;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8
    iget-object v3, v0, Lcom/shabakaty/downloader/to0;->a:Landroid/content/Context;

    .line 9
    new-instance v10, Lcom/shabakaty/downloader/gn0;

    .line 10
    sget-object v4, Lcom/shabakaty/downloader/ke;->c:Lcom/shabakaty/downloader/ke;

    .line 11
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 13
    sget v5, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v6, 0x1

    const/16 v7, 0x11

    if-lt v5, v7, :cond_1

    sget-object v7, Lcom/shabakaty/downloader/sy4;->c:Ljava/lang/String;

    const-string v8, "Amazon"

    .line 14
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Xiaomi"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "external_surround_sound_enabled"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_2

    .line 16
    sget-object v3, Lcom/shabakaty/downloader/ke;->d:Lcom/shabakaty/downloader/ke;

    :goto_1
    move-object v5, v3

    goto :goto_3

    :cond_2
    const/16 v6, 0x1d

    const/16 v7, 0x8

    if-lt v5, v6, :cond_3

    .line 17
    invoke-static {v3}, Lcom/shabakaty/downloader/sy4;->H(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    new-instance v3, Lcom/shabakaty/downloader/ke;

    .line 19
    invoke-static {}, Lcom/shabakaty/downloader/ke$a;->a()[I

    move-result-object v4

    invoke-direct {v3, v4, v7}, Lcom/shabakaty/downloader/ke;-><init>([II)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_5

    const-string v3, "android.media.extra.AUDIO_PLUG_STATE"

    .line 20
    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    new-instance v3, Lcom/shabakaty/downloader/ke;

    const-string v5, "android.media.extra.ENCODINGS"

    .line 22
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    const-string v6, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 23
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Lcom/shabakaty/downloader/ke;-><init>([II)V

    goto :goto_1

    .line 24
    :cond_5
    :goto_2
    sget-object v3, Lcom/shabakaty/downloader/ke;->c:Lcom/shabakaty/downloader/ke;

    goto :goto_1

    .line 25
    :goto_3
    new-instance v6, Lcom/shabakaty/downloader/gn0$d;

    new-array v3, v2, [Lcom/shabakaty/downloader/qe;

    invoke-direct {v6, v3}, Lcom/shabakaty/downloader/gn0$d;-><init>([Lcom/shabakaty/downloader/qe;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    .line 26
    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/gn0;-><init>(Lcom/shabakaty/downloader/ke;Lcom/shabakaty/downloader/gn0$b;ZZI)V

    .line 27
    iget-object v5, v0, Lcom/shabakaty/downloader/to0;->a:Landroid/content/Context;

    iget-object v6, v0, Lcom/shabakaty/downloader/to0;->b:Lcom/shabakaty/downloader/uo2;

    .line 28
    new-instance v3, Lcom/shabakaty/downloader/po2;

    move-object v4, v3

    move-object v8, p1

    move-object v9, p3

    invoke-direct/range {v4 .. v10}, Lcom/shabakaty/downloader/po2;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/uo2;ZLandroid/os/Handler;Lcom/shabakaty/downloader/ye;Lcom/shabakaty/downloader/ze;)V

    .line 29
    iput-boolean v2, v3, Lcom/shabakaty/downloader/so2;->P0:Z

    .line 30
    iput-boolean v2, v3, Lcom/shabakaty/downloader/so2;->Q0:Z

    .line 31
    iput-boolean v2, v3, Lcom/shabakaty/downloader/so2;->R0:Z

    .line 32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 34
    new-instance v4, Lcom/shabakaty/downloader/bm4;

    move-object/from16 v5, p4

    invoke-direct {v4, v5, v3}, Lcom/shabakaty/downloader/bm4;-><init>(Lcom/shabakaty/downloader/am4;Landroid/os/Looper;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 36
    new-instance v4, Lcom/shabakaty/downloader/at2;

    move-object/from16 v5, p5

    invoke-direct {v4, v5, v3}, Lcom/shabakaty/downloader/at2;-><init>(Lcom/shabakaty/downloader/zs2;Landroid/os/Looper;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v3, Lcom/shabakaty/downloader/bu;

    invoke-direct {v3}, Lcom/shabakaty/downloader/bu;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v2, [Lcom/shabakaty/downloader/lr3;

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/lr3;

    return-object v1
.end method
