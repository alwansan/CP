.class Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;
.super Ljava/lang/Object;
.source "OSEmailSubscriptionChangedInternalObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/shabakaty/downloader/g23;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yo4;

    sget-object v1, Lcom/onesignal/q0;->e0:Lcom/shabakaty/downloader/g23;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/g23;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/g23;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/yo4;-><init>(Lcom/shabakaty/downloader/g23;Lcom/shabakaty/downloader/g23;)V

    .line 3
    sget-object v1, Lcom/onesignal/q0;->f0:Lcom/shabakaty/downloader/l33;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/l33;

    const/4 v2, 0x1

    const-string v3, "onOSEmailSubscriptionChanged"

    invoke-direct {v1, v3, v2}, Lcom/shabakaty/downloader/l33;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/onesignal/q0;->f0:Lcom/shabakaty/downloader/l33;

    .line 5
    :cond_0
    sget-object v1, Lcom/onesignal/q0;->f0:Lcom/shabakaty/downloader/l33;

    .line 6
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/l33;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/g23;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/g23;

    sput-object p1, Lcom/onesignal/q0;->e0:Lcom/shabakaty/downloader/g23;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/shabakaty/downloader/g23;->s:Ljava/lang/String;

    const-string v2, "PREFS_ONESIGNAL_EMAIL_ID_LAST"

    .line 10
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/g23;->t:Ljava/lang/String;

    const-string v1, "PREFS_ONESIGNAL_EMAIL_ADDRESS_LAST"

    .line 12
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
