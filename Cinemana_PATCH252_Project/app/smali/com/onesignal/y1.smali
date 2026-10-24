.class public Lcom/onesignal/y1;
.super Lcom/onesignal/a$b;
.source "WebViewManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/y1$e;,
        Lcom/onesignal/y1$f;,
        Lcom/onesignal/y1$g;
    }
.end annotation


# static fields
.field public static final g:I

.field public static h:Lcom/onesignal/y1;


# instance fields
.field public a:Lcom/shabakaty/downloader/i43;

.field public b:Lcom/onesignal/m;

.field public c:Landroid/app/Activity;

.field public d:Lcom/shabakaty/downloader/i23;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    .line 1
    invoke-static {v0}, Lcom/onesignal/p0;->b(I)I

    move-result v0

    sput v0, Lcom/onesignal/y1;->g:I

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/onesignal/y1;->h:Lcom/onesignal/y1;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/i23;Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/onesignal/a$b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/onesignal/y1;->e:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/onesignal/y1;->f:Ljava/lang/Integer;

    .line 4
    iput-object p1, p0, Lcom/onesignal/y1;->d:Lcom/shabakaty/downloader/i23;

    .line 5
    iput-object p2, p0, Lcom/onesignal/y1;->c:Landroid/app/Activity;

    return-void
.end method

