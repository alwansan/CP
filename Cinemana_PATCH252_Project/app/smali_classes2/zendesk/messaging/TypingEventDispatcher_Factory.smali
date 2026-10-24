.class public final Lzendesk/messaging/TypingEventDispatcher_Factory;
.super Ljava/lang/Object;
.source "TypingEventDispatcher_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final eventFactoryProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/EventFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final eventListenerProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final handlerProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/EventListener;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/os/Handler;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/EventFactory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/messaging/TypingEventDispatcher_Factory;->eventListenerProvider:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lzendesk/messaging/TypingEventDispatcher_Factory;->handlerProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lzendesk/messaging/TypingEventDispatcher_Factory;->eventFactoryProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/TypingEventDispatcher_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/EventListener;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/os/Handler;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/EventFactory;",
            ">;)",
            "Lzendesk/messaging/TypingEventDispatcher_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/messaging/TypingEventDispatcher_Factory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/messaging/TypingEventDispatcher_Factory;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/messaging/TypingEventDispatcher_Factory;->get()Lzendesk/messaging/TypingEventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/TypingEventDispatcher;
    .locals 4

    .line 2
    new-instance v0, Lzendesk/messaging/TypingEventDispatcher;

    iget-object v1, p0, Lzendesk/messaging/TypingEventDispatcher_Factory;->eventListenerProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/EventListener;

    iget-object v2, p0, Lzendesk/messaging/TypingEventDispatcher_Factory;->handlerProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iget-object v3, p0, Lzendesk/messaging/TypingEventDispatcher_Factory;->eventFactoryProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/messaging/EventFactory;

    invoke-direct {v0, v1, v2, v3}, Lzendesk/messaging/TypingEventDispatcher;-><init>(Lzendesk/messaging/EventListener;Landroid/os/Handler;Lzendesk/messaging/EventFactory;)V

    return-object v0
.end method
