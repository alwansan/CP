.class public final Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;
.super Ljava/lang/Object;
.source "MessagingActivityModule_BelvedereUiFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final activityProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/r9;",
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
            "Lcom/shabakaty/downloader/r9;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;->activityProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static belvedereUi(Lcom/shabakaty/downloader/r9;)Lzendesk/belvedere/c;
    .locals 1

    .line 1
    invoke-static {p0}, Lzendesk/messaging/MessagingActivityModule;->belvedereUi(Lcom/shabakaty/downloader/r9;)Lzendesk/belvedere/c;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/r9;",
            ">;)",
            "Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;

    invoke-direct {v0, p0}, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;-><init>(Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;->get()Lzendesk/belvedere/c;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/belvedere/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;->activityProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/r9;

    invoke-static {v0}, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;->belvedereUi(Lcom/shabakaty/downloader/r9;)Lzendesk/belvedere/c;

    move-result-object v0

    return-object v0
.end method
