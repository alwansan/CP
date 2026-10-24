.class public Lcom/onesignal/a1;
.super Lcom/onesignal/x0$d;
.source "OneSignalRestClientWrapper.java"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/m73;


# direct methods
.method public constructor <init>(Lcom/onesignal/b1;Lcom/shabakaty/downloader/m73;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/onesignal/a1;->a:Lcom/shabakaty/downloader/m73;

    invoke-direct {p0}, Lcom/onesignal/x0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onesignal/a1;->a:Lcom/shabakaty/downloader/m73;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/m73;->b(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onesignal/a1;->a:Lcom/shabakaty/downloader/m73;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/m73;->a(Ljava/lang/String;)V

    return-void
.end method
