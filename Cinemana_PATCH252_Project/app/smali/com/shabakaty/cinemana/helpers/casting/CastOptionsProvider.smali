.class public final Lcom/shabakaty/cinemana/helpers/casting/CastOptionsProvider;
.super Ljava/lang/Object;
.source "CastOptionsProvider.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l83;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/helpers/casting/CastOptionsProvider;",
        "Lcom/shabakaty/downloader/l83;",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/a24;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/content/Context;)Lcom/shabakaty/downloader/vw;
    .locals 40

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v5, Lcom/shabakaty/downloader/if2;

    invoke-direct {v5}, Lcom/shabakaty/downloader/if2;-><init>()V

    .line 3
    sget-object v7, Lcom/shabakaty/downloader/a13;->X:Ljava/util/List;

    .line 4
    sget-object v8, Lcom/shabakaty/downloader/a13;->Y:[I

    const-string v0, "smallIconDrawableResId"

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v12

    const-string v0, "stopLiveStreamDrawableResId"

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v13

    const-string v0, "pauseDrawableResId"

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v14

    const-string v0, "playDrawableResId"

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v15

    const-string v0, "skipNextDrawableResId"

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v16

    const-string v0, "skipPrevDrawableResId"

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v17

    const-string v0, "forwardDrawableResId"

    .line 11
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v18

    const-string v0, "forward10DrawableResId"

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v19

    const-string v0, "forward30DrawableResId"

    .line 13
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v20

    const-string v0, "rewindDrawableResId"

    .line 14
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v21

    const-string v0, "rewind10DrawableResId"

    .line 15
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v22

    const-string v0, "rewind30DrawableResId"

    .line 16
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v23

    const-string v0, "disconnectDrawableResId"

    .line 17
    invoke-static {v0}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v24

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/a13;

    move-object v6, v0

    const-string v1, "notificationImageSizeDimenResId"

    .line 19
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v25

    const-string v1, "castingToDeviceStringResId"

    .line 20
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v26

    const-string v1, "stopLiveStreamStringResId"

    .line 21
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v27

    const-string v1, "pauseStringResId"

    .line 22
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v28

    const-string v1, "playStringResId"

    .line 23
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v29

    const-string v1, "skipNextStringResId"

    .line 24
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v30

    const-string v1, "skipPrevStringResId"

    .line 25
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v31

    const-string v1, "forwardStringResId"

    .line 26
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v32

    const-string v1, "forward10StringResId"

    .line 27
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v33

    const-string v1, "forward30StringResId"

    .line 28
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v34

    const-string v1, "rewindStringResId"

    .line 29
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v35

    const-string v1, "rewind10StringResId"

    .line 30
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v36

    const-string v1, "rewind30StringResId"

    .line 31
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v37

    const-string v1, "disconnectStringResId"

    .line 32
    invoke-static {v1}, Lcom/shabakaty/downloader/a13$a;->a(Ljava/lang/String;)I

    move-result v38

    const-wide/16 v9, 0x2710

    const/4 v11, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v6 .. v39}, Lcom/shabakaty/downloader/a13;-><init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIILandroid/os/IBinder;)V

    .line 33
    const-class v1, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    .line 35
    new-instance v7, Lcom/shabakaty/downloader/uw;

    const-string v26, "com.google.android.gms.cast.framework.media.MediaIntentReceiver"

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v25, v7

    move-object/from16 v29, v0

    invoke-direct/range {v25 .. v31}, Lcom/shabakaty/downloader/uw;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/shabakaty/downloader/a13;ZZ)V

    .line 36
    new-instance v0, Lcom/shabakaty/downloader/vw;

    const-string v2, "EB81536B"

    const/4 v4, 0x0

    const/4 v8, 0x1

    const-wide v9, 0x3fa99999a0000000L    # 0.05000000074505806

    const/4 v11, 0x0

    move-object v1, v0

    move v6, v8

    invoke-direct/range {v1 .. v11}, Lcom/shabakaty/downloader/vw;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/shabakaty/downloader/if2;ZLcom/shabakaty/downloader/uw;ZDZ)V

    return-object v0
.end method
