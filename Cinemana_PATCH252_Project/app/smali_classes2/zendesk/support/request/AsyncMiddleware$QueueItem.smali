.class Lzendesk/support/request/AsyncMiddleware$QueueItem;
.super Ljava/lang/Object;
.source "AsyncMiddleware.java"

# interfaces
.implements Lzendesk/support/request/AsyncMiddleware$Item;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AsyncMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueItem"
.end annotation


# instance fields
.field private final asyncAction:Lzendesk/support/request/AsyncMiddleware$AsyncAction;

.field private final dispatcher:Lcom/shabakaty/downloader/eu0;

.field private final getState:Lcom/shabakaty/downloader/zp1;


# direct methods
.method private constructor <init>(Lzendesk/support/request/AsyncMiddleware$AsyncAction;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lzendesk/support/request/AsyncMiddleware$QueueItem;->asyncAction:Lzendesk/support/request/AsyncMiddleware$AsyncAction;

    .line 4
    iput-object p2, p0, Lzendesk/support/request/AsyncMiddleware$QueueItem;->getState:Lcom/shabakaty/downloader/zp1;

    .line 5
    iput-object p3, p0, Lzendesk/support/request/AsyncMiddleware$QueueItem;->dispatcher:Lcom/shabakaty/downloader/eu0;

    return-void
.end method

.method public synthetic constructor <init>(Lzendesk/support/request/AsyncMiddleware$AsyncAction;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;Lzendesk/support/request/AsyncMiddleware$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/request/AsyncMiddleware$QueueItem;-><init>(Lzendesk/support/request/AsyncMiddleware$AsyncAction;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;)V

    return-void
.end method


# virtual methods
.method public execute(Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AsyncMiddleware$QueueItem;->asyncAction:Lzendesk/support/request/AsyncMiddleware$AsyncAction;

    iget-object v1, p0, Lzendesk/support/request/AsyncMiddleware$QueueItem;->dispatcher:Lcom/shabakaty/downloader/eu0;

    iget-object v2, p0, Lzendesk/support/request/AsyncMiddleware$QueueItem;->getState:Lcom/shabakaty/downloader/zp1;

    invoke-interface {v0, v1, v2, p1}, Lzendesk/support/request/AsyncMiddleware$AsyncAction;->execute(Lcom/shabakaty/downloader/eu0;Lcom/shabakaty/downloader/zp1;Lzendesk/support/request/AsyncMiddleware$Callback;)V

    return-void
.end method
