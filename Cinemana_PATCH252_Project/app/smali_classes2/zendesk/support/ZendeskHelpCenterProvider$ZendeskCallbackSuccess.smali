.class public abstract Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;
.super Lcom/shabakaty/downloader/n95;
.source "ZendeskHelpCenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/ZendeskHelpCenterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ZendeskCallbackSuccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/n95<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final callback:Lcom/shabakaty/downloader/n95;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n95;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/n95;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;->callback:Lcom/shabakaty/downloader/n95;

    return-void
.end method


# virtual methods
.method public onError(Lcom/shabakaty/downloader/z41;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;->callback:Lcom/shabakaty/downloader/n95;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n95;->onError(Lcom/shabakaty/downloader/z41;)V

    :cond_0
    return-void
.end method
