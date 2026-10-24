.class public final Lcom/shabakaty/downloader/dp2$h;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dp2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/dp2$h;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/dp2$h;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/dp2$h;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/dp2$h;->d:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/shabakaty/downloader/dp2$h;->e:I

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/dp2$h;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/dp2$h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/dp2$h;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$h;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2$h;->a:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$h;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2$h;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$h;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2$h;->c:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/shabakaty/downloader/dp2$h;->d:I

    iget v3, p1, Lcom/shabakaty/downloader/dp2$h;->d:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/shabakaty/downloader/dp2$h;->e:I

    iget v3, p1, Lcom/shabakaty/downloader/dp2$h;->e:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$h;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/dp2$h;->f:Ljava/lang/String;

    .line 6
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dp2$h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$h;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$h;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/dp2$h;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/dp2$h;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$h;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method
