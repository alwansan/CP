.class public final Lcom/shabakaty/downloader/s30;
.super Ljava/lang/Object;
.source "ClientInformationModule_ProvideUserManagementConfiguration$app_productionBetaReleaseFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pd0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/s30;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s30;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/wt2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/s30;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/s30;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/xl2;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/s30;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/s30;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zl2;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/s30;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/s30;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/shabakaty/downloader/s30;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s30;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/zl2;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/kw1;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/kw1;-><init>(Lcom/shabakaty/downloader/kw1$b;I)V

    return-object v0

    .line 4
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/s30;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/pd0;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/pd0;->a:Landroid/content/Context;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 7
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/s30;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/wt2;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    .line 10
    new-instance v8, Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    const-string v2, "com.shabakaty"

    const-string v3, "Shabakaty.Mobile"

    const-string v4, "secret"

    const-string v5, "openid email offline_access earthlink.profile fileservice songster"

    const-string v6, "cTnj9bUcDmr08B586K7pGFHy"

    const-string v7, "809377071843-jc87v0q9i2f0k20sncd3rordaj79e1ul.apps.googleusercontent.com"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/usermanagement/data/model/ClientInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "https://account.shabakaty.com/"

    move-object v1, v0

    move-object v3, v8

    .line 11
    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;-><init>(Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/ClientInformation;ZLcom/shabakaty/usermanagement/data/model/ClientInformation;ILcom/shabakaty/downloader/nn0;)V

    return-object v0

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s30;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/xl2;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;-><init>()V

    const v2, 0x1343c9a

    .line 15
    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;->notificationId(I)Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;

    move-result-object v0

    const-string v2, "com.shabakaty.downloader.CHANNEL_ID"

    .line 16
    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;->notificationChannelId(Ljava/lang/String;)Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;

    move-result-object v0

    const-string v2, "Shabakaty Downloader"

    .line 17
    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;->notificationChannelName(Ljava/lang/String;)Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;->needRecreateChannelId(Z)Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig$Builder;->build()Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;

    move-result-object v0

    const-string v1, "Builder()\n\t\t\t\t.notificat\u2026nnelId(true)\n\t\t\t\t.build()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
