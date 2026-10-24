.class public Lcom/shabakaty/downloader/j03;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:[Lcom/shabakaty/downloader/ar3;

.field public final d:[Lcom/shabakaty/downloader/ar3;

.field public e:Z

.field public f:Z

.field public final g:I

.field public final h:Z

.field public i:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 1
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v11}, Lcom/shabakaty/downloader/j03;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lcom/shabakaty/downloader/ar3;[Lcom/shabakaty/downloader/ar3;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lcom/shabakaty/downloader/ar3;[Lcom/shabakaty/downloader/ar3;ZIZZ)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/j03;->f:Z

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/j03;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/j03;->i:I

    .line 8
    :cond_0
    invoke-static {p2}, Lcom/shabakaty/downloader/m03;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/j03;->j:Ljava/lang/CharSequence;

    .line 9
    iput-object p3, p0, Lcom/shabakaty/downloader/j03;->k:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, Lcom/shabakaty/downloader/j03;->a:Landroid/os/Bundle;

    .line 11
    iput-object p5, p0, Lcom/shabakaty/downloader/j03;->c:[Lcom/shabakaty/downloader/ar3;

    .line 12
    iput-object p6, p0, Lcom/shabakaty/downloader/j03;->d:[Lcom/shabakaty/downloader/ar3;

    .line 13
    iput-boolean p7, p0, Lcom/shabakaty/downloader/j03;->e:Z

    .line 14
    iput p8, p0, Lcom/shabakaty/downloader/j03;->g:I

    .line 15
    iput-boolean p9, p0, Lcom/shabakaty/downloader/j03;->f:Z

    .line 16
    iput-boolean p10, p0, Lcom/shabakaty/downloader/j03;->h:Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j03;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/shabakaty/downloader/j03;->i:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    .line 2
    invoke-static {v1, v2, v0}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/j03;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/j03;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method
