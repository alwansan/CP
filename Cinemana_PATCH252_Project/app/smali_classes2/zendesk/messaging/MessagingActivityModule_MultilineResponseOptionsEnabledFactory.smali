.class public final Lzendesk/messaging/MessagingActivityModule_MultilineResponseOptionsEnabledFactory;
.super Ljava/lang/Object;
.source "MessagingActivityModule_MultilineResponseOptionsEnabledFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final messagingComponentProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/MessagingComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/MessagingComponent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/messaging/MessagingActivityModule_MultilineResponseOptionsEnabledFactory;->messagingComponentProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/MessagingActivityModule_MultilineResponseOptionsEnabledFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/MessagingComponent;",
            ">;)",
            "Lzendesk/messaging/MessagingActivityModule_MultilineResponseOptionsEnabledFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/messaging/MessagingActivityModule_MultilineResponseOptionsEnabledFactory;

    invoke-direct {v0, p0}, Lzendesk/messaging/MessagingActivityModule_MultilineResponseOptionsEnabledFactory;-><init>(Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static multilineResponseOptionsEnabled(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p0, Lzendesk/messaging/MessagingComponent;

    invoke-static {p0}, Lzendesk/messaging/MessagingActivityModule;->multilineResponseOptionsEnabled(Lzendesk/messaging/MessagingComponent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/messaging/MessagingActivityModule_MultilineResponseOptionsEnabledFactory;->messagingComponentProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lzendesk/messaging/MessagingActivityModule_MultilineResponseOptionsEnabledFactory;->multilineResponseOptionsEnabled(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivityModule_MultilineResponseOptionsEnabledFactory;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
