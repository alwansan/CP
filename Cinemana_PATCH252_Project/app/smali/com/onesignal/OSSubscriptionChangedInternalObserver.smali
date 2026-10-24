.class Lcom/onesignal/OSSubscriptionChangedInternalObserver;
.super Ljava/lang/Object;
.source "OSSubscriptionChangedInternalObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/onesignal/OSSubscriptionState;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/e43;

    sget-object v1, Lcom/onesignal/q0;->b0:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/OSSubscriptionState;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/e43;-><init>(Lcom/onesignal/OSSubscriptionState;Lcom/onesignal/OSSubscriptionState;)V

    .line 2
    invoke-static {}, Lcom/onesignal/q0;->x()Lcom/shabakaty/downloader/l33;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/l33;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OSSubscriptionState;

    sput-object p0, Lcom/onesignal/q0;->b0:Lcom/onesignal/OSSubscriptionState;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->v:Z

    const-string v2, "ONESIGNAL_SUBSCRIPTION_LAST"

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->s:Ljava/lang/String;

    const-string v2, "ONESIGNAL_PLAYER_ID_LAST"

    .line 7
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->t:Ljava/lang/String;

    const-string v2, "ONESIGNAL_PUSH_TOKEN_LAST"

    .line 9
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-boolean p0, p0, Lcom/onesignal/OSSubscriptionState;->u:Z

    const-string v1, "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

    invoke-static {v0, v1, p0}, Lcom/shabakaty/downloader/s73;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changed(Lcom/onesignal/OSSubscriptionState;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;->a(Lcom/onesignal/OSSubscriptionState;)V

    return-void
.end method
