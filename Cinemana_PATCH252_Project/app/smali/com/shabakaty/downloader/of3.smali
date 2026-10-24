.class public Lcom/shabakaty/downloader/of3;
.super Lcom/shabakaty/downloader/ps;
.source "PreviewStreamStateObserver.java"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ar$a;

.field public final synthetic b:Lcom/shabakaty/downloader/st;


# direct methods
.method public constructor <init>(Landroidx/camera/view/a;Lcom/shabakaty/downloader/ar$a;Lcom/shabakaty/downloader/st;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/of3;->a:Lcom/shabakaty/downloader/ar$a;

    iput-object p3, p0, Lcom/shabakaty/downloader/of3;->b:Lcom/shabakaty/downloader/st;

    invoke-direct {p0}, Lcom/shabakaty/downloader/ps;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/ss;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/of3;->a:Lcom/shabakaty/downloader/ar$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/of3;->b:Lcom/shabakaty/downloader/st;

    check-cast p1, Lcom/shabakaty/downloader/tt;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/tt;->a(Lcom/shabakaty/downloader/ps;)V

    return-void
.end method
