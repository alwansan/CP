.class public final Lcom/shabakaty/downloader/dp2;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dp2$d;,
        Lcom/shabakaty/downloader/dp2$h;,
        Lcom/shabakaty/downloader/dp2$f;,
        Lcom/shabakaty/downloader/dp2$g;,
        Lcom/shabakaty/downloader/dp2$b;,
        Lcom/shabakaty/downloader/dp2$e;,
        Lcom/shabakaty/downloader/dp2$c;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/shabakaty/downloader/dp2$g;

.field public final c:Lcom/shabakaty/downloader/dp2$f;

.field public final d:Lcom/shabakaty/downloader/hp2;

.field public final e:Lcom/shabakaty/downloader/dp2$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dp2$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dp2$c;-><init>()V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dp2$c;->a()Lcom/shabakaty/downloader/dp2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/dp2$d;Lcom/shabakaty/downloader/dp2$g;Lcom/shabakaty/downloader/dp2$f;Lcom/shabakaty/downloader/hp2;Lcom/shabakaty/downloader/dp2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/dp2;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/dp2;->d:Lcom/shabakaty/downloader/hp2;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/dp2;->e:Lcom/shabakaty/downloader/dp2$d;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/dp2$c;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dp2$c;

    .line 2
    invoke-direct {v0}, Lcom/shabakaty/downloader/dp2$c;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->e:Lcom/shabakaty/downloader/dp2$d;

    iget-wide v2, v1, Lcom/shabakaty/downloader/dp2$d;->b:J

    .line 4
    iget-boolean v2, v1, Lcom/shabakaty/downloader/dp2$d;->c:Z

    iput-boolean v2, v0, Lcom/shabakaty/downloader/dp2$c;->e:Z

    .line 5
    iget-boolean v2, v1, Lcom/shabakaty/downloader/dp2$d;->d:Z

    iput-boolean v2, v0, Lcom/shabakaty/downloader/dp2$c;->f:Z

    .line 6
    iget-wide v2, v1, Lcom/shabakaty/downloader/dp2$d;->a:J

    iput-wide v2, v0, Lcom/shabakaty/downloader/dp2$c;->d:J

    .line 7
    iget-boolean v1, v1, Lcom/shabakaty/downloader/dp2$d;->e:Z

    iput-boolean v1, v0, Lcom/shabakaty/downloader/dp2$c;->g:Z

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/shabakaty/downloader/dp2$c;->a:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->d:Lcom/shabakaty/downloader/hp2;

    iput-object v1, v0, Lcom/shabakaty/downloader/dp2$c;->v:Lcom/shabakaty/downloader/hp2;

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v2, v1, Lcom/shabakaty/downloader/dp2$f;->a:J

    iput-wide v2, v0, Lcom/shabakaty/downloader/dp2$c;->w:J

    .line 11
    iget-wide v2, v1, Lcom/shabakaty/downloader/dp2$f;->b:J

    iput-wide v2, v0, Lcom/shabakaty/downloader/dp2$c;->x:J

    .line 12
    iget-wide v2, v1, Lcom/shabakaty/downloader/dp2$f;->c:J

    iput-wide v2, v0, Lcom/shabakaty/downloader/dp2$c;->y:J

    .line 13
    iget v2, v1, Lcom/shabakaty/downloader/dp2$f;->d:F

    iput v2, v0, Lcom/shabakaty/downloader/dp2$c;->z:F

    .line 14
    iget v1, v1, Lcom/shabakaty/downloader/dp2$f;->e:F

    iput v1, v0, Lcom/shabakaty/downloader/dp2$c;->A:F

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    if-eqz v1, :cond_1

    .line 16
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2$g;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/shabakaty/downloader/dp2$c;->q:Ljava/lang/String;

    .line 17
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2$g;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/shabakaty/downloader/dp2$c;->c:Ljava/lang/String;

    .line 18
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    iput-object v2, v0, Lcom/shabakaty/downloader/dp2$c;->b:Landroid/net/Uri;

    .line 19
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2$g;->e:Ljava/util/List;

    iput-object v2, v0, Lcom/shabakaty/downloader/dp2$c;->p:Ljava/util/List;

    .line 20
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2$g;->g:Ljava/util/List;

    iput-object v2, v0, Lcom/shabakaty/downloader/dp2$c;->r:Ljava/util/List;

    .line 21
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2$g;->h:Ljava/lang/Object;

    iput-object v2, v0, Lcom/shabakaty/downloader/dp2$c;->u:Ljava/lang/Object;

    .line 22
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2$g;->c:Lcom/shabakaty/downloader/dp2$e;

    if-eqz v2, :cond_0

    .line 23
    iget-object v3, v2, Lcom/shabakaty/downloader/dp2$e;->b:Landroid/net/Uri;

    iput-object v3, v0, Lcom/shabakaty/downloader/dp2$c;->h:Landroid/net/Uri;

    .line 24
    iget-object v3, v2, Lcom/shabakaty/downloader/dp2$e;->c:Ljava/util/Map;

    iput-object v3, v0, Lcom/shabakaty/downloader/dp2$c;->i:Ljava/util/Map;

    .line 25
    iget-boolean v3, v2, Lcom/shabakaty/downloader/dp2$e;->d:Z

    iput-boolean v3, v0, Lcom/shabakaty/downloader/dp2$c;->k:Z

    .line 26
    iget-boolean v3, v2, Lcom/shabakaty/downloader/dp2$e;->f:Z

    iput-boolean v3, v0, Lcom/shabakaty/downloader/dp2$c;->m:Z

    .line 27
    iget-boolean v3, v2, Lcom/shabakaty/downloader/dp2$e;->e:Z

    iput-boolean v3, v0, Lcom/shabakaty/downloader/dp2$c;->l:Z

    .line 28
    iget-object v3, v2, Lcom/shabakaty/downloader/dp2$e;->g:Ljava/util/List;

    iput-object v3, v0, Lcom/shabakaty/downloader/dp2$c;->n:Ljava/util/List;

    .line 29
    iget-object v3, v2, Lcom/shabakaty/downloader/dp2$e;->a:Ljava/util/UUID;

    iput-object v3, v0, Lcom/shabakaty/downloader/dp2$c;->j:Ljava/util/UUID;

    .line 30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/dp2$e;->a()[B

    move-result-object v2

    iput-object v2, v0, Lcom/shabakaty/downloader/dp2$c;->o:[B

    .line 31
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/dp2$g;->d:Lcom/shabakaty/downloader/dp2$b;

    if-eqz v1, :cond_1

    .line 32
    iget-object v2, v1, Lcom/shabakaty/downloader/dp2$b;->a:Landroid/net/Uri;

    iput-object v2, v0, Lcom/shabakaty/downloader/dp2$c;->s:Landroid/net/Uri;

    .line 33
    iget-object v1, v1, Lcom/shabakaty/downloader/dp2$b;->b:Ljava/lang/Object;

    iput-object v1, v0, Lcom/shabakaty/downloader/dp2$c;->t:Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/dp2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/dp2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->e:Lcom/shabakaty/downloader/dp2$d;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2;->e:Lcom/shabakaty/downloader/dp2$d;

    .line 4
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/dp2$d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    iget-object v3, p1, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    .line 6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->d:Lcom/shabakaty/downloader/hp2;

    iget-object p1, p1, Lcom/shabakaty/downloader/dp2;->d:Lcom/shabakaty/downloader/hp2;

    .line 7
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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dp2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/dp2$g;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/dp2$f;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/dp2;->e:Lcom/shabakaty/downloader/dp2$d;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dp2$d;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/dp2;->d:Lcom/shabakaty/downloader/hp2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/hp2;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
