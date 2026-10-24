.class public final Lcom/shabakaty/downloader/jv4;
.super Lcom/shabakaty/downloader/pe0;
.source "Unconfined.kt"


# static fields
.field public static final s:Lcom/shabakaty/downloader/jv4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jv4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jv4;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/jv4;->s:Lcom/shabakaty/downloader/jv4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pe0;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/shabakaty/downloader/k95;->r:Lcom/shabakaty/downloader/k95$a;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/k95;

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
