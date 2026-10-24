.class public final Lcom/shabakaty/downloader/gc0;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/gc0$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/shabakaty/downloader/gc0;


# instance fields
.field public a:Landroidx/work/c;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:Lcom/shabakaty/downloader/id0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gc0$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gc0$a;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/gc0;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/gc0;-><init>(Lcom/shabakaty/downloader/gc0$a;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/gc0;->i:Lcom/shabakaty/downloader/gc0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/work/c;->r:Landroidx/work/c;

    iput-object v0, p0, Lcom/shabakaty/downloader/gc0;->a:Landroidx/work/c;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/gc0;->f:J

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/gc0;->g:J

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/id0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/id0;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/gc0;->h:Lcom/shabakaty/downloader/id0;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gc0$a;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Landroidx/work/c;->r:Landroidx/work/c;

    iput-object v0, p0, Lcom/shabakaty/downloader/gc0;->a:Landroidx/work/c;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/shabakaty/downloader/gc0;->f:J

    .line 9
    iput-wide v0, p0, Lcom/shabakaty/downloader/gc0;->g:J

    .line 10
    new-instance v2, Lcom/shabakaty/downloader/id0;

    invoke-direct {v2}, Lcom/shabakaty/downloader/id0;-><init>()V

    iput-object v2, p0, Lcom/shabakaty/downloader/gc0;->h:Lcom/shabakaty/downloader/id0;

    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lcom/shabakaty/downloader/gc0;->b:Z

    .line 12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iput-boolean v2, p0, Lcom/shabakaty/downloader/gc0;->c:Z

    .line 13
    iget-object v2, p1, Lcom/shabakaty/downloader/gc0$a;->a:Landroidx/work/c;

    iput-object v2, p0, Lcom/shabakaty/downloader/gc0;->a:Landroidx/work/c;

    .line 14
    iget-boolean v2, p1, Lcom/shabakaty/downloader/gc0$a;->b:Z

    iput-boolean v2, p0, Lcom/shabakaty/downloader/gc0;->d:Z

    .line 15
    iget-boolean v2, p1, Lcom/shabakaty/downloader/gc0$a;->c:Z

    iput-boolean v2, p0, Lcom/shabakaty/downloader/gc0;->e:Z

    const/16 v2, 0x18

    if-lt v3, v2, :cond_0

    .line 16
    iget-object p1, p1, Lcom/shabakaty/downloader/gc0$a;->d:Lcom/shabakaty/downloader/id0;

    iput-object p1, p0, Lcom/shabakaty/downloader/gc0;->h:Lcom/shabakaty/downloader/id0;

    .line 17
    iput-wide v0, p0, Lcom/shabakaty/downloader/gc0;->f:J

    .line 18
    iput-wide v0, p0, Lcom/shabakaty/downloader/gc0;->g:J

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gc0;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Landroidx/work/c;->r:Landroidx/work/c;

    iput-object v0, p0, Lcom/shabakaty/downloader/gc0;->a:Landroidx/work/c;

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/shabakaty/downloader/gc0;->f:J

    .line 22
    iput-wide v0, p0, Lcom/shabakaty/downloader/gc0;->g:J

    .line 23
    new-instance v0, Lcom/shabakaty/downloader/id0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/id0;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/gc0;->h:Lcom/shabakaty/downloader/id0;

    .line 24
    iget-boolean v0, p1, Lcom/shabakaty/downloader/gc0;->b:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/gc0;->b:Z

    .line 25
    iget-boolean v0, p1, Lcom/shabakaty/downloader/gc0;->c:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/gc0;->c:Z

    .line 26
    iget-object v0, p1, Lcom/shabakaty/downloader/gc0;->a:Landroidx/work/c;

    iput-object v0, p0, Lcom/shabakaty/downloader/gc0;->a:Landroidx/work/c;

    .line 27
    iget-boolean v0, p1, Lcom/shabakaty/downloader/gc0;->d:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/gc0;->d:Z

    .line 28
    iget-boolean v0, p1, Lcom/shabakaty/downloader/gc0;->e:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/gc0;->e:Z

    .line 29
    iget-object p1, p1, Lcom/shabakaty/downloader/gc0;->h:Lcom/shabakaty/downloader/id0;

    iput-object p1, p0, Lcom/shabakaty/downloader/gc0;->h:Lcom/shabakaty/downloader/id0;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1
    const-class v1, Lcom/shabakaty/downloader/gc0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/gc0;

    .line 3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/gc0;->b:Z

    iget-boolean v2, p1, Lcom/shabakaty/downloader/gc0;->b:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-boolean v1, p0, Lcom/shabakaty/downloader/gc0;->c:Z

    iget-boolean v2, p1, Lcom/shabakaty/downloader/gc0;->c:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 5
    :cond_3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/gc0;->d:Z

    iget-boolean v2, p1, Lcom/shabakaty/downloader/gc0;->d:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 6
    :cond_4
    iget-boolean v1, p0, Lcom/shabakaty/downloader/gc0;->e:Z

    iget-boolean v2, p1, Lcom/shabakaty/downloader/gc0;->e:Z

    if-eq v1, v2, :cond_5

    return v0

    .line 7
    :cond_5
    iget-wide v1, p0, Lcom/shabakaty/downloader/gc0;->f:J

    iget-wide v3, p1, Lcom/shabakaty/downloader/gc0;->f:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    return v0

    .line 8
    :cond_6
    iget-wide v1, p0, Lcom/shabakaty/downloader/gc0;->g:J

    iget-wide v3, p1, Lcom/shabakaty/downloader/gc0;->g:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    return v0

    .line 9
    :cond_7
    iget-object v1, p0, Lcom/shabakaty/downloader/gc0;->a:Landroidx/work/c;

    iget-object v2, p1, Lcom/shabakaty/downloader/gc0;->a:Landroidx/work/c;

    if-eq v1, v2, :cond_8

    return v0

    .line 10
    :cond_8
    iget-object v0, p0, Lcom/shabakaty/downloader/gc0;->h:Lcom/shabakaty/downloader/id0;

    iget-object p1, p1, Lcom/shabakaty/downloader/gc0;->h:Lcom/shabakaty/downloader/id0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/id0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gc0;->a:Landroidx/work/c;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/shabakaty/downloader/gc0;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/gc0;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lcom/shabakaty/downloader/gc0;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Lcom/shabakaty/downloader/gc0;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-wide v1, p0, Lcom/shabakaty/downloader/gc0;->f:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-wide v1, p0, Lcom/shabakaty/downloader/gc0;->g:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/gc0;->h:Lcom/shabakaty/downloader/id0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/id0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
