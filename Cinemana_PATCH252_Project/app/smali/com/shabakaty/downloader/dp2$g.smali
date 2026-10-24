.class public final Lcom/shabakaty/downloader/dp2$g;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dp2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/shabakaty/downloader/dp2$e;

.field public final d:Lcom/shabakaty/downloader/dp2$b;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ud4;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/dp2$h;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/shabakaty/downloader/dp2$e;Lcom/shabakaty/downloader/dp2$b;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/shabakaty/downloader/dp2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/dp2$g;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/dp2$g;->c:Lcom/shabakaty/downloader/dp2$e;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/dp2$g;->d:Lcom/shabakaty/downloader/dp2$b;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/dp2$g;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/dp2$g;->f:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/shabakaty/downloader/dp2$g;->g:Ljava/util/List;

    .line 9
    iput-object p8, p0, Lcom/shabakaty/downloader/dp2$g;->h:Ljava/lang/Object;

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
    instance-of v1, p1, Lcom/shabakaty/downloader/dp2$g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/dp2$g;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2$g;->b:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->c:Lcom/shabakaty/downloader/dp2$e;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2$g;->c:Lcom/shabakaty/downloader/dp2$e;

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->d:Lcom/shabakaty/downloader/dp2$b;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2$g;->d:Lcom/shabakaty/downloader/dp2$b;

    .line 6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2$g;->e:Ljava/util/List;

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2$g;->f:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2$g;->g:Ljava/util/List;

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->h:Ljava/lang/Object;

    iget-object p1, p1, Lcom/shabakaty/downloader/dp2$g;->h:Ljava/lang/Object;

    .line 10
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
    iget-object v0, p0, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->b:Ljava/lang/String;

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

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->c:Lcom/shabakaty/downloader/dp2$e;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/dp2$e;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->d:Lcom/shabakaty/downloader/dp2$b;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/dp2$b;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/dp2$g;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/dp2$g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2$g;->h:Ljava/lang/Object;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method
