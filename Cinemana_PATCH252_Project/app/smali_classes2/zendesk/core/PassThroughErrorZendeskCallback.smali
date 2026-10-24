.class abstract Lzendesk/core/PassThroughErrorZendeskCallback;
.super Lcom/shabakaty/downloader/n95;
.source "PassThroughErrorZendeskCallback.java"


# annotations
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
.field private final callback:Lcom/shabakaty/downloader/n95;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n95;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/n95;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/PassThroughErrorZendeskCallback;->callback:Lcom/shabakaty/downloader/n95;

    return-void
.end method


# virtual methods
.method public onError(Lcom/shabakaty/downloader/z41;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/PassThroughErrorZendeskCallback;->callback:Lcom/shabakaty/downloader/n95;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n95;->onError(Lcom/shabakaty/downloader/z41;)V

    :cond_0
    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method
