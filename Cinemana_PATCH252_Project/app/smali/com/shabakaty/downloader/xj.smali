.class public abstract Lcom/shabakaty/downloader/xj;
.super Ljava/lang/Object;
.source "BaseNotification.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/d13;

.field public b:Lcom/shabakaty/downloader/b13;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/app/NotificationManager;

.field public final e:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d13;Lcom/shabakaty/downloader/b13;Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/xj;->a:Lcom/shabakaty/downloader/d13;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/xj;->d:Landroid/app/NotificationManager;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/xj$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/xj$a;-><init>(Lcom/shabakaty/downloader/xj;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xj;->e:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xj;->c()Lcom/shabakaty/downloader/m03;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/m03;->c()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xj;->d:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xj;->d()I

    move-result v2

    instance-of v2, p0, Lcom/shabakaty/downloader/bc1;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xj;->d()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final b(ILjava/lang/Class;)Landroid/app/PendingIntent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/b13;->a()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    const-string v1, "DOWNLOAD_ID_EXTRA"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    const/high16 v1, 0x8000000

    .line 5
    invoke-static {p2, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getBroadcast(\n\t\t\tcontext\u2026t.FLAG_UPDATE_CURRENT\n\t\t)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c()Lcom/shabakaty/downloader/m03;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xj;->e:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/m03;

    return-object v0
.end method

.method public abstract d()I
.end method

.method public final e(I)I
    .locals 1

    const v0, 0x1343c9a

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, p1

    return v0
.end method

.method public abstract f(Lcom/shabakaty/downloader/m03;)Lcom/shabakaty/downloader/m03;
.end method
