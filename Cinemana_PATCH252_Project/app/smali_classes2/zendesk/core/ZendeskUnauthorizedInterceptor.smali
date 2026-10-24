.class Lzendesk/core/ZendeskUnauthorizedInterceptor;
.super Ljava/lang/Object;
.source "ZendeskUnauthorizedInterceptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# instance fields
.field private final sessionStorage:Lzendesk/core/SessionStorage;


# direct methods
.method public constructor <init>(Lzendesk/core/SessionStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskUnauthorizedInterceptor;->sessionStorage:Lzendesk/core/SessionStorage;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ws3;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x191

    .line 3
    iget v1, p1, Lcom/shabakaty/downloader/ws3;->v:I

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lzendesk/core/ZendeskUnauthorizedInterceptor;->onHttpUnauthorized()V

    :cond_0
    return-object p1
.end method

.method public onHttpUnauthorized()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskUnauthorizedInterceptor;->sessionStorage:Lzendesk/core/SessionStorage;

    invoke-interface {v0}, Lzendesk/core/SessionStorage;->clear()V

    return-void
.end method
