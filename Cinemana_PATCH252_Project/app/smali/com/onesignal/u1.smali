.class public Lcom/onesignal/u1;
.super Lcom/onesignal/x0$d;
.source "UserStateSynchronizer.java"


# instance fields
.field public final synthetic a:Lcom/onesignal/t1;


# direct methods
.method public constructor <init>(Lcom/onesignal/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/u1;->a:Lcom/onesignal/t1;

    invoke-direct {p0}, Lcom/onesignal/x0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed last request. statusCode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nresponse: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p3, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object p3, p0, Lcom/onesignal/u1;->a:Lcom/onesignal/t1;

    const-string v0, "already logged out of email"

    invoke-static {p3, p1, p2, v0}, Lcom/onesignal/t1;->a(Lcom/onesignal/t1;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/onesignal/u1;->a:Lcom/onesignal/t1;

    invoke-static {p1}, Lcom/onesignal/t1;->b(Lcom/onesignal/t1;)V

    return-void

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/onesignal/u1;->a:Lcom/onesignal/t1;

    const-string v0, "not a valid device_type"

    invoke-static {p3, p1, p2, v0}, Lcom/onesignal/t1;->a(Lcom/onesignal/t1;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/onesignal/u1;->a:Lcom/onesignal/t1;

    invoke-static {p1}, Lcom/onesignal/t1;->c(Lcom/onesignal/t1;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/onesignal/u1;->a:Lcom/onesignal/t1;

    invoke-static {p2, p1}, Lcom/onesignal/t1;->d(Lcom/onesignal/t1;I)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/onesignal/u1;->a:Lcom/onesignal/t1;

    invoke-static {p1}, Lcom/onesignal/t1;->b(Lcom/onesignal/t1;)V

    return-void
.end method
