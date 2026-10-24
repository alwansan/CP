.class public final Lcom/shabakaty/downloader/xj$a;
.super Lcom/shabakaty/downloader/af2;
.source "BaseNotification.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xj;-><init>(Lcom/shabakaty/downloader/d13;Lcom/shabakaty/downloader/b13;Landroid/content/Context;Landroid/app/NotificationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/m03;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xj;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xj;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xj$a;->r:Lcom/shabakaty/downloader/xj;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xj$a;->r:Lcom/shabakaty/downloader/xj;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "com.shabakaty.downloader.CHANNEL_ID"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/m03;

    iget-object v3, v0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Lcom/shabakaty/downloader/m03;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/m03;

    iget-object v3, v0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    const/4 v4, 0x0

    .line 5
    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/m03;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    iput-object v2, v1, Lcom/shabakaty/downloader/m03;->x:Ljava/lang/String;

    .line 7
    :goto_0
    iget-object v2, v0, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 8
    iget-object v2, v2, Lcom/shabakaty/downloader/b13;->r:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/m03;->g(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    .line 10
    iget-object v2, v0, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/b13;->s:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/m03;->f(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    .line 13
    iget-object v2, v0, Lcom/shabakaty/downloader/xj;->b:Lcom/shabakaty/downloader/b13;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/b13;->r:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/m03;->n(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    .line 16
    iget-object v2, v0, Lcom/shabakaty/downloader/xj;->c:Landroid/content/Context;

    const v3, 0x7f06005f

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/d91;->b(Landroid/content/Context;I)I

    move-result v2

    .line 17
    iput v2, v1, Lcom/shabakaty/downloader/m03;->u:I

    .line 18
    iget-object v2, v0, Lcom/shabakaty/downloader/xj;->a:Lcom/shabakaty/downloader/d13;

    .line 19
    iget-object v2, v2, Lcom/shabakaty/downloader/d13;->t:Landroid/app/PendingIntent;

    .line 20
    iput-object v2, v1, Lcom/shabakaty/downloader/m03;->g:Landroid/app/PendingIntent;

    .line 21
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xj;->f(Lcom/shabakaty/downloader/m03;)Lcom/shabakaty/downloader/m03;

    move-result-object v0

    return-object v0
.end method
