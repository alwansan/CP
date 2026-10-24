.class public Lzendesk/messaging/ui/LostConnectionBanner$4;
.super Lcom/shabakaty/downloader/gq4;
.source "LostConnectionBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/LostConnectionBanner;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lzendesk/messaging/ui/LostConnectionBanner;


# direct methods
.method public constructor <init>(Lzendesk/messaging/ui/LostConnectionBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$4;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    invoke-direct {p0}, Lcom/shabakaty/downloader/gq4;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/shabakaty/downloader/dq4;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$4;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    invoke-virtual {p1}, Lzendesk/messaging/ui/LostConnectionBanner;->hide()V

    .line 2
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$4;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    invoke-static {p1}, Lzendesk/messaging/ui/LostConnectionBanner;->access$200(Lzendesk/messaging/ui/LostConnectionBanner;)Lcom/shabakaty/downloader/iq4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/iq4;->O(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/iq4;

    return-void
.end method
