.class public final Lzendesk/messaging/ui/MessagingComposer_Factory;
.super Ljava/lang/Object;
.source "MessagingComposer_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final appCompatActivityProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/r9;",
            ">;"
        }
    .end annotation
.end field

.field public final belvedereMediaHolderProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/BelvedereMediaHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final imageStreamProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/belvedere/c;",
            ">;"
        }
    .end annotation
.end field

.field public final inputBoxAttachmentClickListenerProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/ui/InputBoxAttachmentClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public final inputBoxConsumerProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/ui/InputBoxConsumer;",
            ">;"
        }
    .end annotation
.end field

.field public final messagingViewModelProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/MessagingViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public final typingEventDispatcherProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/TypingEventDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/r9;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/MessagingViewModel;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/belvedere/c;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/BelvedereMediaHolder;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/ui/InputBoxConsumer;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/ui/InputBoxAttachmentClickListener;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/TypingEventDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->appCompatActivityProvider:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->messagingViewModelProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->imageStreamProvider:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->belvedereMediaHolderProvider:Lcom/shabakaty/downloader/oj3;

    .line 6
    iput-object p5, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->inputBoxConsumerProvider:Lcom/shabakaty/downloader/oj3;

    .line 7
    iput-object p6, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->inputBoxAttachmentClickListenerProvider:Lcom/shabakaty/downloader/oj3;

    .line 8
    iput-object p7, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->typingEventDispatcherProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/ui/MessagingComposer_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/r9;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/MessagingViewModel;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/belvedere/c;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/BelvedereMediaHolder;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/ui/InputBoxConsumer;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/ui/InputBoxAttachmentClickListener;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/TypingEventDispatcher;",
            ">;)",
            "Lzendesk/messaging/ui/MessagingComposer_Factory;"
        }
    .end annotation

    .line 1
    new-instance v8, Lzendesk/messaging/ui/MessagingComposer_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lzendesk/messaging/ui/MessagingComposer_Factory;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v8
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/messaging/ui/MessagingComposer_Factory;->get()Lzendesk/messaging/ui/MessagingComposer;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/ui/MessagingComposer;
    .locals 9

    .line 2
    new-instance v8, Lzendesk/messaging/ui/MessagingComposer;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->appCompatActivityProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/r9;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->messagingViewModelProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lzendesk/messaging/MessagingViewModel;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->imageStreamProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lzendesk/belvedere/c;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->belvedereMediaHolderProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lzendesk/messaging/BelvedereMediaHolder;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->inputBoxConsumerProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lzendesk/messaging/ui/InputBoxConsumer;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->inputBoxAttachmentClickListenerProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagingComposer_Factory;->typingEventDispatcherProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lzendesk/messaging/TypingEventDispatcher;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lzendesk/messaging/ui/MessagingComposer;-><init>(Lcom/shabakaty/downloader/r9;Lzendesk/messaging/MessagingViewModel;Lzendesk/belvedere/c;Lzendesk/messaging/BelvedereMediaHolder;Lzendesk/messaging/ui/InputBoxConsumer;Lzendesk/messaging/ui/InputBoxAttachmentClickListener;Lzendesk/messaging/TypingEventDispatcher;)V

    return-object v8
.end method
