.class public Lzendesk/support/ZendeskSupportBlipsProvider;
.super Ljava/lang/Object;
.source "ZendeskSupportBlipsProvider.java"

# interfaces
.implements Lzendesk/support/SupportBlipsProvider;


# instance fields
.field public blipsProvider:Lzendesk/core/BlipsProvider;


# direct methods
.method public constructor <init>(Lzendesk/core/BlipsProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ZendeskSupportBlipsProvider;->blipsProvider:Lzendesk/core/BlipsProvider;

    return-void
.end method


# virtual methods
.method public requestCreated(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/fe4;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "requestId"

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 3
    sget-object v0, Lzendesk/core/BlipsGroup;->BEHAVIOURAL:Lzendesk/core/BlipsGroup;

    const-string v1, "requestCreated"

    invoke-virtual {p0, v0, v1, p1}, Lzendesk/support/ZendeskSupportBlipsProvider;->sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public requestListViewed()V
    .locals 3

    .line 1
    sget-object v0, Lzendesk/core/BlipsGroup;->BEHAVIOURAL:Lzendesk/core/BlipsGroup;

    const-string v1, "requestListViewed"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lzendesk/support/ZendeskSupportBlipsProvider;->sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public requestUpdated(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/fe4;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "requestId"

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 3
    sget-object v0, Lzendesk/core/BlipsGroup;->BEHAVIOURAL:Lzendesk/core/BlipsGroup;

    const-string v1, "requestUpdated"

    invoke-virtual {p0, v0, v1, p1}, Lzendesk/support/ZendeskSupportBlipsProvider;->sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public requestViewed(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/fe4;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "requestId"

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 3
    sget-object v0, Lzendesk/core/BlipsGroup;->BEHAVIOURAL:Lzendesk/core/BlipsGroup;

    const-string v1, "requestViewed"

    invoke-virtual {p0, v0, v1, p1}, Lzendesk/support/ZendeskSupportBlipsProvider;->sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/BlipsGroup;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskSupportBlipsProvider;->blipsProvider:Lzendesk/core/BlipsProvider;

    new-instance v8, Lzendesk/core/UserAction;

    const-string v2, "5.0.2"

    const-string v3, "support_sdk"

    const-string v4, "SupportSDK"

    const/4 v6, 0x0

    move-object v1, v8

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lzendesk/core/UserAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v8, p1}, Lzendesk/core/BlipsProvider;->sendBlip(Lzendesk/core/UserAction;Lzendesk/core/BlipsGroup;)V

    return-void
.end method
