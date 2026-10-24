.class public Lcom/onesignal/g0$a;
.super Lcom/onesignal/x0$d;
.source "OSReceiveReceiptController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/g0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onesignal/g0;


# direct methods
.method public constructor <init>(Lcom/onesignal/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/g0$a;->a:Lcom/onesignal/g0;

    invoke-direct {p0}, Lcom/onesignal/x0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive receipt failed with statusCode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " response: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    const/4 p3, 0x0

    .line 2
    invoke-static {p2, p1, p3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/onesignal/g0$a;->a:Lcom/onesignal/g0;

    iget-object p2, p1, Lcom/onesignal/g0;->v:Lcom/shabakaty/downloader/b43;

    iget-object p1, p1, Lcom/onesignal/g0;->u:Lcom/shabakaty/downloader/ar$a;

    .line 4
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/b43;->a(Lcom/shabakaty/downloader/ar$a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string p1, "Receive receipt sent for notificationID: "

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/onesignal/g0$a;->a:Lcom/onesignal/g0;

    iget-object v0, v0, Lcom/onesignal/g0;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/onesignal/g0$a;->a:Lcom/onesignal/g0;

    iget-object v0, p1, Lcom/onesignal/g0;->v:Lcom/shabakaty/downloader/b43;

    iget-object p1, p1, Lcom/onesignal/g0;->u:Lcom/shabakaty/downloader/ar$a;

    .line 4
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/b43;->a(Lcom/shabakaty/downloader/ar$a;)V

    return-void
.end method
