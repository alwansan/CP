.class public final Lcom/shabakaty/downloader/vg0$b;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/text/Layout$Alignment;

.field public d:Landroid/text/Layout$Alignment;

.field public e:F

.field public f:I

.field public g:I

.field public h:F

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:Z

.field public o:I

.field public p:I

.field public q:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/vg0$b;->a:Ljava/lang/CharSequence;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/vg0$b;->b:Landroid/graphics/Bitmap;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/vg0$b;->c:Landroid/text/Layout$Alignment;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/vg0$b;->d:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/vg0$b;->e:F

    const/high16 v1, -0x80000000

    .line 7
    iput v1, p0, Lcom/shabakaty/downloader/vg0$b;->f:I

    .line 8
    iput v1, p0, Lcom/shabakaty/downloader/vg0$b;->g:I

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/vg0$b;->h:F

    .line 10
    iput v1, p0, Lcom/shabakaty/downloader/vg0$b;->i:I

    .line 11
    iput v1, p0, Lcom/shabakaty/downloader/vg0$b;->j:I

    .line 12
    iput v0, p0, Lcom/shabakaty/downloader/vg0$b;->k:F

    .line 13
    iput v0, p0, Lcom/shabakaty/downloader/vg0$b;->l:F

    .line 14
    iput v0, p0, Lcom/shabakaty/downloader/vg0$b;->m:F

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/shabakaty/downloader/vg0$b;->n:Z

    const/high16 v0, -0x1000000

    .line 16
    iput v0, p0, Lcom/shabakaty/downloader/vg0$b;->o:I

    .line 17
    iput v1, p0, Lcom/shabakaty/downloader/vg0$b;->p:I

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vg0;Lcom/shabakaty/downloader/vg0$a;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object p2, p1, Lcom/shabakaty/downloader/vg0;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/shabakaty/downloader/vg0$b;->a:Ljava/lang/CharSequence;

    .line 20
    iget-object p2, p1, Lcom/shabakaty/downloader/vg0;->d:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/shabakaty/downloader/vg0$b;->b:Landroid/graphics/Bitmap;

    .line 21
    iget-object p2, p1, Lcom/shabakaty/downloader/vg0;->b:Landroid/text/Layout$Alignment;

    iput-object p2, p0, Lcom/shabakaty/downloader/vg0$b;->c:Landroid/text/Layout$Alignment;

    .line 22
    iget-object p2, p1, Lcom/shabakaty/downloader/vg0;->c:Landroid/text/Layout$Alignment;

    iput-object p2, p0, Lcom/shabakaty/downloader/vg0$b;->d:Landroid/text/Layout$Alignment;

    .line 23
    iget p2, p1, Lcom/shabakaty/downloader/vg0;->e:F

    iput p2, p0, Lcom/shabakaty/downloader/vg0$b;->e:F

    .line 24
    iget p2, p1, Lcom/shabakaty/downloader/vg0;->f:I

    iput p2, p0, Lcom/shabakaty/downloader/vg0$b;->f:I

    .line 25
    iget p2, p1, Lcom/shabakaty/downloader/vg0;->g:I

    iput p2, p0, Lcom/shabakaty/downloader/vg0$b;->g:I

    .line 26
    iget p2, p1, Lcom/shabakaty/downloader/vg0;->h:F

    iput p2, p0, Lcom/shabakaty/downloader/vg0$b;->h:F

    .line 27
    iget p2, p1, Lcom/shabakaty/downloader/vg0;->i:I

    iput p2, p0, Lcom/shabakaty/downloader/vg0$b;->i:I

    .line 28
    iget p2, p1, Lcom/shabakaty/downloader/vg0;->n:I

    iput p2, p0, Lcom/shabakaty/downloader/vg0$b;->j:I

    .line 29
    iget p2, p1, Lcom/shabakaty/downloader/vg0;->o:F

    iput p2, p0, Lcom/shabakaty/downloader/vg0$b;->k:F

    .line 30
    iget p2, p1, Lcom/shabakaty/downloader/vg0;->j:F

    iput p2, p0, Lcom/shabakaty/downloader/vg0$b;->l:F

    .line 31
    iget p2, p1, Lcom/shabakaty/downloader/vg0;->k:F

    iput p2, p0, Lcom/shabakaty/downloader/vg0$b;->m:F

    .line 32
    iget-boolean p2, p1, Lcom/shabakaty/downloader/vg0;->l:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/vg0$b;->n:Z

    .line 33
    iget p2, p1, Lcom/shabakaty/downloader/vg0;->m:I

    iput p2, p0, Lcom/shabakaty/downloader/vg0$b;->o:I

    .line 34
    iget p2, p1, Lcom/shabakaty/downloader/vg0;->p:I

    iput p2, p0, Lcom/shabakaty/downloader/vg0$b;->p:I

    .line 35
    iget p1, p1, Lcom/shabakaty/downloader/vg0;->q:F

    iput p1, p0, Lcom/shabakaty/downloader/vg0$b;->q:F

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/vg0;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    new-instance v20, Lcom/shabakaty/downloader/vg0;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/shabakaty/downloader/vg0$b;->a:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/shabakaty/downloader/vg0$b;->c:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/shabakaty/downloader/vg0$b;->d:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lcom/shabakaty/downloader/vg0$b;->b:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/shabakaty/downloader/vg0$b;->e:F

    iget v7, v0, Lcom/shabakaty/downloader/vg0$b;->f:I

    iget v8, v0, Lcom/shabakaty/downloader/vg0$b;->g:I

    iget v9, v0, Lcom/shabakaty/downloader/vg0$b;->h:F

    iget v10, v0, Lcom/shabakaty/downloader/vg0$b;->i:I

    iget v11, v0, Lcom/shabakaty/downloader/vg0$b;->j:I

    iget v12, v0, Lcom/shabakaty/downloader/vg0$b;->k:F

    iget v13, v0, Lcom/shabakaty/downloader/vg0$b;->l:F

    iget v14, v0, Lcom/shabakaty/downloader/vg0$b;->m:F

    iget-boolean v15, v0, Lcom/shabakaty/downloader/vg0$b;->n:Z

    move-object/from16 v21, v1

    iget v1, v0, Lcom/shabakaty/downloader/vg0$b;->o:I

    move/from16 v16, v1

    iget v1, v0, Lcom/shabakaty/downloader/vg0$b;->p:I

    move/from16 v17, v1

    iget v1, v0, Lcom/shabakaty/downloader/vg0$b;->q:F

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/shabakaty/downloader/vg0;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/shabakaty/downloader/vg0$a;)V

    return-object v20
.end method
