.class Lzendesk/core/ZendeskBlipsProvider$1;
.super Ljava/lang/Object;
.source "ZendeskBlipsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/core/ZendeskBlipsProvider;->dispatchBlip(Lzendesk/core/BlipsRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lzendesk/core/ZendeskBlipsProvider;

.field public final synthetic val$blipsRequest:Lzendesk/core/BlipsRequest;


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskBlipsProvider;Lzendesk/core/BlipsRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/core/ZendeskBlipsProvider$1;->this$0:Lzendesk/core/ZendeskBlipsProvider;

    iput-object p2, p0, Lzendesk/core/ZendeskBlipsProvider$1;->val$blipsRequest:Lzendesk/core/BlipsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskBlipsProvider$1;->this$0:Lzendesk/core/ZendeskBlipsProvider;

    invoke-static {v0}, Lzendesk/core/ZendeskBlipsProvider;->access$000(Lzendesk/core/ZendeskBlipsProvider;)Lzendesk/core/Serializer;

    move-result-object v0

    iget-object v1, p0, Lzendesk/core/ZendeskBlipsProvider$1;->val$blipsRequest:Lzendesk/core/BlipsRequest;

    invoke-interface {v0, v1}, Lzendesk/core/Serializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/core/ZendeskBlipsProvider$1;->this$0:Lzendesk/core/ZendeskBlipsProvider;

    invoke-static {v1}, Lzendesk/core/ZendeskBlipsProvider;->access$100(Lzendesk/core/ZendeskBlipsProvider;)Lzendesk/core/BlipsService;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Lzendesk/core/BlipsService;->send(Ljava/lang/String;)Lcom/shabakaty/downloader/nq;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/mt3;

    new-instance v2, Lzendesk/core/ZendeskBlipsProvider$1$1;

    invoke-direct {v2, p0}, Lzendesk/core/ZendeskBlipsProvider$1$1;-><init>(Lzendesk/core/ZendeskBlipsProvider$1;)V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/mt3;-><init>(Lcom/shabakaty/downloader/n95;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/nq;->c0(Lcom/shabakaty/downloader/xq;)V

    return-void
.end method
