.class public Lcom/onesignal/PermissionsActivity;
.super Landroid/app/Activity;
.source "PermissionsActivity.java"


# static fields
.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static b(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->r:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->s:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sput-boolean p0, Lcom/onesignal/PermissionsActivity;->t:Z

    .line 3
    new-instance p0, Lcom/onesignal/PermissionsActivity$b;

    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity$b;-><init>()V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz v0, :cond_1

    const-string v1, "com.onesignal.PermissionsActivity"

    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/onesignal/a;->a(Ljava/lang/String;Lcom/onesignal/a$b;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x7f01002b

    const v1, 0x7f01002c

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    .line 4
    :cond_0
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->r:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->r:Z

    .line 6
    sget-object v1, Lcom/onesignal/o;->i:Ljava/lang/String;

    .line 7
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/s2;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v0

    .line 8
    sput-boolean v1, Lcom/onesignal/PermissionsActivity;->u:Z

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 9
    sget-object v2, Lcom/onesignal/o;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 10
    instance-of v2, p0, Lcom/shabakaty/downloader/r7;

    if-eqz v2, :cond_1

    .line 11
    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/r7;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/r7;->validateRequestPermissionsRequestCode(I)V

    .line 12
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lcom/onesignal/q0;->F(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "android:hasCurrentPermissionsRequest"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    sput-boolean p1, Lcom/onesignal/PermissionsActivity;->r:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->a()V

    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    sget-boolean p1, Lcom/onesignal/q0;->o:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->a()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 p2, 0x1

    .line 1
    sput-boolean p2, Lcom/onesignal/PermissionsActivity;->s:Z

    const/4 p2, 0x0

    .line 2
    sput-boolean p2, Lcom/onesignal/PermissionsActivity;->r:Z

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/onesignal/PermissionsActivity$a;

    invoke-direct {p2, p0, p3}, Lcom/onesignal/PermissionsActivity$a;-><init>(Lcom/onesignal/PermissionsActivity;[I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz p1, :cond_1

    const-string p2, "com.onesignal.PermissionsActivity"

    .line 5
    invoke-virtual {p1, p2}, Lcom/onesignal/a;->e(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const p1, 0x7f01002b

    const p2, 0x7f01002c

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
