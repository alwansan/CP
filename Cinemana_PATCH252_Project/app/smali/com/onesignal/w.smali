.class public Lcom/onesignal/w;
.super Lcom/onesignal/x0$d;
.source "OSInAppMessageController.java"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/j23;

.field public final synthetic b:Lcom/onesignal/x;


# direct methods
.method public constructor <init>(Lcom/onesignal/x;Lcom/shabakaty/downloader/j23;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/w;->b:Lcom/onesignal/x;

    iput-object p2, p0, Lcom/onesignal/w;->a:Lcom/shabakaty/downloader/j23;

    invoke-direct {p0}, Lcom/onesignal/x0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/onesignal/w;->b:Lcom/onesignal/x;

    const-string v0, "engagement"

    invoke-static {p3, v0, p1, p2}, Lcom/onesignal/x;->k(Lcom/onesignal/x;Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onesignal/w;->b:Lcom/onesignal/x;

    .line 3
    iget-object p1, p1, Lcom/onesignal/x;->C:Ljava/util/Set;

    .line 4
    iget-object p2, p0, Lcom/onesignal/w;->a:Lcom/shabakaty/downloader/j23;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/j23;->a:Ljava/lang/String;

    .line 6
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/w;->b:Lcom/onesignal/x;

    const-string v1, "engagement"

    invoke-static {v0, v1, p1}, Lcom/onesignal/x;->j(Lcom/onesignal/x;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/onesignal/w;->b:Lcom/onesignal/x;

    .line 3
    iget-object v0, v0, Lcom/onesignal/x;->C:Ljava/util/Set;

    const-string v1, "PREFS_OS_CLICKED_CLICK_IDS_IAMS"

    .line 4
    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
