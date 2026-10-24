.class public final Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;
.super Ljava/lang/Object;
.source "InputBoxAttachmentClickListener_Factory.java"

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


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/r9;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/belvedere/c;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/BelvedereMediaHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;->activityProvider:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;->imageStreamProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;->belvedereMediaHolderProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/r9;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/belvedere/c;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/BelvedereMediaHolder;",
            ">;)",
            "Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;->get()Lzendesk/messaging/ui/InputBoxAttachmentClickListener;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/ui/InputBoxAttachmentClickListener;
    .locals 4

    .line 2
    new-instance v0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;

    iget-object v1, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;->activityProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/r9;

    iget-object v2, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;->imageStreamProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/belvedere/c;

    iget-object v3, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;->belvedereMediaHolderProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/messaging/BelvedereMediaHolder;

    invoke-direct {v0, v1, v2, v3}, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;-><init>(Lcom/shabakaty/downloader/r9;Lzendesk/belvedere/c;Lzendesk/messaging/BelvedereMediaHolder;)V

    return-object v0
.end method
