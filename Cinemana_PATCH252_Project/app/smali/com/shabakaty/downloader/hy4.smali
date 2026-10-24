.class public Lcom/shabakaty/downloader/hy4;
.super Lcom/onesignal/n1;
.source "UserStateEmail.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "email"

    .line 1
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/onesignal/n1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/onesignal/n1;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/hy4;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/hy4;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
