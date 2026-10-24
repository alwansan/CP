.class Lzendesk/support/request/StateProgress;
.super Ljava/lang/Object;
.source "StateProgress.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final runningRequests:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    return-void
.end method

.method public static fomState(Lcom/shabakaty/downloader/ec4;)Lzendesk/support/request/StateProgress;
    .locals 1

    .line 1
    const-class v0, Lzendesk/support/request/StateProgress;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ec4;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/request/StateProgress;

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lzendesk/support/request/StateProgress;

    invoke-direct {p0}, Lzendesk/support/request/StateProgress;-><init>()V

    return-object p0
.end method


# virtual methods
.method public decrement()Lzendesk/support/request/StateProgress;
    .locals 2

    .line 1
    iget v0, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    if-lez v0, :cond_0

    .line 2
    new-instance v1, Lzendesk/support/request/StateProgress;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v0}, Lzendesk/support/request/StateProgress;-><init>(I)V

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Lzendesk/support/request/StateProgress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/support/request/StateProgress;-><init>(I)V

    return-object v0
.end method

.method public getRunningRequests()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    return v0
.end method

.method public increment()Lzendesk/support/request/StateProgress;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/StateProgress;

    iget v1, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lzendesk/support/request/StateProgress;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Progress{runningRequests="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/q12;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