.method public static d(Landroid/app/Activity;Lorg/json/JSONObject;)I
    .locals 3

    :try_start_0
    const-string v0, "rect"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-static {p1}, Lcom/onesignal/p0;->b(I)I

    move-result p1

    const/4 v0, 0x6

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPageHeightData:pxHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p0}, Lcom/onesignal/p0;->c(Landroid/app/Activity;)I

    move-result p0

    sget v1, Lcom/onesignal/y1;->g:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p0, v1

    if-le p1, p0, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPageHeightData:pxHeight is over screen max: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v0, p1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x3

    const-string v0, "pageRectToViewHeight could not get page height"

    .line 8
    invoke-static {p1, v0, p0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    :cond_0
    :goto_0
    return p1
.end method

.method public static e(Lcom/onesignal/y1;Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/onesignal/y1;->a:Lcom/shabakaty/downloader/i43;

    .line 2
    sget v0, Lcom/onesignal/p0;->a:I

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 6
    sget v1, Lcom/onesignal/y1;->g:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 7
    invoke-static {p1}, Lcom/onesignal/p0;->c(Landroid/app/Activity;)I

    move-result p1

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/webkit/WebView;->layout(IIII)V

    return-void
.end method

.method public static g(Landroid/app/Activity;Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x2

    .line 2
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/onesignal/y1;

    invoke-direct {v0, p1, p0}, Lcom/onesignal/y1;-><init>(Lcom/shabakaty/downloader/i23;Landroid/app/Activity;)V

    .line 4
    sput-object v0, Lcom/onesignal/y1;->h:Lcom/onesignal/y1;

    .line 5
    new-instance p1, Lcom/onesignal/y1$c;

    invoke-direct {p1, v0, p0, p2}, Lcom/onesignal/y1$c;-><init>(Lcom/onesignal/y1;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onesignal/o0;->x(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x3

    const-string p2, "Catch on initInAppMessage: "

    .line 6
    invoke-static {p1, p2, p0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static i(Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/onesignal/q0;->l()Landroid/app/Activity;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in app message showHTMLString on currentActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v1, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/onesignal/y1;->h:Lcom/onesignal/y1;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/shabakaty/downloader/i23;->k:Z

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lcom/onesignal/y1$a;

    invoke-direct {v2, v0, p0, p1}, Lcom/onesignal/y1$a;-><init>(Landroid/app/Activity;Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onesignal/y1;->f(Lcom/onesignal/y1$f;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0, p0, p1}, Lcom/onesignal/y1;->g(Landroid/app/Activity;Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/onesignal/y1$b;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/y1$b;-><init>(Lcom/shabakaty/downloader/i23;Ljava/lang/String;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/y1;->e:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/onesignal/y1;->c:Landroid/app/Activity;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/y1;->e:Ljava/lang/String;

    const-string p1, "In app message activity available currentActivityName: "

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/onesignal/y1;->e:Ljava/lang/String;

    const-string v2, " lastActivityName: "

    invoke-static {p1, v1, v2, v0}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, p1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, v2}, Lcom/onesignal/y1;->j(Ljava/lang/Integer;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/onesignal/y1;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/onesignal/m;->h()V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/onesignal/y1;->f:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/onesignal/y1;->j(Ljava/lang/Integer;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    if-nez p1, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p1, Lcom/onesignal/m;->k:Lcom/onesignal/y1$g;

    .line 13
    sget-object v0, Lcom/onesignal/y1$g;->s:Lcom/onesignal/y1$g;

    if-ne p1, v0, :cond_4

    .line 14
    invoke-virtual {p0, v2}, Lcom/onesignal/y1;->j(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    const-string p1, "In app message new activity, calculate height and show "

    .line 15
    invoke-static {v1, p1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Lcom/onesignal/y1;->c:Landroid/app/Activity;

    new-instance v0, Lcom/onesignal/z1;

    invoke-direct {v0, p0}, Lcom/onesignal/z1;-><init>(Lcom/onesignal/y1;)V

    invoke-static {p1, v0}, Lcom/onesignal/p0;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/onesignal/q0;->u()Lcom/onesignal/x;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/y1;->d:Lcom/shabakaty/downloader/i23;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In app message OSInAppMessageController messageWasDismissed by back press: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/i23;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 3
    invoke-static {v3, v2, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/onesignal/x;->o(Lcom/shabakaty/downloader/i23;)V

    .line 5
    invoke-virtual {p0}, Lcom/onesignal/y1;->h()V

    .line 6
    iput-object v4, p0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "In app message activity stopped, cleaning views, currentActivityName: "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/y1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nactivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/y1;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmessageView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onesignal/y1;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    invoke-virtual {p1}, Lcom/onesignal/m;->h()V

    :cond_0
    return-void
.end method

.method public f(Lcom/onesignal/y1$f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/onesignal/y1$a;

    invoke-virtual {p1}, Lcom/onesignal/y1$a;->a()V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v1, Lcom/onesignal/y1$d;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/y1$d;-><init>(Lcom/onesignal/y1;Lcom/onesignal/y1$f;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/m;->e(Lcom/onesignal/y1$f;)V

    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz v0, :cond_0

    const-string v1, "com.onesignal.y1"

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/onesignal/y1;->d:Lcom/shabakaty/downloader/i23;

    iget-object v2, v2, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/a;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x4

    const-string v0, "No messageView found to update a with a new height."

    .line 2
    invoke-static {p1, v0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x6

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In app message, showing first one with height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v2, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    iget-object v2, p0, Lcom/onesignal/y1;->a:Lcom/shabakaty/downloader/i43;

    .line 6
    iput-object v2, v0, Lcom/onesignal/m;->l:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    .line 7
    iput-object p1, p0, Lcom/onesignal/y1;->f:Ljava/lang/Integer;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    iput p1, v0, Lcom/onesignal/m;->e:I

    .line 10
    new-instance v2, Lcom/onesignal/i;

    invoke-direct {v2, v0, p1}, Lcom/onesignal/i;-><init>(Lcom/onesignal/m;I)V

    invoke-static {v2}, Lcom/onesignal/o0;->x(Ljava/lang/Runnable;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    iget-object v0, p0, Lcom/onesignal/y1;->c:Landroid/app/Activity;

    .line 12
    invoke-virtual {p1, v0}, Lcom/onesignal/m;->d(Landroid/app/Activity;)V

    .line 13
    iget-object p1, p0, Lcom/onesignal/y1;->b:Lcom/onesignal/m;

    .line 14
    iget-boolean v0, p1, Lcom/onesignal/m;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p1, Lcom/onesignal/m;->h:Z

    .line 16
    invoke-virtual {p1, v1}, Lcom/onesignal/m;->f(Lcom/onesignal/y1$f;)V

    :cond_2
    return-void
.end method
