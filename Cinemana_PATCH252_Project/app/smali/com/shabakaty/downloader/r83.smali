.class public final Lcom/shabakaty/downloader/r83;
.super Ljava/lang/Object;
.source "OutputConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/r83$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/r83$a;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/u83;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/u83;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/r83;->a:Lcom/shabakaty/downloader/r83$a;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/t83;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/t83;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/r83;->a:Lcom/shabakaty/downloader/r83$a;

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/s83;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/s83;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/r83;->a:Lcom/shabakaty/downloader/r83$a;

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/v83;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/v83;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/r83;->a:Lcom/shabakaty/downloader/r83$a;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/r83$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/r83;->a:Lcom/shabakaty/downloader/r83$a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/r83;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r83;->a:Lcom/shabakaty/downloader/r83$a;

    check-cast p1, Lcom/shabakaty/downloader/r83;

    iget-object p1, p1, Lcom/shabakaty/downloader/r83;->a:Lcom/shabakaty/downloader/r83$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r83;->a:Lcom/shabakaty/downloader/r83$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
