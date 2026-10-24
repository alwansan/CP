.class public Lcom/shabakaty/downloader/g43;
.super Lcom/shabakaty/downloader/f43;
.source "OSTaskRemoteController.java"


# static fields
.field public static final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Lcom/onesignal/i0;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "getTags()"

    const-string v2, "setSMSNumber()"

    const-string v3, "setEmail()"

    const-string v4, "logoutSMSNumber()"

    const-string v5, "logoutEmail()"

    const-string v6, "syncHashedEmail()"

    const-string v7, "setExternalUserId()"

    const-string v8, "setLanguage()"

    const-string v9, "setSubscription()"

    const-string v10, "promptLocation()"

    const-string v11, "idsAvailable()"

    const-string v12, "sendTag()"

    const-string v13, "sendTags()"

    const-string v14, "setLocationShared()"

    const-string v15, "setDisableGMSMissingPrompt()"

    const-string v16, "setRequiresUserPrivacyConsent()"

    const-string v17, "unsubscribeWhenNotificationsAreDisabled()"

    const-string v18, "handleNotificationOpen()"

    const-string v19, "onAppLostFocus()"

    const-string v20, "sendOutcome()"

    const-string v21, "sendUniqueOutcome()"

    const-string v22, "sendOutcomeWithValue()"

    const-string v23, "removeGroupedNotifications()"

    const-string v24, "removeNotification()"

    const-string v25, "clearOneSignalNotifications()"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/shabakaty/downloader/g43;->f:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/i0;Lcom/shabakaty/downloader/b33;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/f43;-><init>(Lcom/shabakaty/downloader/b33;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/g43;->e:Lcom/onesignal/i0;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g43;->e:Lcom/onesignal/i0;

    invoke-virtual {v0}, Lcom/onesignal/i0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/g43;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
