.class public Lcom/onesignal/x$b;
.super Lcom/onesignal/x0$d;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/x;->p(Lcom/shabakaty/downloader/i23;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/i23;

.field public final synthetic b:Lcom/onesignal/x;


# direct methods
.method public constructor <init>(Lcom/onesignal/x;Lcom/shabakaty/downloader/i23;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/x$b;->b:Lcom/onesignal/x;

    iput-object p2, p0, Lcom/onesignal/x$b;->a:Lcom/shabakaty/downloader/i23;

    invoke-direct {p0}, Lcom/onesignal/x0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/onesignal/x$b;->b:Lcom/onesignal/x;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p3, Lcom/onesignal/x;->G:Z

    const-string v1, "html"

    .line 3
    invoke-static {p3, v1, p1, p2}, Lcom/onesignal/x;->k(Lcom/onesignal/x;Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    sget-object p2, Lcom/onesignal/o0;->a:[I

    array-length p3, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p3, :cond_1

    aget v3, p2, v1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/onesignal/x$b;->b:Lcom/onesignal/x;

    .line 6
    iget p2, p1, Lcom/onesignal/x;->L:I

    const/4 p3, 0x3

    if-lt p2, p3, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p2, v2

    .line 7
    iput p2, p1, Lcom/onesignal/x;->L:I

    .line 8
    iget-object p2, p0, Lcom/onesignal/x$b;->a:Lcom/shabakaty/downloader/i23;

    .line 9
    invoke-virtual {p1, p2}, Lcom/onesignal/x;->D(Lcom/shabakaty/downloader/i23;)V

    return-void

    .line 10
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/onesignal/x$b;->b:Lcom/onesignal/x;

    .line 11
    iput v0, p1, Lcom/onesignal/x;->L:I

    .line 12
    iget-object p2, p0, Lcom/onesignal/x$b;->a:Lcom/shabakaty/downloader/i23;

    invoke-virtual {p1, p2, v2}, Lcom/onesignal/x;->z(Lcom/shabakaty/downloader/i23;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/x$b;->b:Lcom/onesignal/x;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/onesignal/x;->L:I

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "html"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "display_duration"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/onesignal/x$b;->a:Lcom/shabakaty/downloader/i23;

    .line 7
    iput-wide v0, v2, Lcom/shabakaty/downloader/i23;->f:D

    .line 8
    iget-object v0, p0, Lcom/onesignal/x$b;->b:Lcom/onesignal/x;

    .line 9
    iget-boolean v1, v0, Lcom/onesignal/x;->J:Z

    if-eqz v1, :cond_0

    .line 10
    iput-object p1, v0, Lcom/onesignal/x;->I:Ljava/lang/String;

    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/onesignal/q0;->G:Lcom/onesignal/j0;

    .line 12
    iget-object v1, v2, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onesignal/j0;->d(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/onesignal/x$b;->a:Lcom/shabakaty/downloader/i23;

    iget-object v1, p0, Lcom/onesignal/x$b;->b:Lcom/onesignal/x;

    invoke-virtual {v1, p1}, Lcom/onesignal/x;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onesignal/y1;->i(Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
