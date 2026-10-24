.class public Lcom/shabakaty/downloader/k03;
.super Lcom/shabakaty/downloader/r03;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k03$b;,
        Lcom/shabakaty/downloader/k03$a;
    }
.end annotation


# instance fields
.field public e:Landroid/graphics/Bitmap;

.field public f:Landroidx/core/graphics/drawable/IconCompat;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/r03;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/h03;)V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/s03;

    .line 4
    iget-object v2, p1, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    .line 5
    invoke-direct {v1, v2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/r03;->b:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/k03;->e:Landroid/graphics/Bitmap;

    .line 7
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    .line 8
    iget-boolean v2, p0, Lcom/shabakaty/downloader/k03;->g:Z

    if-eqz v2, :cond_7

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/k03;->f:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 10
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/k03$a;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_0
    const/16 v4, 0x17

    if-lt v0, v4, :cond_1

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/s03;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {v2, p1}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/k03$b;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->f()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/k03;->f:Landroidx/core/graphics/drawable/IconCompat;

    .line 15
    iget v5, p1, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    if-lt v0, v4, :cond_2

    .line 16
    iget-object p1, p1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 17
    move-object v3, p1

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    if-ne v5, v2, :cond_3

    .line 18
    iget-object p1, p1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne v5, v0, :cond_5

    .line 19
    iget-object p1, p1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 20
    :cond_4
    :goto_0
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/k03$a;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getBitmap() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/k03$a;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/Bitmap;)V

    .line 23
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/r03;->d:Z

    if-eqz p1, :cond_8

    .line 24
    iget-object p1, p0, Lcom/shabakaty/downloader/r03;->c:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/k03$a;->b(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    return-object v0
.end method

.method public k(Landroid/graphics/Bitmap;)Lcom/shabakaty/downloader/k03;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/k03;->f:Landroidx/core/graphics/drawable/IconCompat;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/k03;->g:Z

    return-object p0
.end method
