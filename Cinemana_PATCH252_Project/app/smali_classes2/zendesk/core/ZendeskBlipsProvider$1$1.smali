.class Lzendesk/core/ZendeskBlipsProvider$1$1;
.super Lcom/shabakaty/downloader/n95;
.source "ZendeskBlipsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/core/ZendeskBlipsProvider$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/n95<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lzendesk/core/ZendeskBlipsProvider$1;


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskBlipsProvider$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/core/ZendeskBlipsProvider$1$1;->this$1:Lzendesk/core/ZendeskBlipsProvider$1;

    invoke-direct {p0}, Lcom/shabakaty/downloader/n95;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/shabakaty/downloader/z41;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/z41;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ZendeskBlipsProvider"

    const-string v1, "Unable to send Blip | Error: %s"

    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzendesk/core/ZendeskBlipsProvider$1$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
