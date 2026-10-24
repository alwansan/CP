.class public Lzendesk/support/HelpCenterCachingInterceptor;
.super Ljava/lang/Object;
.source "HelpCenterCachingInterceptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    const-string v1, "X-ZD-Cache-Control"

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/fe4;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ws3$a;-><init>(Lcom/shabakaty/downloader/ws3;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 5
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Cache-Control"

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/ws3$a;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    :cond_0
    return-object p1
.end method
