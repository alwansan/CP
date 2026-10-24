.class public final Lcom/shabakaty/downloader/ie;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# static fields
.field public static final f:Lcom/shabakaty/downloader/ie;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:Landroid/media/AudioAttributes;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/ie;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/ie;-><init>(IIIILcom/shabakaty/downloader/ie$a;)V

    .line 2
    sput-object v6, Lcom/shabakaty/downloader/ie;->f:Lcom/shabakaty/downloader/ie;

    return-void
.end method

.method public constructor <init>(IIIILcom/shabakaty/downloader/ie$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/ie;->a:I

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/ie;->b:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/ie;->c:I

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/ie;->d:I

    return-void
.end method


# virtual methods
.method public a()Landroid/media/AudioAttributes;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ie;->e:Landroid/media/AudioAttributes;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Lcom/shabakaty/downloader/ie;->a:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/shabakaty/downloader/ie;->b:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/shabakaty/downloader/ie;->c:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 6
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 7
    iget v1, p0, Lcom/shabakaty/downloader/ie;->d:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ie;->e:Landroid/media/AudioAttributes;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ie;->e:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/shabakaty/downloader/ie;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/ie;

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/ie;->a:I

    iget v3, p1, Lcom/shabakaty/downloader/ie;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/ie;->b:I

    iget v3, p1, Lcom/shabakaty/downloader/ie;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/ie;->c:I

    iget v3, p1, Lcom/shabakaty/downloader/ie;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/ie;->d:I

    iget p1, p1, Lcom/shabakaty/downloader/ie;->d:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ie;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/ie;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/ie;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/ie;->d:I

    add-int/2addr v1, v0

    return v1
.end method
