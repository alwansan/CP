.class public Lcom/onesignal/x$a;
.super Ljava/lang/Object;
.source "OSInAppMessageController.java"

# interfaces
.implements Lcom/onesignal/q0$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/x;->t(Lcom/shabakaty/downloader/i23;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/shabakaty/downloader/i23;

.field public final synthetic c:Lcom/onesignal/x;


# direct methods
.method public constructor <init>(Lcom/onesignal/x;ZLcom/shabakaty/downloader/i23;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/x$a;->c:Lcom/onesignal/x;

    iput-boolean p2, p0, Lcom/onesignal/x$a;->a:Z

    iput-object p3, p0, Lcom/onesignal/x$a;->b:Lcom/shabakaty/downloader/i23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/x$a;->c:Lcom/onesignal/x;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/onesignal/x;->J:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lcom/onesignal/x;->H:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/onesignal/x$a;->c:Lcom/onesignal/x;

    .line 6
    iget-object p1, p1, Lcom/onesignal/x;->I:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 7
    iget-boolean p1, p0, Lcom/onesignal/x$a;->a:Z

    if-nez p1, :cond_1

    .line 8
    sget-object p1, Lcom/onesignal/q0;->G:Lcom/onesignal/j0;

    .line 9
    iget-object v0, p0, Lcom/onesignal/x$a;->b:Lcom/shabakaty/downloader/i23;

    iget-object v0, v0, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onesignal/j0;->d(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/onesignal/x$a;->b:Lcom/shabakaty/downloader/i23;

    iget-object v0, p0, Lcom/onesignal/x$a;->c:Lcom/onesignal/x;

    .line 11
    iget-object v1, v0, Lcom/onesignal/x;->I:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Lcom/onesignal/x;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/y1;->i(Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/onesignal/x$a;->c:Lcom/onesignal/x;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p1, Lcom/onesignal/x;->I:Ljava/lang/String;

    :cond_2
    return-void
.end method
