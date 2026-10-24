.class Lzendesk/support/RequestResponse;
.super Ljava/lang/Object;
.source "RequestResponse.java"


# instance fields
.field private lastCommentingAgents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/User;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lzendesk/support/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastCommentingAgents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/User;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/RequestResponse;->lastCommentingAgents:Ljava/util/List;

    invoke-static {v0}, Lcom/shabakaty/downloader/h50;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lzendesk/support/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/RequestResponse;->request:Lzendesk/support/Request;

    return-object v0
.end method
