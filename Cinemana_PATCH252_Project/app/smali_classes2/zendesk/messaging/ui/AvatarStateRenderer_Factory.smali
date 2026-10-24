.class public final Lzendesk/messaging/ui/AvatarStateRenderer_Factory;
.super Ljava/lang/Object;
.source "AvatarStateRenderer_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final picassoProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/squareup/picasso/k;",
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
            "Lcom/squareup/picasso/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;->picassoProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/ui/AvatarStateRenderer_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/squareup/picasso/k;",
            ">;)",
            "Lzendesk/messaging/ui/AvatarStateRenderer_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;

    invoke-direct {v0, p0}, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;-><init>(Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;->get()Lzendesk/messaging/ui/AvatarStateRenderer;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/ui/AvatarStateRenderer;
    .locals 2

    .line 2
    new-instance v0, Lzendesk/messaging/ui/AvatarStateRenderer;

    iget-object v1, p0, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;->picassoProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/k;

    invoke-direct {v0, v1}, Lzendesk/messaging/ui/AvatarStateRenderer;-><init>(Lcom/squareup/picasso/k;)V

    return-object v0
.end method
