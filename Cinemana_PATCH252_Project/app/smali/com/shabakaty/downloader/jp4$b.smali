.class public Lcom/shabakaty/downloader/jp4$b;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/jp4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:I

.field public p:I

.field public q:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->a:I

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->b:I

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->c:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->d:I

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->i:I

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->j:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/shabakaty/downloader/jp4$b;->k:Z

    .line 9
    sget-object v1, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    .line 11
    iput-object v1, p0, Lcom/shabakaty/downloader/jp4$b;->l:Lcom/google/common/collect/p;

    .line 12
    iput-object v1, p0, Lcom/shabakaty/downloader/jp4$b;->m:Lcom/google/common/collect/p;

    const/4 v2, 0x0

    .line 13
    iput v2, p0, Lcom/shabakaty/downloader/jp4$b;->n:I

    .line 14
    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->o:I

    .line 15
    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->p:I

    .line 16
    iput-object v1, p0, Lcom/shabakaty/downloader/jp4$b;->q:Lcom/google/common/collect/p;

    .line 17
    iput-object v1, p0, Lcom/shabakaty/downloader/jp4$b;->r:Lcom/google/common/collect/p;

    .line 18
    iput v2, p0, Lcom/shabakaty/downloader/jp4$b;->s:I

    .line 19
    iput-boolean v2, p0, Lcom/shabakaty/downloader/jp4$b;->t:Z

    .line 20
    iput-boolean v2, p0, Lcom/shabakaty/downloader/jp4$b;->u:Z

    .line 21
    iput-boolean v2, p0, Lcom/shabakaty/downloader/jp4$b;->v:Z

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/jp4;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->r:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->a:I

    .line 24
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->s:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->b:I

    .line 25
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->t:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->c:I

    .line 26
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->u:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->d:I

    .line 27
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->v:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->e:I

    .line 28
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->w:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->f:I

    .line 29
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->x:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->g:I

    .line 30
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->y:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->h:I

    .line 31
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->z:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->i:I

    .line 32
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->A:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->j:I

    .line 33
    iget-boolean v0, p1, Lcom/shabakaty/downloader/jp4;->B:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/jp4$b;->k:Z

    .line 34
    iget-object v0, p1, Lcom/shabakaty/downloader/jp4;->C:Lcom/google/common/collect/p;

    iput-object v0, p0, Lcom/shabakaty/downloader/jp4$b;->l:Lcom/google/common/collect/p;

    .line 35
    iget-object v0, p1, Lcom/shabakaty/downloader/jp4;->D:Lcom/google/common/collect/p;

    iput-object v0, p0, Lcom/shabakaty/downloader/jp4$b;->m:Lcom/google/common/collect/p;

    .line 36
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->E:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->n:I

    .line 37
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->F:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->o:I

    .line 38
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->G:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->p:I

    .line 39
    iget-object v0, p1, Lcom/shabakaty/downloader/jp4;->H:Lcom/google/common/collect/p;

    iput-object v0, p0, Lcom/shabakaty/downloader/jp4$b;->q:Lcom/google/common/collect/p;

    .line 40
    iget-object v0, p1, Lcom/shabakaty/downloader/jp4;->I:Lcom/google/common/collect/p;

    iput-object v0, p0, Lcom/shabakaty/downloader/jp4$b;->r:Lcom/google/common/collect/p;

    .line 41
    iget v0, p1, Lcom/shabakaty/downloader/jp4;->J:I

    iput v0, p0, Lcom/shabakaty/downloader/jp4$b;->s:I

    .line 42
    iget-boolean v0, p1, Lcom/shabakaty/downloader/jp4;->K:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/jp4$b;->t:Z

    .line 43
    iget-boolean v0, p1, Lcom/shabakaty/downloader/jp4;->L:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/jp4$b;->u:Z

    .line 44
    iget-boolean p1, p1, Lcom/shabakaty/downloader/jp4;->M:Z

    iput-boolean p1, p0, Lcom/shabakaty/downloader/jp4$b;->v:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/shabakaty/downloader/jp4$b;
    .locals 2

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "captioning"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x440

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/jp4$b;->s:I

    .line 6
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    invoke-static {p1}, Lcom/google/common/collect/p;->E(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/jp4$b;->r:Lcom/google/common/collect/p;

    :cond_3
    :goto_1
    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/shabakaty/downloader/jp4$b;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    const/4 v0, 0x4

    const-string v1, "initialCapacity"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/collect/f;->b(ILjava/lang/String;)I

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v6, p1, v3

    .line 5
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v6}, Lcom/shabakaty/downloader/sy4;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v4, 0x1

    .line 8
    array-length v8, v0

    if-ge v8, v7, :cond_0

    .line 9
    array-length v5, v0

    .line 10
    invoke-static {v5, v7}, Lcom/google/common/collect/n$b;->a(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_0
    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v7, v4, 0x1

    .line 12
    aput-object v6, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v0, v4}, Lcom/google/common/collect/p;->s([Ljava/lang/Object;I)Lcom/google/common/collect/p;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/jp4$b;->r:Lcom/google/common/collect/p;

    return-object p0
.end method

.method public c(IIZ)Lcom/shabakaty/downloader/jp4$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/jp4$b;->i:I

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/jp4$b;->j:I

    .line 3
    iput-boolean p3, p0, Lcom/shabakaty/downloader/jp4$b;->k:Z

    return-object p0
.end method

.method public d(Landroid/content/Context;Z)Lcom/shabakaty/downloader/jp4$b;
    .locals 7

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    const-string v3, "display"

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    const-string v3, "window"

    .line 4
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 7
    :cond_1
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p1}, Lcom/shabakaty/downloader/sy4;->H(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_2

    const-string v0, "sys.display-size"

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "vendor.display-size"

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/sy4;->P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 12
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 13
    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x1

    .line 14
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v1, :cond_3

    if-lez v4, :cond_3

    .line 15
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v1, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    :cond_3
    const-string v1, "Invalid display size: "

    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v1, "Util"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_5
    sget-object v0, Lcom/shabakaty/downloader/sy4;->c:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/shabakaty/downloader/sy4;->d:Ljava/lang/String;

    const-string v1, "BRAVIA"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    new-instance v5, Landroid/graphics/Point;

    const/16 p1, 0xf00

    const/16 v0, 0x870

    invoke-direct {v5, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    .line 22
    :cond_6
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 23
    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_7

    .line 24
    invoke-virtual {v3}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iput v0, v5, Landroid/graphics/Point;->x:I

    .line 26
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    iput p1, v5, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_7
    if-lt p1, v2, :cond_8

    .line 27
    invoke-virtual {v3, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_3

    .line 28
    :cond_8
    invoke-virtual {v3, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 29
    :goto_3
    iget p1, v5, Landroid/graphics/Point;->x:I

    iget v0, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/shabakaty/downloader/jp4$b;->c(IIZ)Lcom/shabakaty/downloader/jp4$b;

    move-result-object p1

    return-object p1
.end method
