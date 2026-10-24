.class public final Lcom/shabakaty/downloader/vg0;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/vg0$b;
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/vg0;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/Layout$Alignment;

.field public final c:Landroid/text/Layout$Alignment;

.field public final d:Landroid/graphics/Bitmap;

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:F

.field public final i:I

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:F

.field public final p:I

.field public final q:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vg0$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vg0$b;-><init>()V

    const-string v1, ""

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/vg0$b;->a:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vg0$b;->a()Lcom/shabakaty/downloader/vg0;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/vg0;->r:Lcom/shabakaty/downloader/vg0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/shabakaty/downloader/vg0$a;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez v1, :cond_0

    .line 2
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-static {v3}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 4
    :goto_1
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    .line 5
    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/vg0;->a:Ljava/lang/CharSequence;

    :goto_2
    move-object v1, p2

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/vg0;->a:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/vg0;->a:Ljava/lang/CharSequence;

    goto :goto_2

    .line 8
    :goto_3
    iput-object v1, v0, Lcom/shabakaty/downloader/vg0;->b:Landroid/text/Layout$Alignment;

    move-object v1, p3

    .line 9
    iput-object v1, v0, Lcom/shabakaty/downloader/vg0;->c:Landroid/text/Layout$Alignment;

    .line 10
    iput-object v2, v0, Lcom/shabakaty/downloader/vg0;->d:Landroid/graphics/Bitmap;

    move v1, p5

    .line 11
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->e:F

    move v1, p6

    .line 12
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->f:I

    move v1, p7

    .line 13
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->g:I

    move v1, p8

    .line 14
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->h:F

    move v1, p9

    .line 15
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->i:I

    move/from16 v1, p12

    .line 16
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->j:F

    move/from16 v1, p13

    .line 17
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->k:F

    move/from16 v1, p14

    .line 18
    iput-boolean v1, v0, Lcom/shabakaty/downloader/vg0;->l:Z

    move/from16 v1, p15

    .line 19
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->m:I

    move v1, p10

    .line 20
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->n:I

    move v1, p11

    .line 21
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->o:F

    move/from16 v1, p16

    .line 22
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->p:I

    move/from16 v1, p17

    .line 23
    iput v1, v0, Lcom/shabakaty/downloader/vg0;->q:F

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/vg0$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vg0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/vg0$b;-><init>(Lcom/shabakaty/downloader/vg0;Lcom/shabakaty/downloader/vg0$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lcom/shabakaty/downloader/vg0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/vg0;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/vg0;->a:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/shabakaty/downloader/vg0;->a:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/vg0;->b:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lcom/shabakaty/downloader/vg0;->b:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/vg0;->c:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lcom/shabakaty/downloader/vg0;->c:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/vg0;->d:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/shabakaty/downloader/vg0;->d:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/shabakaty/downloader/vg0;->d:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget v2, p0, Lcom/shabakaty/downloader/vg0;->e:F

    iget v3, p1, Lcom/shabakaty/downloader/vg0;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/vg0;->f:I

    iget v3, p1, Lcom/shabakaty/downloader/vg0;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/vg0;->g:I

    iget v3, p1, Lcom/shabakaty/downloader/vg0;->g:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/vg0;->h:F

    iget v3, p1, Lcom/shabakaty/downloader/vg0;->h:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/vg0;->i:I

    iget v3, p1, Lcom/shabakaty/downloader/vg0;->i:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/vg0;->j:F

    iget v3, p1, Lcom/shabakaty/downloader/vg0;->j:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/vg0;->k:F

    iget v3, p1, Lcom/shabakaty/downloader/vg0;->k:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/shabakaty/downloader/vg0;->l:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/vg0;->l:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/vg0;->m:I

    iget v3, p1, Lcom/shabakaty/downloader/vg0;->m:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/vg0;->n:I

    iget v3, p1, Lcom/shabakaty/downloader/vg0;->n:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/vg0;->o:F

    iget v3, p1, Lcom/shabakaty/downloader/vg0;->o:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/vg0;->p:I

    iget v3, p1, Lcom/shabakaty/downloader/vg0;->p:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/vg0;->q:F

    iget p1, p1, Lcom/shabakaty/downloader/vg0;->q:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/vg0;->a:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/vg0;->b:Landroid/text/Layout$Alignment;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/vg0;->c:Landroid/text/Layout$Alignment;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/vg0;->d:Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->e:F

    .line 2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->f:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->g:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->h:F

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->i:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->j:F

    .line 7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->k:F

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/vg0;->l:Z

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->m:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->n:I

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->o:F

    .line 12
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->p:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/vg0;->q:F

    .line 14
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
