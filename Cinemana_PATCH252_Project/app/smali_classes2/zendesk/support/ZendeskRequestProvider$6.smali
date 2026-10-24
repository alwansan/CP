.class public Lzendesk/support/ZendeskRequestProvider$6;
.super Lzendesk/support/ZendeskCallbackSuccess;
.source "ZendeskRequestProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskRequestProvider;->getCommentsSince(Ljava/lang/String;Ljava/util/Date;ZLcom/shabakaty/downloader/n95;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/support/ZendeskCallbackSuccess<",
        "Lzendesk/support/SupportSdkSettings;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lzendesk/support/ZendeskRequestProvider;

.field public final synthetic val$callback:Lcom/shabakaty/downloader/n95;

.field public final synthetic val$onlyAgent:Z

.field public final synthetic val$requestId:Ljava/lang/String;

.field public final synthetic val$since:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lzendesk/support/ZendeskRequestProvider;Lcom/shabakaty/downloader/n95;Ljava/lang/String;Ljava/util/Date;ZLcom/shabakaty/downloader/n95;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/ZendeskRequestProvider$6;->this$0:Lzendesk/support/ZendeskRequestProvider;

    iput-object p3, p0, Lzendesk/support/ZendeskRequestProvider$6;->val$requestId:Ljava/lang/String;

    iput-object p4, p0, Lzendesk/support/ZendeskRequestProvider$6;->val$since:Ljava/util/Date;

    iput-boolean p5, p0, Lzendesk/support/ZendeskRequestProvider$6;->val$onlyAgent:Z

    iput-object p6, p0, Lzendesk/support/ZendeskRequestProvider$6;->val$callback:Lcom/shabakaty/downloader/n95;

    invoke-direct {p0, p2}, Lzendesk/support/ZendeskCallbackSuccess;-><init>(Lcom/shabakaty/downloader/n95;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/SupportSdkSettings;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskRequestProvider$6;->onSuccess(Lzendesk/support/SupportSdkSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/SupportSdkSettings;)V
    .locals 4

    .line 2
    invoke-static {p1}, Lzendesk/support/ZendeskRequestProvider;->access$700(Lzendesk/support/SupportSdkSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lzendesk/support/ZendeskRequestProvider$6;->this$0:Lzendesk/support/ZendeskRequestProvider;

    invoke-static {p1}, Lzendesk/support/ZendeskRequestProvider;->access$1000(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/ZendeskRequestService;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider$6;->val$requestId:Ljava/lang/String;

    iget-object v1, p0, Lzendesk/support/ZendeskRequestProvider$6;->val$since:Ljava/util/Date;

    iget-boolean v2, p0, Lzendesk/support/ZendeskRequestProvider$6;->val$onlyAgent:Z

    iget-object v3, p0, Lzendesk/support/ZendeskRequestProvider$6;->val$callback:Lcom/shabakaty/downloader/n95;

    invoke-virtual {p1, v0, v1, v2, v3}, Lzendesk/support/ZendeskRequestService;->getCommentsSince(Ljava/lang/String;Ljava/util/Date;ZLcom/shabakaty/downloader/n95;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lzendesk/support/ZendeskRequestProvider$6;->val$callback:Lcom/shabakaty/downloader/n95;

    invoke-static {p1}, Lzendesk/support/ZendeskRequestProvider;->access$900(Lcom/shabakaty/downloader/n95;)V

    :goto_0
    return-void
.end method
