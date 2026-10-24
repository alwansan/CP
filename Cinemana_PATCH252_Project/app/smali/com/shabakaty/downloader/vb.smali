.class public Lcom/shabakaty/downloader/vb;
.super Ljava/lang/Object;
.source "AppUpdater.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/shabakaty/downloader/ch2;

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Landroidx/appcompat/app/b;

.field public p:Lcom/google/android/material/snackbar/Snackbar;

.field public q:Ljava/lang/Boolean;

.field public r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/vb;->r:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ch2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ch2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vb;->b:Lcom/shabakaty/downloader/ch2;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/vb;->c:I

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/vb;->d:I

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/vb;->e:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/vb;->g:Ljava/lang/Integer;

    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/shabakaty/downloader/vb;->h:Ljava/lang/Boolean;

    const v0, 0x7f08024c

    .line 10
    iput v0, p0, Lcom/shabakaty/downloader/vb;->n:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/vb;->i:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/vb;->m:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/vb;->k:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/vb;->j:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120026

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/vb;->l:Ljava/lang/String;

    .line 16
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/shabakaty/downloader/vb;->q:Ljava/lang/Boolean;

    .line 17
    new-instance p1, Lcom/shabakaty/downloader/lo0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/lo0;-><init>()V

    .line 18
    sget-object v0, Lcom/shabakaty/downloader/u80;->f:Lcom/shabakaty/downloader/u80;

    const/16 v1, 0x4e20

    .line 19
    iput v1, v0, Lcom/shabakaty/downloader/u80;->a:I

    .line 20
    iput v1, v0, Lcom/shabakaty/downloader/u80;->b:I

    const-string v1, "PRDownloader"

    .line 21
    iput-object v1, v0, Lcom/shabakaty/downloader/u80;->c:Ljava/lang/String;

    .line 22
    iput-object p1, v0, Lcom/shabakaty/downloader/u80;->d:Lcom/shabakaty/downloader/bw1;

    .line 23
    new-instance p1, Lcom/shabakaty/downloader/zl2;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    iput-object p1, v0, Lcom/shabakaty/downloader/u80;->e:Lcom/shabakaty/downloader/jm0;

    .line 24
    invoke-static {}, Lcom/shabakaty/downloader/qy0;->a()Lcom/shabakaty/downloader/qy0;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/vb;Landroid/content/Context;Lcom/shabakaty/downloader/rw4;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result p0

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f12002e

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p3, v1, [Ljava/lang/Object;

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/rw4;->a:Ljava/lang/String;

    aput-object p2, p3, v0

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/jz4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12002f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    .line 7
    iget-object p2, p2, Lcom/shabakaty/downloader/rw4;->a:Ljava/lang/String;

    aput-object p2, p1, v0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 9
    :cond_2
    iget-object p0, p2, Lcom/shabakaty/downloader/rw4;->c:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 12
    iget-object p3, p2, Lcom/shabakaty/downloader/rw4;->c:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12002d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 14
    iget-object p3, p2, Lcom/shabakaty/downloader/rw4;->a:Ljava/lang/String;

    aput-object p3, p1, v0

    .line 15
    iget-object p2, p2, Lcom/shabakaty/downloader/rw4;->c:Ljava/lang/String;

    aput-object p2, p1, v2

    .line 16
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f12002c

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p3, v1, [Ljava/lang/Object;

    .line 18
    iget-object p2, p2, Lcom/shabakaty/downloader/rw4;->a:Ljava/lang/String;

    aput-object p2, p3, v0

    .line 19
    invoke-static {p1}, Lcom/shabakaty/downloader/jz4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    return-object p3
.end method

.method public static b(Lcom/shabakaty/downloader/vb;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120031

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/shabakaty/downloader/jz4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
